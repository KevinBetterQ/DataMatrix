package org.apache.hadoop.demo;

//MapReduce处理Json

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Locale;
import java.util.StringTokenizer;

import org.apache.hadoop.conf.Configuration;
import org.apache.hadoop.fs.Path;
import org.apache.hadoop.hbase.HBaseConfiguration;
import org.apache.hadoop.hbase.HColumnDescriptor;
import org.apache.hadoop.hbase.HTableDescriptor;
import org.apache.hadoop.hbase.client.Connection;
import org.apache.hadoop.hbase.client.ConnectionFactory;
import org.apache.hadoop.hbase.client.HBaseAdmin;
import org.apache.hadoop.hbase.client.HTable;
import org.apache.hadoop.hbase.client.Put;
import org.apache.hadoop.io.LongWritable;
import org.apache.hadoop.io.Text;
import org.apache.hadoop.mapreduce.Job;
import org.apache.hadoop.mapreduce.lib.input.FileInputFormat;
import org.apache.hadoop.mapreduce.lib.output.FileOutputFormat;
import org.apache.hadoop.util.GenericOptionsParser;
import org.apache.hadoop.mapreduce.Mapper;
import org.apache.hadoop.mapreduce.Reducer;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class Hbase {

	static Configuration conf;
	static HBaseAdmin admin;
	static Connection conn;
	static HTableDescriptor tableDescriptor;
	static HTable table;
	public static int rownum = 0;

	public static class Map extends Mapper<LongWritable, Text, Text, Text> {
		public void map(LongWritable key, Text value, Context context) throws IOException, InterruptedException {
			String line = value.toString();
			JSONObject jsonObject;
			try {
				jsonObject = new JSONObject(line);
				String time = jsonObject.getString("time");
				SimpleDateFormat format = new SimpleDateFormat("EEE MMM dd HH:mm:ss yyyy", Locale.ENGLISH);
				SimpleDateFormat format2 = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
				time = format2.format(format.parse(time));
				insertTable(line);
				System.out.println(line);
				context.write(new Text(time), new Text(line));

			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

			// String time = tline[0].substring(9, tline[0].length()-2);

		}
	}

	public static class Reduce extends Reducer<Text, Text, Text, Text> {
		public void reduce(Text key, Iterator<Text> values, Context context) throws IOException, InterruptedException {
			Text str = new Text();
			while (values.hasNext()) {
				str = values.next();
			}
			context.write(key, str);
			//insertTable("row"+(rownum++), str.toString());
		}
	}

	private static void init() throws Exception {
		conf = HBaseConfiguration.create();
		conf.set("hbase.zookeeper.property.clientPort", "2181");
		//conf.set("hbase.zookeeper.quorum", "master,slave1,slave2");
		conf.set("hbase.zookeeper.quorum", "localhost");

		conf.set("hbase.master", "localhost:60000");
		conn = ConnectionFactory.createConnection(conf);
		admin = (HBaseAdmin) conn.getAdmin();
	}

	@SuppressWarnings("deprecation")
	private static void createTable() throws Exception {
		// admin.disableTable("WifiTest");
		// admin.deleteTable("WifiTest");
		if (!admin.tableExists("wifi0706")) {
			tableDescriptor = new HTableDescriptor("wifi0706".getBytes());
			tableDescriptor.addFamily(new HColumnDescriptor("wifidev"));
			tableDescriptor.addFamily(new HColumnDescriptor("info"));
			tableDescriptor.addFamily(new HColumnDescriptor("shop"));
			admin.createTable(tableDescriptor);
		} else {
			System.out.println("Table already exists!");
		}
		table = new HTable(conf, "wifi0706");
	}

	public static void main(String[] args) throws Exception {
		init();
		createTable();
		
		Configuration ConfHDFS = new Configuration();
		String[] otherArgs = new GenericOptionsParser(ConfHDFS, args).getRemainingArgs();
		// System.out.println(Arrays.toString(otherArgs));
		if (otherArgs.length != 2) {
			System.err.println("Usage:wordcount <in> <out>");
			System.exit(2);
		}

		Job job = new Job(ConfHDFS, "hadoop");
		job.setJarByClass(Hbase.class);
		FileInputFormat.addInputPath(job, new Path(otherArgs[0]));
		FileOutputFormat.setOutputPath(job, new Path(otherArgs[1]));
		job.setMapperClass(Map.class);
		job.setCombinerClass(Reduce.class);
		job.setReducerClass(Reduce.class);
		job.setOutputKeyClass(Text.class);
		job.setOutputValueClass(Text.class);

		// System.out.println(otherArgs[1]);

		System.exit(job.waitForCompletion(true) ? 0 : 1);
	}

	@SuppressWarnings("deprecation")
	private static void insertTable(String json) throws IOException {

		try {
			JSONObject jsonObject = new JSONObject(json);


			JSONArray jsonArray = jsonObject.getJSONArray("data");
			for (int i = 0; i < jsonArray.length(); i++) {
				rownum++;
				String rowName = "row"+rownum;
				String time = jsonObject.getString("time");
				// System.out.println(datetime);
				SimpleDateFormat format = new SimpleDateFormat("EEE MMM dd HH:mm:ss yyyy", Locale.ENGLISH);
				SimpleDateFormat format2 = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
				time = format2.format(format.parse(time));
				Put putRowinfo = new Put(rowName.getBytes());
				putRowinfo.add("info".getBytes(), "time".getBytes(), time.getBytes());
				table.put(putRowinfo);

				String id = jsonObject.getString("id");
				Put putRowID = new Put(rowName.getBytes());
				putRowID.add("wifidev".getBytes(), "id".getBytes(), id.getBytes());
				table.put(putRowID);

				String mmac = jsonObject.getString("mmac");
				Put putRowMmac = new Put(rowName.getBytes());
				putRowMmac.add("wifidev".getBytes(), "mmac".getBytes(), mmac.getBytes());
				table.put(putRowMmac);
				
				JSONObject ObjectInArray = (JSONObject) jsonArray.get(i);
				String mac = ObjectInArray.getString("mac");
				Put putRowMac = new Put(rowName.getBytes());
				putRowMac.add("info".getBytes(), "mac".getBytes(), mac.getBytes());
				table.put(putRowMac);

				String rssi = ObjectInArray.getString("rssi");
				Put putRowRssi = new Put(rowName.getBytes());
				putRowRssi.add("info".getBytes(), "rssi".getBytes(), rssi.getBytes());
				table.put(putRowRssi);

				String range = ObjectInArray.getString("range");
				Put putRowRange = new Put(rowName.getBytes());
				putRowRange.add("info".getBytes(), "range".getBytes(), range.getBytes());
				table.put(putRowRange);

				System.out.println(rowName + "  " + mac + "  " + rssi + "  " + range);

			}

			//System.out.println(time);
		} catch (JSONException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}
}
