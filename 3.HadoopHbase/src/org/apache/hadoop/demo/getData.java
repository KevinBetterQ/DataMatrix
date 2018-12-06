package org.apache.hadoop.demo;

import java.math.BigDecimal;
import java.sql.ResultSet;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;

import org.apache.hadoop.conf.Configuration;
import org.apache.hadoop.hbase.HBaseConfiguration;
import org.apache.hadoop.hbase.HTableDescriptor;
import org.apache.hadoop.hbase.client.Connection;
import org.apache.hadoop.hbase.client.ConnectionFactory;
import org.apache.hadoop.hbase.client.HBaseAdmin;
import org.apache.hadoop.hbase.client.HTable;
import org.apache.hadoop.hbase.client.Result;
import org.apache.hadoop.hbase.client.ResultScanner;
import org.apache.hadoop.hbase.client.Scan;

import com.mysql.fabric.xmlrpc.base.Array;


public class getData {
	
    static Configuration conf;
    static HBaseAdmin admin;
    static Connection conn;  
    static HTableDescriptor tableDescriptor;
    static HTable table;
	
    private static void init() throws Exception {
        conf = HBaseConfiguration.create();
        conf.set("hbase.zookeeper.property.clientPort", "2181");
		//conf.set("hbase.zookeeper.quorum", "master,slave1,slave2");
        conf.set("hbase.zookeeper.quorum", "localhost");

        conf.set("hbase.master", "localhost:60000");                 
        conn = ConnectionFactory.createConnection(conf);
        admin = (HBaseAdmin) conn.getAdmin();
    }
    
    public static void main(String[] args) throws Exception {
		init();
		
		ArrayList<String> macList = new ArrayList<String>();//出现的mac地址，去重
		ArrayList<Integer> rangeList = new ArrayList<Integer>();//mac地址的最小距离
		ArrayList<Integer> InShopTime = new ArrayList<Integer>();//mac地址出现的次数，也就是待的时长
		//三个链表，mac对应range
		HTable table = new HTable(conf, "wifi0706");
		
		ArrayList<String> oldMac = new ArrayList<String>();
		//ArrayList<String> oldMacLasttime = new ArrayList<String>();
		//ArrayList<Integer> oldMacContime = new ArrayList<Integer>();
		
		ArrayList<String> newMac = new ArrayList<String>();
		//ArrayList<String> firstTime = new ArrayList<String>();
		ArrayList<UserInfo> users = new ArrayList<UserInfo>();
		String timeStr = null;
		String Mmac = null;
		String pid = null;
		//先将老用户信息取出存到内存中
		DataBase dbGetOld = new DataBase();
		String strGetOld = "select * from user";
		ResultSet rsGetOld = dbGetOld.select(strGetOld);
		while(rsGetOld.next()){
			oldMac.add(rsGetOld.getString(1));
			//oldMacLasttime.add(rsGetOld.getString(6));
			//oldMacContime.add(rsGetOld.getInt(7));
			UserInfo info = new UserInfo(rsGetOld.getString(4), rsGetOld.getString(5),
					rsGetOld.getInt(6), rsGetOld.getDouble(7));
			users.add(info);
		}
		dbGetOld.Close();
		
		DataBase getRowNum = new DataBase();
		String strgetrow = "select count(*) from user;";
		ResultSet rsrow = getRowNum.select(strgetrow);
		rsrow.next();
		System.out.println(rsrow.getInt(1));

		
      int newNum = 0;//新客户的数量
      
      ResultScanner resultScanner = table.getScanner(new Scan());
      int num = 0;
      for(Result result : resultScanner){
    	  num++;
    	  System.out.println(num);
		  //CellScanner cellScanner = result.cellScanner();
    	  byte[] macbytes = result.getValue("info".getBytes(), "mac".getBytes());
    	  byte[] rangebytes = result.getValue("info".getBytes(), "range".getBytes());
    	  byte[] timeByte = result.getValue("info".getBytes(), "time".getBytes());
    	  byte[] Mmacbyte = result.getValue("wifidev".getBytes(), "mmac".getBytes());
    	  byte[] pidbyte = result.getValue("wifidev".getBytes(), "id".getBytes());
    	  String stringRange = new String(rangebytes);
    	  timeStr = new String(timeByte);
    	  timeStr = timeStr.substring(0, 10);
    	  Mmac = new String(Mmacbyte);
    	  pid = new String(pidbyte);
    	  
    	  //判断mac地址在这一天中的出现的次数
    	  int range = Integer.parseInt(stringRange);
    	  String mac = new String(macbytes);
    	  if(false == macList.contains(mac)){
    		  macList.add(mac);
    		  rangeList.add(Integer.valueOf(stringRange));
    		  InShopTime.add(1);
    	  }
    	  else{
    		  int index = macList.indexOf(mac);
    		  Integer oldrange = rangeList.get(index);
    		  Integer newrange = Integer.valueOf(stringRange);
    		  if(oldrange > newrange)
    			  rangeList.set(index, newrange);
    		  InShopTime.set(index, InShopTime.get(index)+1);
    	  }
    	  
    	  //判断mac地址是否是新客户
		  if(false == oldMac.contains(mac)){
			  if(false == newMac.contains(mac))
			  {
				  newMac.add(mac);
				  //firstTime.add(timeStr);
				  users.add(new UserInfo(timeStr, timeStr, 1, 0));
			  }
		  }
		  else{
			  if(false == newMac.contains(mac)){
				  int index = oldMac.indexOf(mac);
				  //oldMacLasttime.set(index, timeStr);
				  //oldMacContime.set(index, oldMacContime.get(index)+1);
				  users.get(index).setInShopTime(users.get(index).inShopTime + 1);
				  users.get(index).setLastTime(timeStr);
				  
			  }
		  }

		//    	  if(false == macList.contains(info)){
		//    		  macList.add(info);
		//    	  }
		//    	  else{//如果已经存在于链表中，需要对range判断是否需要更新
		//    		  for(int i=0;i<macList.size();i++){//遍历链表
		//    			  WifiInfo tmpInfo = macList.get(i);
		//    			  if(info.range > tmpInfo.range){//如果新的距离大于存在于链表中的距离，就更新
		//    				  macList.set(i, tmpInfo);
		//    			  }
		//    		  }
		//    	  }
    	
		//      	for(org.apache.hadoop.hbase.KeyValue keyValue : result.raw()){
		////      		System.out.println(keyValue.getKey());
		//      		String name = new String(keyValue.getQualifier());
		//      		String mac = new String(keyValue.getValue());
		//      		if(name.equals("mac") && false == arrayList.contains(mac)){
		//      			arrayList.add(mac);
		//      		}
		////      		System.out.println(new String(keyValue.getRow())+"  "+new String(keyValue.getFamily())+"  "+new String(keyValue.getQualifier())+"  "+new String(keyValue.getValue()));
		//      		
		//      	}
      }//获得的链表就是这一天的mac地址和此地址离探针最近的距离
      
      int InShop = 0;//入店量，距离小于300视为入店
      int DeepIn = 0;//深访量,时长大于某个值视为深访
      int TimeSum = 0;
      for (int i = 0; i < macList.size(); i++) {
			System.out.println(macList.get(i)+"  "+rangeList.get(i));
			if(rangeList.get(i) < 300)
			{
				InShop++;
				TimeSum+=InShopTime.get(i);
			}
			if(InShopTime.get(i) > 50)
				DeepIn++;
		}
      BigDecimal bg = new BigDecimal((double)InShop*100 / macList.size());
      double perInShop = bg.setScale(2, BigDecimal.ROUND_HALF_UP).doubleValue();//入店率
      
      bg = new BigDecimal((double)DeepIn*100 / macList.size());
      double perDeepIn = bg.setScale(2, BigDecimal.ROUND_HALF_UP).doubleValue();//深访率
      
      bg = new BigDecimal((double)(InShop - DeepIn)*100 / InShop);
      double perOut = bg.setScale(2, BigDecimal.ROUND_HALF_UP).doubleValue() ;//跳出率
      
      bg = new BigDecimal((double)newMac.size()*100 / macList.size());
      double perNewToOld = bg.setScale(2, BigDecimal.ROUND_HALF_UP).doubleValue();//转化率
      
      bg = new BigDecimal((double)TimeSum / InShop);
      double aveTime = bg.setScale(2, BigDecimal.ROUND_HALF_UP).doubleValue(); //平均访问时间

      
      
      System.out.println("sum "+macList.size());
      System.out.println("inshop "+InShop);
      System.out.println("deeepIn "+DeepIn);
      
      System.out.println(perDeepIn+ "  "+ perInShop);
      System.out.println("new "+newMac.size());
      System.out.println("old "+(macList.size() - newMac.size()));
      
      DataBase dbSave = new DataBase();
      String sqlSave = "insert into analysis (pid, data, keliu, rudian, rdlv, sflv, tclv, zhlv, zhdtimeave, newnum, oldnum) values"
      		+ "('"+pid+"', " // 编号
			+ "'"+timeStr+"', "//时间
			+macList.size()+", "//客流量
			+InShop+", "//入店量
			+perInShop+", "//入店率
			+perDeepIn+", "//深访率
			+perOut+", "//跳出率
			+perNewToOld+", "//转化率
			+aveTime*3+", "//平均时间
			+newMac.size()+", "//newnum
			+(macList.size() - newMac.size())+")";//oldnum
      System.out.println(sqlSave);
      dbSave.insert(sqlSave);
      dbSave.Close();
      
      for(int i=0;i<newMac.size();i++){
    	  int timeInShop = InShopTime.get(macList.indexOf(newMac.get(i)));
    	  DataBase saveNew = new DataBase();
    	  String sqlsaveNew = "insert into user (umac, data, mmac, firstTime, lastTime, inShopTime, laiftime, huoyuedu, zhudtime)"
    	  		+ " values("
    	  		+ "'"+newMac.get(i)+"',"//mac地址
    	  		+ " '"+timeStr+"',"//日期
    	  		+ " '"+Mmac+"',"//探针编号
    	  		+ " '"+timeStr+"',"//第一次来访时间
    	  		+ " '"+timeStr+"',"//最后一次来访时间
    	  		+ " 1,"//来访次数
    	  		+ " 0,"//来访间隔
    	  		+ " '0', "//活跃度
    	  		+timeInShop+")";//驻店时长
    	  System.out.println(sqlsaveNew);
    	  saveNew.insert(sqlsaveNew);
    	  saveNew.Close();
      }
      
      for(int i=0;i<oldMac.size();i++){
    	  DataBase updateOld = new DataBase();
    	  int daysFirToLast = daysBetween(users.get(i).firstTime, users.get(i).lastTime);
          bg = new BigDecimal((double) daysFirToLast / users.get(i).inShopTime);
          double interval = bg.setScale(2, BigDecimal.ROUND_HALF_UP).doubleValue(); 
          //int lastInShopTime = InShopTime.get(macList.indexOf(newMac.get(i)));
    	  String sqlUpdate = "update user set"
    	  		+ " lastTime = '"+users.get(i).lastTime+"', "//修改最后一次访问时间
    	  		+"inShopTime = "+users.get(i).inShopTime+", "
    	  		+"laiftime = "+interval +", "
    	  		+"huoyuedu = "+interval
    	  		+ " where umac='"+oldMac.get(i)+"'";
    	  System.out.println(sqlUpdate);
    	  updateOld.update(sqlUpdate);
    	  updateOld.Close();
      }
      
	}

	
    public static int daysBetween(String smdate,String bdate){  
        SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");  
        Calendar cal = Calendar.getInstance();    
        long time1 = 0;
        long time2 = 0;
        
        try{
             cal.setTime(sdf.parse(smdate));   
             time1 = cal.getTimeInMillis();    
             cal.setTime(sdf.parse(bdate)); 
             time2 = cal.getTimeInMillis();  
        }catch(Exception e){
            e.printStackTrace();
        }
        long between_days=(time2-time1)/(1000*3600*24);  
            
       return Integer.parseInt(String.valueOf(between_days));     
    }

}
