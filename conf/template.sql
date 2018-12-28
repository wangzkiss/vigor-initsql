
use ebd;
truncate table e_platform;
truncate table e_platform_node;

## 初始化集群信息
INSERT INTO `e_platform` VALUES ('1', 'hadoop_hdfs', '$masterIp', '8020', null, 'http://$masterIp:8906/tospur-batchagent/computeServlet', '1', '3', null, null, null, null, null, '0');
INSERT INTO `e_platform` VALUES ('2', 'yarn', '$masterIp', '8088', null, 'http://$masterIp:8906/tospur-batchagent/computeServlet', '1', '3', null, null, null, null, null, '0');
INSERT INTO `e_platform` VALUES ('3', 'hadoop_hive', '$hiveIp', '10000', null, 'http://$masterIp:8906/tospur-batchagent/computeServlet', '1', '3', 'admin', '2016-05-26 15:21:22', null, null, null, '0');
INSERT INTO `e_platform` VALUES ('4', 'spark', '$sparkIp', '10015', null, 'http://$masterIp:8906/tospur-batchagent/computeServlet', '1', '3', 'admin', '2016-06-30 09:55:00', null, null, null, '0');
INSERT INTO `e_platform` VALUES ('5', 'hadoop_hbase', '$masterIp', '16000', null, 'http://$masterIp:8906/tospur-batchagent/computeServlet', '1', '3', null, null, null, null, null, '0');
INSERT INTO `e_platform` VALUES ('7', 'hadoop_hive_metastore', '$hiveIp', '10000', null, 'http://$masterIp:8906/tospur-batchagent/computeServlet', '1', '3', null, null, null, null, null, '0');
INSERT INTO `e_platform` VALUES ('8', 'hadoop_mapreduce', '$masterIp', '8020', null, 'http://$masterIp:8906/tospur-batchagent/computeServlet', '1', '3', null, null, null, null, null, '0');
INSERT INTO `e_platform` VALUES ('12', 'mysql', '$mysqlIp', '3306', '', 'http://$masterIp:8906/tospur-batchagent/computeServlet', '1', '1', 'admin', '2016-05-26 15:21:22', 'admin', '2016-08-03 16:45:21', null, '0');
INSERT INTO `e_platform` VALUES ('13', 'etl_cluster', '$etlAgentIp', '8904', '123', 'http://$etlAgentIp:8904/tospur-etlagent/etlservices', '1', '2', 'admin', '2016-06-29 15:14:47', 'admin', '2016-07-13 12:17:01', null, '0');
INSERT INTO `e_platform` VALUES ('17', 'scheduler_cluster', '$schedulerIp', '8902', '', 'http://$schedulerIp:8902/tospur-scheduler/job-call', '1', '1', null, null, 'admin', '2016-10-10 15:32:02', null, '0');
INSERT INTO `e_platform` VALUES ('19', 'ftp', '$ftpIp', '21', '', 'http://$ftpIp:21/', '1', '1', 'admin', '2016-05-26 15:21:22', 'admin', '2016-10-17 14:32:18', null, '0');
INSERT INTO `e_platform` VALUES ('20', 'zookeeper', '', '2181', null, '$zookeeperUrl', '1', '3', 'admin', '2016-06-29 15:18:37', null, null, null, '0');
INSERT INTO `e_platform` VALUES ('21', 'etlagent', '$etlAgentIp', '8904', '', 'http://$etlAgentIp:8904/tospur-etlagent/etlservices', null, '1', 'admin', '2016-08-11 15:42:05', 'admin', '2016-10-10 15:31:57', null, '0');

## 初始化集群节点信息
INSERT INTO `e_platform_node` VALUES ('1', '3', 'hiveIp', '4', '2', '8020', '/home/yarn/', '$hiveIp', null, 'hdfs', 'hdfs', '1', '0', 'admin', '2016-05-26 15:24:22', null, null, null, '0', null);
INSERT INTO `e_platform_node` VALUES ('2', '12', 'mysqlIp', '4', '1', '3306', '/home/yarn/', '$mysqlIp', null, 'root', '123456', '1', '0', 'admin', '2016-05-26 15:24:22', null, null, null, '0', null);

#foreach($hadoop in ${hadooplist}) 
INSERT INTO `e_platform_node` VALUES (null, '1', '$hadoop.name', '3', '$hadoop.type', '8020', '/home/yarn/', '$hadoop.ip', null, 'hdfs', 'hdfs', '1', '0', 'admin', '2016-05-26 15:24:22', null, null, null, '0', 'nn1');
INSERT INTO `e_platform_node` VALUES (null, '2', '$hadoop.name', '5', '$hadoop.type', '8020', '/home/yarn/', '$hadoop.ip', null, 'yarn', 'yarn', '1', '0', 'admin', '2016-05-26 15:24:22', null, null, null, '0', 'nn2');
INSERT INTO `e_platform_node` VALUES (null, '8', '$hadoop.name', '1', '$hadoop.type', '8020', '/home/yarn/', '$hadoop.ip', null, 'hdfs', 'hdfs', '1', '0', 'admin', '2016-05-26 15:24:22', null, null, null, '0', null);
#end
#foreach($hbase in ${hbaselist}) 
INSERT INTO `e_platform_node` VALUES (null, '5', '$hbase.name', '3', '$hbase.type', '1600', '/home/yarn/', '$hbase.ip', null, 'hbase', 'hbase', '1', '0', 'admin', '2016-05-26 15:24:22', null, null, null, '0', 'nn1');
#end
#foreach($etl in ${etllist}) 
INSERT INTO `e_platform_node` VALUES (null, '13', '$etl.name', '3', '$etl.type', '15100', '/home/yarn/', '$etl.ip', null, 'hdfs', 'hdfs', '1', '0', 'admin', '2016-05-26 15:24:22', null, null, null, '0', 'nn1');
#end
#foreach($zook in ${zklist}) 
INSERT INTO `e_platform_node` VALUES (null, '20', '$zook.name', '3', '$zook.type', '2181', '/home/yarn/', '$zook.ip', null, 'hdfs', 'hdfs', '1', '0', 'admin', '2016-05-26 15:24:22', null, null, null, '0', 'nn1');
#end


##  1：流式ETL,HTTP接口；；2：ETL批处理任务；3:hive任务  4：流计算任务；5：自定义流计算任务；6：Hive计算任务；
##  7：MapReduce计算任务；8：自定义MapReduce计算任务；9：RHadoop计算任务； 11：流式ETL,FLUME接口

INSERT INTO `e_task_platform_relation` VALUES ('1', '21');
INSERT INTO `e_task_platform_relation` VALUES ('2', '21');
INSERT INTO `e_task_platform_relation` VALUES ('3', '3');
INSERT INTO `e_task_platform_relation` VALUES ('4', '4');
INSERT INTO `e_task_platform_relation` VALUES ('5', '8');
INSERT INTO `e_task_platform_relation` VALUES ('6', '8');
INSERT INTO `e_task_platform_relation` VALUES ('7', '1');
INSERT INTO `e_task_platform_relation` VALUES ('8', '8');
INSERT INTO `e_task_platform_relation` VALUES ('9', '1');
INSERT INTO `e_task_platform_relation` VALUES ('10', '24');
INSERT INTO `e_task_platform_relation` VALUES ('11', '24');