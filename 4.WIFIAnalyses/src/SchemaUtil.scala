import org.apache.spark.sql.DataFrame
import org.apache.spark.sql.types._

import scala.util.parsing.json.JSON

/**
  * Created by xubowen on 2017/4/16.
  */
/*
 *{
 * "columns": [
 *   {"columnName": "id", "columnType": "Integer", "columnWidth": "5"},
 *   {"columnName": "firstName", "columnType": "String", "columnWidth": "10"},
 *   {"columnName": "lastName", "columnType": "String", "columnWidth": "10"},
 *   {"columnName": "gender", "columnType": "String", "columnWidth": "1"},
 *   {"columnName": "dateOfBirth", "columnType": "String", "columnWidth": "10"}
 * ],
 * "tableName": "people",
 * "comment": "This is a test fixed-width field table",
 * "partition": "partition_spec_goes_here"
 *}
 */
object SchemaUtil {

  def resolveColumnType(columnType: String) = columnType match {
    case "Byte" => ByteType
    case "Short" => ShortType
    case "Integer" => IntegerType
    case "Long" => LongType
    case "Float" => FloatType
    case "Double" => DoubleType
    case "String" => StringType
    case "Binary" => BinaryType
    case "Boolean" => BooleanType
    case "Timestamp" => TimestampType
    case _ => StringType
  }
  def parseColumn(columnName: String, columnType: String): StructField = {
    StructField(columnName, resolveColumnType(columnType))
  }
  def parseJsonSchema(schemaDefinition: DataFrame): StructType = {
      StructType(schemaDefinition.collect.map(column => parseColumn(column(0).toString(), column(1).toString()))
    )
  }
  def createSparkDFSchema(columns: List[Map[String,Any]]): StructType = {
    StructType(columns.map(column => parseColumn(column("columnName").asInstanceOf[String],
      column("columnType").asInstanceOf[String])))
  }
  def getMapValueFromJson(jsonString: String): List[Map[String,String]] = {
    JSON.parseFull(jsonString).get.asInstanceOf[Map[String,List[Map[String,String]]]]("columns")
  }
  def getIntegerValueFromJson(jsonString: String, key: String): Integer = {
    JSON.parseFull(jsonString).get.asInstanceOf[Map[String, Integer]](key)
  }
  def getColumnWidths(columns: List[Map[String,Any]]): Array[Int] = {
    columns.map(column => column("columnWidth").toString  .toInt).toArray
  }


  def getStringValueFromJson(jsonString: String, key: String): String = {
    JSON.parseFull(jsonString).get.asInstanceOf[Map[String,String]](key)
  }
  def getData(jsonString: String): List[Map[String,String]] = {
    JSON.parseFull(jsonString).get.asInstanceOf[Map[String,List[Map[String,String]]]]("data")
  }
  def getId(jsonString: String): String = {
    getStringValueFromJson(jsonString, "id")
  }
  def getMmac(jsonString: String): String = {
    getStringValueFromJson(jsonString, "mmac")
  }
  def getTime(jsonString: String): String = {
    getStringValueFromJson(jsonString, "time")
  }
  def getLat(jsonString: String): String = {
    getStringValueFromJson(jsonString, "lat")
  }
  def getLon(jsonString: String): String = {
    getStringValueFromJson(jsonString, "lon")
  }



}
