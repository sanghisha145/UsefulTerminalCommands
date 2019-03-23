#Sort hadoop directory by file size

$ hdfs dfs -ls -S -h   hdfs://<directory_location> | sort -k6,7

# grep only size,file_nme with size <2KB, here to avoid MB,GB, I didnt use flag "-h" with ls
$ hdfs dfs -ls -S   hdfs://<directory_location> | sort -k6,7 | awk '{ if($5 < 2000) print $5,$8}'
