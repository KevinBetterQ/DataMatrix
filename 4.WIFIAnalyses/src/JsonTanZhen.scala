import java.sql.{Connection, DriverManager, PreparedStatement}

import SchemaUtil._
import org.apache.spark.{SparkConf, SparkContext}

/**
  * Created by xubowen on 2017/4/16.
  */
object JsonTanZhen {
  var Config_DB:String="tanzhen"
  var Config_USER:String="root"
  var Config_PWD:String="xbw12138"
  var Config_MYSQL:String="jdbc:mysql://182.254.146.68:3306/"+Config_DB+"?user="+Config_USER+"&password="+Config_PWD

  def main(args: Array[String]): Unit = {
    val sc: SparkContext = new SparkContext(new SparkConf())//.setMaster("local").setAppName("Spark Count"));
    val jsonSchema = args(0)
    //val jsonSchema = "file:///Users/xubowen/Desktop/hadoop/sparkcontext/data.*"
    val jsonString=sc.wholeTextFiles(jsonSchema)//读取文件夹下所有文件
    //val jsonString = sc.wholeTextFiles(jsonSchema).first()._2//读取单个文件
    jsonString.foreach(s=>getJson(s._2))
    //val jsonString=sc.textFile(jsonSchema)//读取文件夹下所有文件
    //jsonString.foreach(s=>getJson(s))
    //var haha:String =null;
    //jsonString.collect().foreach(s=>s.concat(s))
  }
  def getJson(jsonString:String):Unit={
    val data: List[Map[String,Any]] = getData(jsonString)
    val id = getId(jsonString)
    val mmac = getMmac(jsonString)
    val time = transTime(getTime(jsonString))//转换时间格式
    val lat = getLat(jsonString)
    val lon = getLon(jsonString)
    val postion=lat+","+lon
    data.foreach(s => insertMysql(s,id,mmac,time,postion))
  }
  //2017-04-27 22:17:12
  //Fri Mar 10 11:53:24 2017
  def transTime(time:String):String={
    val part=time.split(" ")
    return part(4)+"-"+transMon(part(1))+"-"+part(2)+" "+part(3)
    //part(1) //月份
    //part(2) //日期
    //part(3) //时间
    //part(4) //年份
  }
  def transMon(mon:String):String={
    if(mon.equals("Jan")){
      return "01"
    }else if(mon.equals("Feb")){
      return "02"
    }else if(mon.equals("Mar")){
      return "03"
    }else if(mon.equals("Apr")){
      return "04"
    }else if(mon.equals("May")){
      return "05"
    }else if(mon.equals("Jun")){
      return "06"
    }else if(mon.equals("Jul")){
      return "07"
    }else if(mon.equals("Aug")){
      return "08"
    }else if(mon.equals("Sep")){
      return "09"
    }else if(mon.equals("Oct")){
      return "10"
    }else if(mon.equals("Nov")){
      return "11"
    }else if(mon.equals("Dec")){
      return "12"
    }
    return " "
  }
  def insertMysql(data: Map[String, Any],id:String,mmac:String,time:String,position:String) : Unit = {
    var mysql_conn: Connection = null
    var mysql_ps: PreparedStatement = null
    //这个mysql链接一定要改为master，一开始localhost，slave肯定不会连接到这个数据库
    val mysql_conn_str = Config_MYSQL
    val mysql_sql = "INSERT INTO data (mac,rssi,ch,ranges,id,mmac,time,position) VALUES (?, ?, ?, ?, ?, ?, ?, ?)"
    try {
      mysql_conn = DriverManager.getConnection(mysql_conn_str)
      mysql_ps = mysql_conn.prepareStatement(mysql_sql)
      mysql_ps.setObject(1, data("mac"))
      mysql_ps.setObject(2, data("rssi"))
      mysql_ps.setObject(3, data("ch"))
      mysql_ps.setObject(4, data("range"))
      mysql_ps.setObject(5, id)
      mysql_ps.setObject(6, mmac)
      mysql_ps.setObject(7, time)
      mysql_ps.setObject(8, position)
      mysql_ps.executeUpdate()
    }catch {
      case e: Exception => println(e)
    } finally {
      if (mysql_ps != null) {
        mysql_ps.close()
      }
      if (mysql_conn != null) {
        mysql_conn.close()
      }
    }
  }
}
