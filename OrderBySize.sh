#Sort hadoop directory by file size

$ hdfs dfs -ls -S -h   hdfs://<directory_location> | sort -k6,7
