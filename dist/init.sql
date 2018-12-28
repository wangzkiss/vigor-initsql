
use ebd;
truncate table e_platform;
truncate table e_platform_node;

INSERT INTO `e_platform` VALUES ('1', 'hadoop_hdfs', '192.168.2.11', '8020', null, 'http://192.168.2.11:8906/tospur-batchagent/computeServlet', '1', '3', null, null, null, null, null, '0');
INSERT INTO `e_platform` VALUES ('2', 'yarn', '192.168.2.11', '8088', null, 'http://192.168.2.11:8906/tospur-batchagent/computeServlet', '1', '3', null, null, null, null, null, '0');
INSERT INTO `e_platform` VALUES ('3', 'hadoop_hive', '192.168.2.11', '10000', null, 'http://192.168.2.11:8906/tospur-batchagent/computeServlet', '1', '3', 'admin', '2016-05-26 15:21:22', null, null, null, '0');
INSERT INTO `e_platform` VALUES ('4', 'spark', '192.168.2.11', '10015', null, 'http://192.168.2.11:8906/tospur-batchagent/computeServlet', '1', '3', 'admin', '2016-06-30 09:55:00', null, null, null, '0');
INSERT INTO `e_platform` VALUES ('5', 'hadoop_hbase', '192.168.2.11', '16000', null, 'http://192.168.2.11:8906/tospur-batchagent/computeServlet', '1', '3', null, null, null, null, null, '0');
INSERT INTO `e_platform` VALUES ('7', 'hadoop_hive_metastore', '192.168.2.11', '10000', null, 'http://192.168.2.11:8906/tospur-batchagent/computeServlet', '1', '3', null, null, null, null, null, '0');
INSERT INTO `e_platform` VALUES ('8', 'hadoop_mapreduce', '192.168.2.11', '8020', null, 'http://192.168.2.11:8906/tospur-batchagent/computeServlet', '1', '3', null, null, null, null, null, '0');
INSERT INTO `e_platform` VALUES ('12', 'mysql', '192.168.2.26', '3306', '', 'http://192.168.2.11:8906/tospur-batchagent/computeServlet', '1', '1', 'admin', '2016-05-26 15:21:22', 'admin', '2016-08-03 16:45:21', null, '0');
INSERT INTO `e_platform` VALUES ('13', 'etl_cluster', '192.168.2.12', '8904', '123', 'http://192.168.2.12:8904/tospur-etlagent/etlservices', '1', '2', 'admin', '2016-06-29 15:14:47', 'admin', '2016-07-13 12:17:01', null, '0');
INSERT INTO `e_platform` VALUES ('17', 'scheduler_cluster', '192.168.2.11', '8902', '', 'http://192.168.2.11:8902/tospur-scheduler/job-call', '1', '1', null, null, 'admin', '2016-10-10 15:32:02', null, '0');
INSERT INTO `e_platform` VALUES ('19', 'ftp', '192.168.2.12', '21', '', 'http://192.168.2.12:21/', '1', '1', 'admin', '2016-05-26 15:21:22', 'admin', '2016-10-17 14:32:18', null, '0');
INSERT INTO `e_platform` VALUES ('20', 'zookeeper', '', '2181', null, '192.168.2.10:2181,192.168.2.11:2181,192.168.2.12:2181', '1', '3', 'admin', '2016-06-29 15:18:37', null, null, null, '0');
INSERT INTO `e_platform` VALUES ('21', 'etlagent', '192.168.2.12', '8904', '', 'http://192.168.2.12:8904/tospur-etlagent/etlservices', null, '1', 'admin', '2016-08-11 15:42:05', 'admin', '2016-10-10 15:31:57', null, '0');

INSERT INTO `e_platform_node` VALUES ('1', '3', 'hiveIp', '4', '2', '8020', '/home/yarn/', '192.168.2.11', null, 'hdfs', 'hdfs', '1', '0', 'admin', '2016-05-26 15:24:22', null, null, null, '0', null);
INSERT INTO `e_platform_node` VALUES ('2', '12', 'mysqlIp', '4', '1', '3306', '/home/yarn/', '192.168.2.26', null, 'root', '123456', '1', '0', 'admin', '2016-05-26 15:24:22', null, null, null, '0', null);

INSERT INTO `e_platform_node` VALUES (null, '1', 'vigor-dc-10', '3', '1', '8020', '/home/yarn/', '192.168.2.10', null, 'hdfs', 'hdfs', '1', '0', 'admin', '2016-05-26 15:24:22', null, null, null, '0', 'nn1');
INSERT INTO `e_platform_node` VALUES (null, '2', 'vigor-dc-10', '5', '1', '8020', '/home/yarn/', '192.168.2.10', null, 'yarn', 'yarn', '1', '0', 'admin', '2016-05-26 15:24:22', null, null, null, '0', 'nn2');
INSERT INTO `e_platform_node` VALUES (null, '8', 'vigor-dc-10', '1', '1', '8020', '/home/yarn/', '192.168.2.10', null, 'hdfs', 'hdfs', '1', '0', 'admin', '2016-05-26 15:24:22', null, null, null, '0', null);
INSERT INTO `e_platform_node` VALUES (null, '1', 'vigor-dc-11', '3', '1', '8020', '/home/yarn/', '192.168.2.11', null, 'hdfs', 'hdfs', '1', '0', 'admin', '2016-05-26 15:24:22', null, null, null, '0', 'nn1');
INSERT INTO `e_platform_node` VALUES (null, '2', 'vigor-dc-11', '5', '1', '8020', '/home/yarn/', '192.168.2.11', null, 'yarn', 'yarn', '1', '0', 'admin', '2016-05-26 15:24:22', null, null, null, '0', 'nn2');
INSERT INTO `e_platform_node` VALUES (null, '8', 'vigor-dc-11', '1', '1', '8020', '/home/yarn/', '192.168.2.11', null, 'hdfs', 'hdfs', '1', '0', 'admin', '2016-05-26 15:24:22', null, null, null, '0', null);
INSERT INTO `e_platform_node` VALUES (null, '1', 'vigor-dc-12', '3', '2', '8020', '/home/yarn/', '192.168.2.12', null, 'hdfs', 'hdfs', '1', '0', 'admin', '2016-05-26 15:24:22', null, null, null, '0', 'nn1');
INSERT INTO `e_platform_node` VALUES (null, '2', 'vigor-dc-12', '5', '2', '8020', '/home/yarn/', '192.168.2.12', null, 'yarn', 'yarn', '1', '0', 'admin', '2016-05-26 15:24:22', null, null, null, '0', 'nn2');
INSERT INTO `e_platform_node` VALUES (null, '8', 'vigor-dc-12', '1', '2', '8020', '/home/yarn/', '192.168.2.12', null, 'hdfs', 'hdfs', '1', '0', 'admin', '2016-05-26 15:24:22', null, null, null, '0', null);
INSERT INTO `e_platform_node` VALUES (null, '1', 'vigor-dc-13', '3', '2', '8020', '/home/yarn/', '192.168.2.13', null, 'hdfs', 'hdfs', '1', '0', 'admin', '2016-05-26 15:24:22', null, null, null, '0', 'nn1');
INSERT INTO `e_platform_node` VALUES (null, '2', 'vigor-dc-13', '5', '2', '8020', '/home/yarn/', '192.168.2.13', null, 'yarn', 'yarn', '1', '0', 'admin', '2016-05-26 15:24:22', null, null, null, '0', 'nn2');
INSERT INTO `e_platform_node` VALUES (null, '8', 'vigor-dc-13', '1', '2', '8020', '/home/yarn/', '192.168.2.13', null, 'hdfs', 'hdfs', '1', '0', 'admin', '2016-05-26 15:24:22', null, null, null, '0', null);
INSERT INTO `e_platform_node` VALUES (null, '1', 'vigor-dc-14', '3', '2', '8020', '/home/yarn/', '192.168.2.14', null, 'hdfs', 'hdfs', '1', '0', 'admin', '2016-05-26 15:24:22', null, null, null, '0', 'nn1');
INSERT INTO `e_platform_node` VALUES (null, '2', 'vigor-dc-14', '5', '2', '8020', '/home/yarn/', '192.168.2.14', null, 'yarn', 'yarn', '1', '0', 'admin', '2016-05-26 15:24:22', null, null, null, '0', 'nn2');
INSERT INTO `e_platform_node` VALUES (null, '8', 'vigor-dc-14', '1', '2', '8020', '/home/yarn/', '192.168.2.14', null, 'hdfs', 'hdfs', '1', '0', 'admin', '2016-05-26 15:24:22', null, null, null, '0', null);
INSERT INTO `e_platform_node` VALUES (null, '5', 'vigor-dc-10', '3', '1', '1600', '/home/yarn/', '192.168.2.10', null, 'hbase', 'hbase', '1', '0', 'admin', '2016-05-26 15:24:22', null, null, null, '0', 'nn1');
INSERT INTO `e_platform_node` VALUES (null, '5', 'vigor-dc-11', '3', '2', '1600', '/home/yarn/', '192.168.2.11', null, 'hbase', 'hbase', '1', '0', 'admin', '2016-05-26 15:24:22', null, null, null, '0', 'nn1');
INSERT INTO `e_platform_node` VALUES (null, '5', 'vigor-dc-12', '3', '2', '1600', '/home/yarn/', '192.168.2.12', null, 'hbase', 'hbase', '1', '0', 'admin', '2016-05-26 15:24:22', null, null, null, '0', 'nn1');
INSERT INTO `e_platform_node` VALUES (null, '5', 'vigor-dc-13', '3', '2', '1600', '/home/yarn/', '192.168.2.13', null, 'hbase', 'hbase', '1', '0', 'admin', '2016-05-26 15:24:22', null, null, null, '0', 'nn1');
INSERT INTO `e_platform_node` VALUES (null, '5', 'vigor-dc-14', '3', '2', '1600', '/home/yarn/', '192.168.2.14', null, 'hbase', 'hbase', '1', '0', 'admin', '2016-05-26 15:24:22', null, null, null, '0', 'nn1');
INSERT INTO `e_platform_node` VALUES (null, '13', 'vigor-dc-12', '3', '2', '15100', '/home/yarn/', '192.168.2.12', null, 'hdfs', 'hdfs', '1', '0', 'admin', '2016-05-26 15:24:22', null, null, null, '0', 'nn1');
INSERT INTO `e_platform_node` VALUES (null, '20', 'vigor-dc-10', '3', '2', '2181', '/home/yarn/', '192.168.2.10', null, 'hdfs', 'hdfs', '1', '0', 'admin', '2016-05-26 15:24:22', null, null, null, '0', 'nn1');
INSERT INTO `e_platform_node` VALUES (null, '20', 'vigor-dc-11', '3', '2', '2181', '/home/yarn/', '192.168.2.11', null, 'hdfs', 'hdfs', '1', '0', 'admin', '2016-05-26 15:24:22', null, null, null, '0', 'nn1');
INSERT INTO `e_platform_node` VALUES (null, '20', 'vigor-dc-12', '3', '2', '2181', '/home/yarn/', '192.168.2.12', null, 'hdfs', 'hdfs', '1', '0', 'admin', '2016-05-26 15:24:22', null, null, null, '0', 'nn1');



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