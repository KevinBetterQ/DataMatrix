/**
  * Created by xubowen on 2017/7/10.
  */

package org.apache.spark.examples.streaming
import org.apache.spark.{SparkConf, SparkContext}
import org.apache.spark.storage.StorageLevel
import org.apache.spark.streaming.{Seconds, StreamingContext}
object Streaming {
  def main(args: Array[String]) {
    // Create the context with a 1 second batch size
    /*val sparkConf = new SparkConf().setMaster("local").setAppName("NetworkWordCount")
    val ssc = new StreamingContext(sparkConf, Seconds(1))
    val lines = ssc.textFileStream("file:///Users/xubowen/Desktop/hadoop/")
    val line = ssc.fileStream()
    val words = lines.flatMap(_.split(" "))
    val wordCounts = words.map(x => (x, 1)).reduceByKey(_ + _)
    wordCounts.print()
    ssc.start()
    ssc.awaitTermination()*/

    val sparkConf = new SparkConf().setAppName("HdfsWordCount").setMaster("local[2]")
    val ssc = new StreamingContext(sparkConf, Seconds(4))
    val lines = ssc.textFileStream("hdfs://master:55555/flume/input")
    //分割为单词
    val words = lines.flatMap(_.split(" "))
    //统计单词出现次数
    val wordCounts = words.map(x => (x, 1)).reduceByKey(_ + _)
    //打印结果
    wordCounts.print()
    //启动Spark Streaming
    ssc.start()
    //一直运行，除非人为干预再停止
    ssc.awaitTermination()
  }
}