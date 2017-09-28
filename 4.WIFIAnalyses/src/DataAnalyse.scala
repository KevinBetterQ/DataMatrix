import java.sql.{Connection, DriverManager, PreparedStatement}

import org.apache.spark.{SparkConf, SparkContext}

/**
  * Created by xubowen on 2017/5/5.
  */
object DataAnalyse {

  var Config_DB:String="tanzhen"
  var Config_USER:String="root"
  var Config_PWD:String="xbw12138"
  var Config_MYSQL:String="jdbc:mysql://182.254.146.68:3306/"+Config_DB+"?user="+Config_USER+"&password="+Config_PWD

  var CMD_KELIU:String="keliu"
  var CMD_RUDIAN:String="rudian"
  var CMD_ZHUDIAN:String="zhudian"
  var CMD_OLD:String="oldc"
  var CMD_NEW:String="newc"
  var CMD_TIAOCHU:String="tiaochu"
  var CMD_SHENFANG:String="shenfang"
  var CMD_HUOYUE:String="huoyue"
  def main(args: Array[String]): Unit = {
    val sc: SparkContext = new SparkContext(new SparkConf())//.setMaster("local").setAppName("Spark Count"));
    SelectMmac()
    //val mmac="00:01:7a:aa:bb:cc"
    /*
    println(MysqlCount(mmac,this.CMD_KELIU))// 客流量
    println(MysqlCount(mmac,this.CMD_RUDIAN))// 入店
    println(MysqlCount(mmac,this.CMD_OLD))// 老顾客
    println(MysqlCount(mmac,this.CMD_NEW))// 新顾客
    println(MysqlCount(mmac,this.CMD_TIAOCHU))// 跳出人数
    println(MysqlCount(mmac,this.CMD_SHENFANG))// 深访人数

    println(MysqlTypeCount(mmac,this.CMD_ZHUDIAN))// 驻店时常
    println(MysqlTypeCount(mmac,this.CMD_HUOYUE))// 活跃
    */
  }
  //从探针表里选择mmac
  def SelectMmac() : Unit = {
    var mysql_conn: Connection = null
    var mysql_ps: PreparedStatement = null
    //这个mysql链接一定要改为master，一开始localhost，slave肯定不会连接到这个数据库
    val mysql_conn_str = Config_MYSQL
    val selectmmac="select mmac from probe"
    try {
      mysql_conn = DriverManager.getConnection(mysql_conn_str)
      mysql_ps = mysql_conn.prepareStatement(selectmmac)
      val resultSet=mysql_ps.executeQuery()
      while ( resultSet.next() ) {
        val mmac = resultSet.getString("mmac")
        //println(mmac+"mmac--")
        SelectAll(mmac)
      }
    }catch {
      case e: Exception => println(e)
    }finally {
      if (mysql_ps != null) {
        mysql_ps.close()
      }
      if (mysql_conn != null) {
        mysql_conn.close()
      }
    }
  }
  def MysqlTypeCount(mmac:String,cmd:String):String={
    var mysql_conn: Connection = null
    var mysql_ps: PreparedStatement = null
    //这个mysql链接一定要改为master，一开始localhost，slave肯定不会连接到这个数据库
    val mysql_conn_str = Config_MYSQL
    val selectsql=MysqlCmd(mmac,cmd)
    try {
      mysql_conn = DriverManager.getConnection(mysql_conn_str)
      mysql_ps = mysql_conn.prepareStatement(selectsql)
      val resultSet=mysql_ps.executeQuery()
      var res=""
      while(resultSet.next()){
        res+=resultSet.getString("type")+"&"+resultSet.getString("count")+"|"
      }
      return res
    }catch {
      case e: Exception => return e.toString
    }finally {
      if (mysql_ps != null) {
        mysql_ps.close()
      }
      if (mysql_conn != null) {
        mysql_conn.close()
      }
    }
  }

  def MysqlCount(mmac:String,cmd:String):String={
    var mysql_conn: Connection = null
    var mysql_ps: PreparedStatement = null
    //这个mysql链接一定要改为master，一开始localhost，slave肯定不会连接到这个数据库
    val mysql_conn_str = Config_MYSQL
    val selectsql=MysqlCmd(mmac,cmd)
    try {
      mysql_conn = DriverManager.getConnection(mysql_conn_str)
      mysql_ps = mysql_conn.prepareStatement(selectsql)
      val resultSet=mysql_ps.executeQuery()
      var res=""
      while(resultSet.next()){
        res=resultSet.getString("count")
      }
      return res
    }catch {
      case e: Exception => return e.toString
    }finally {
      if (mysql_ps != null) {
        mysql_ps.close()
      }
      if (mysql_conn != null) {
        mysql_conn.close()
      }
    }
  }
  def SelectAll(mmac:String):Unit={
    val keliu=MysqlCount(mmac,this.CMD_KELIU)// 客流量
    val rudian=MysqlCount(mmac,this.CMD_RUDIAN)// 入店
    val oldc=MysqlCount(mmac,this.CMD_OLD)// 老顾客
    val newc=MysqlCount(mmac,this.CMD_NEW)// 新顾客
    val tiaochu=MysqlCount(mmac,this.CMD_TIAOCHU)// 跳出人数
    val shenfang=MysqlCount(mmac,this.CMD_SHENFANG)// 深访人数

    val zhudian=MysqlTypeCount(mmac,this.CMD_ZHUDIAN)// 驻店时常
    val huoyue=MysqlTypeCount(mmac,this.CMD_HUOYUE)// 活跃

    //println(keliu+"-"+rudian+"-"+old+"-"+news+"-"+tiaochu+"-"+shenfang)
    //println(keliu)
    var mysql_conn: Connection = null
    var mysql_ps: PreparedStatement = null
    //这个mysql链接一定要改为master，一开始localhost，slave肯定不会连接到这个数据库
    val mysql_conn_str = Config_MYSQL
    val insertsql="INSERT INTO result (mmac,keliu,rudian,zhudian,newc,oldc,tiaochu,shenfang,huoyue) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)"
    try {
      mysql_conn = DriverManager.getConnection(mysql_conn_str)
      mysql_ps = mysql_conn.prepareStatement(insertsql)
      mysql_ps.setObject(1, mmac)
      mysql_ps.setObject(2, keliu)
      mysql_ps.setObject(3, rudian)
      mysql_ps.setObject(4, zhudian)
      mysql_ps.setObject(5, newc)
      mysql_ps.setObject(6, oldc)
      mysql_ps.setObject(7, tiaochu)
      mysql_ps.setObject(8, shenfang)
      mysql_ps.setObject(9, huoyue)
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

  //返回sql语句
  def MysqlCmd(mmac: String,cmd:String):String={
    var sql=""
    if(cmd.equals(this.CMD_KELIU)){
      sql="select count(distinct mac) as count from data where to_days(now())-to_days(time) = 1 and mmac=\'"+mmac+"\'"
    }else if(cmd.equals(this.CMD_RUDIAN)){
      sql="select count(distinct mac) as count from data where to_days(now())-to_days(time) = 1 and ranges<=300 and mmac=\'"+mmac+"\'"
    }else if(cmd.equals(this.CMD_ZHUDIAN)){
      sql="select case when cha>=0 and cha<15 then 'a' when cha>=15 and cha<30 then 'b' " +
        "when cha>=30 and cha<45 then 'c' when cha>=45 and " +
        "cha<60 then 'd' when cha>=60 then 'e' end as type,count(*) as count " +
        "from (SELECT max(minute(time))-min(minute(time)) as cha " +
        "from data where to_days(now())- to_days(time) = 1 and ranges<=300 and mmac=\'"+mmac+"\' GROUP by mac) as total " +
        "group by (case when cha>=0 and cha<15 then 'a' when cha>=15 and cha<30 then 'b' " +
        "when cha>=30 and cha<45 then 'c' when cha>=45 and cha<60 then 'd' when cha>=60 then 'e' end)"
    }else if(cmd.equals(this.CMD_OLD)){
      sql="select count(* )as count from (select mac,count(*) as count from"+
        "(select mac from data where to_days(now())-to_days(time) = 1 and ranges<=300 and mmac=\'"+mmac+"\' group by mac "+
        " union all "+
        "select mac from data where to_days(now())-to_days(time) > 1 and ranges<=300 and mmac=\'"+mmac+"\' group by mac)as total group by mac having count>1)as totals"
    }else if(cmd.equals(this.CMD_NEW)){
      sql="select count(* )as count from (select mac,count(*) as count from"+
        "(select mac from data where to_days(now())-to_days(time) = 1 and ranges<=300 and mmac=\'"+mmac+"\' group by mac"+
        " union all "+
        "select mac from data where to_days(now())-to_days(time) > 1 and ranges<=300 and mmac=\'"+mmac+"\' group by mac)as total group by mac having count=1)as totals"
    }else if(cmd.equals(this.CMD_TIAOCHU)){
      sql="select count(*) as count from (SELECT max(minute(time))- min(minute(time)) as cha from data where to_days(now())-to_days(time) = 1 and ranges<=300 and mmac=\'"+mmac+"\' GROUP by mac)as total where cha>=0 and cha<5"
    }else if(cmd.equals(this.CMD_SHENFANG)){
      sql="select count(*) as count from (SELECT max(minute(time))- min(minute(time)) as cha from data where to_days(now())-to_days(time) = 1 and ranges<=300 and mmac=\'"+mmac+"\' GROUP by mac)as total where cha>=30"
    }else if(cmd.equals(this.CMD_HUOYUE)){
      sql="select case when cha>=1 and cha<2 then 'a' when cha>=2 and cha<3 then 'b' when cha>=3 and cha<4 then 'c' when cha>=4 and cha<7 then 'd' when cha>=7 then 'e' end type,count(* ) as count from (select mac,count(*) as cha from"+
      "(select mac from data where to_days(now())-to_days(time) = 1 and ranges<=300 and mmac=\'"+mmac+"\' group by mac"+
        " union all "+
        "select mac from data where to_days(now())-to_days(time) = 2 and ranges<=300 and mmac=\'"+mmac+"\' group by mac"+
        " union all "+
        "select mac from data where to_days(now())-to_days(time) = 3 and ranges<=300 and mmac=\'"+mmac+"\' group by mac"+
        " union all "+
        "select mac from data where to_days(now())-to_days(time) = 4 and ranges<=300 and mmac=\'"+mmac+"\' group by mac"+
        " union all "+
        "select mac from data where to_days(now())-to_days(time) = 5 and ranges<=300 and mmac=\'"+mmac+"\' group by mac"+
        " union all "+
        "select mac from data where to_days(now())-to_days(time) = 6 and ranges<=300 and mmac=\'"+mmac+"\' group by mac"+
        " union all "+
        "select mac from data where to_days(now())-to_days(time) = 7 and ranges<=300 and mmac=\'"+mmac+"\' group by mac)as total group by mac)as totals " +
        "group by (case when cha>=1 and cha<2 then 'a' when cha>=2 and cha<3 then 'b' when cha>=3 and cha<4 then 'c' when cha>=4 and cha<7 then 'd' when cha>=7 then 'e' end)"
    }
    return sql
  }
}
