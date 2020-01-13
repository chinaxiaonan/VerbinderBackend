INSERT INTO industries (id, name) VALUES (1,'制造业'), (2, '火力发电'), (3, '石油化工'), (4, '水泥生产'), (5, '环境保护'), (6, '建筑'), (7, '空调系统');
INSERT INTO resources (id, name) VALUES (1,'Equipment list'), (2,'Equipment profits'), (3,'Human diagnostic experiences'),(4,'传感器数据'),(5,'历史案例文本记录'),(6,'设备列表'),(7,'设备更换记录'),(8,'设备寿命记录'),(9,'设备工艺参数'),(10,'设备价值'),(11,'设备利润'),(12,'历史气象数据'),(13,'实时气象数据'),(14,'污染物来源数据'),(15,'生产参数记录'),(16,'产品质量记录'),(17,'历史环境数据'),(18,'设备控制参数'),(19,'历史观察数据');
INSERT INTO deliverables (name) VALUES ('机械故障预测'),('故障解决方案'),('相似历史故障'),('最佳设备更换时机'),('空气质量预测'),('最优生产参数'),('最优设置');
INSERT INTO technologies (name) VALUES ('传感器拓扑图'),('机器学习'),('自然语言处理'),('机器学习'),('信息检索'),('对抗生成网络'),('深度神经网络'),('强化学习');
INSERT INTO projects (name, contact, requirement) VALUES ('预测性维护', 'A', ''), ('故障诊断', 'B', ''), ('工件寿命预测', 'C', ''), ('空气质量预测', 'D', ''), ('产品质量优化', 'C', ''), ('楼宇暖风节能', 'E', ''), ('工业节能', 'E', '');
--INSERT INTO project_deliverable (projectId, deliverableId) VALUES ()

-- Test data
INSERT INTO deliverables (name) VALUES ('bb');
INSERT INTO industries (name) VALUES ('Manufacture');
INSERT INTO projects (name, contact, requirement, "industryId", "deliverableId") VALUES ('预测性维护', 'A', 'aa', 1, 1);
INSERT INTO technologies (name) VALUES ('tt1');
INSERT INTO resources (name) VALUES ('t1');
INSERT INTO project_resource VALUES (1, 1);
INSERT INTO project_technology VALUES (1, 1);
