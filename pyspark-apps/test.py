from pyspark.sql import SparkSession
from pyspark.sql import SQLContext

if __name__ == '__main__':
    scSpark = SparkSession \
        .builder \
        .appName("readdatacsv") \
        .getOrCreate()
    data_file = '/code/pyspark-data/data.csv'
    sdfData = scSpark.read.csv(data_file, header=True, sep=",").cache()
    print('Total Records = {}'.format(sdfData.count()))
    sdfData.show()
