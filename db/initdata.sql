ALTER SEQUENCE industries_id_seq RESTART 100;
ALTER SEQUENCE resources_id_seq RESTART 100;
ALTER SEQUENCE deliverables_id_seq RESTART 100;
ALTER SEQUENCE technologies_id_seq RESTART 100;
ALTER SEQUENCE projects_id_seq RESTART 100;
INSERT INTO industries (id, name) VALUES (1,'制造业'), (2, '火力发电'), (3, '石油化工'), (4, '水泥生产'), (5, '环境保护'), (6, '建筑'), (7, '空调系统');
INSERT INTO resources (id, name) VALUES (1,'测点历史数据'), (2,'测点实时数据'), (3,'故障案例文档'),(4,'领域设备列表'),(5,'设备更换记录'),(6,'设备工艺参数'),(7,'设备价值')
,(8,'生产利润'),(9,'历史气象数据'),(10,'实时环境监测数据'),(11,'污染物来源数据'),(12,'生产参数记录'),(13,'产品质量记录'),(14,'环境数据'), (15,'楼宇信息'),(16,'参数控制')
,(17,'设备相关数据'),(18,'系统控制参数'),(19,'行业现状介绍'),(20,'从业者远期目标'),(21,'从业者具体问题讨论'),(22,'产品信息'),(23,'目标使用群体'),(24,'当前痛点');
INSERT INTO deliverables (id, name) VALUES (1,'机械故障告警'),(2,'故障解决方案'),(3,'工件寿命数值'),(4,'空气质量数值'),(5,'最优生产参数'),(6,'最优配置参数'),(7,'未来工作方向'),(8,'新交互界面');
INSERT INTO technologies (id,name) VALUES (1,'传感器拓扑图'),(2,'机器学习'),(3,'自然语言处理'),(4,'信息检索'),(5,'对抗生成网络'),(6,'深度神经网络'),(7,'强化学习'),(8,'讨论'),(9,'设计');
INSERT INTO projects (id,name, contact, requirement,"industryId","deliverableId") VALUES (1,'预测性维护', 'A', '序列数值预测',1,1), (2,'智能工业诊断', 'B', '相似度计算',2,2), (3,'工件寿命预测', 'C', '序列数值预测',1,3), (4,'空气质量预测', 'D', '序列数值预测',5,4), (5,'产品质量优化', 'C', '参数优化',1,5), (6,'楼宇暖风节能', 'E', '参数优化',6,6), (7,'工业节能', 'E', '参数优化',1,6),(8,'设计思维研讨会','F','理性分析',6,7),(9,'工业产品交互设计','F','UI设计',1,8);
INSERT INTO project_resource ("projectId", "resourceId") VALUES (1,1),(1,2),(2,3),(2,4),(3,5),(3,6),(3,7),(3,8),(4,9),(4,10),(4,11),(5,12),(5,13),(6,14),(6,15),(6,16),(7,14),(7,17),(7,18),(8,19),(8,20),(8,21),(9,22),(9,23),(9,24);
INSERT INTO project_technology ("projectId", "technologyId") VALUES (1,1),(1,2),(2,3),(2,2),(2,4),(3,2),(3,5),(4,6),(4,2),(5,2),(6,2),(6,7),(7,2),(7,7),(8,8),(9,9);
-- Test data
INSERT INTO deliverables (name) VALUES ('bb');
INSERT INTO industries (name) VALUES ('Manufacture');
INSERT INTO projects (name, contact, requirement, "industryId", "deliverableId") VALUES ('预测性维护', 'A', 'aa', 1, 1);
INSERT INTO technologies (name) VALUES ('tt1');
INSERT INTO resources (name) VALUES ('t1');
INSERT INTO project_resource VALUES (1, 1);
INSERT INTO project_technology VALUES (1, 1);
