from pyspark import SparkContext
from pyspark.sql import SQLContext
from pyspark.sql import SparkSession



def createSparkSession():
    sparkSession = SparkSession.builder.appName("basics").getOrCreate()
    spark = sparkSession

    return spark

def readData(spark):
    df = spark.read.csv('data/auto-mpg.csv', header=True, inferSchema=True)
    print(df.show())

def main():
    spark = createSparkSession()
    readData(spark)