ALTER SEQUENCE industries_id_seq RESTART 100;
ALTER SEQUENCE technologies_id_seq RESTART 100;

INSERT INTO industries (id, namekey, iconpath, imagepath, desctext, status) VALUES (1,'industry.name.equip','icon-equip.png','img-equip.png', '“工欲善其事，必先利其器”，任何现代化工业生产都不可能离开相应的设备而凭手工进行，因此，制造各类高质量的工业设备是众多企业不遗余力所追求的目标。西门子中国研究院致力于通过一系列电气化、数字化、自动化、乃至智能化的努力，帮助各类设备制造企业提高生产效率，增加生产效益，快步迈向工业4.0时代。', 99);
INSERT INTO industries (id, namekey, iconpath, imagepath, desctext, status) VALUES (2,'industry.name.fire','icon-fire.png', 'img-powergen.png', '电力资源对于工业生产有着无法替代的核心作用，而通过燃烧化石燃料来获取电能的火力发电产业是我国能源版图中至关重要的一部分。西门子中国研究院多年来着眼于对火电机组运行过程进行预测性维护和自动化监控，并对可能发生的设备故障进行在线智能诊断，并在环保节能成为我国电力结构调整重要方向的今天，协助火力发电行业的更新换代和产能升级。', 99);
INSERT INTO industries (id, namekey, iconpath, imagepath, desctext, status) VALUES (3,'industry.name.car','icon-car.png', 'img-car.png', '汽车制造行业产业链长、工艺面广、规模化生产需求高、成本控制要求严格，往往被称为整个制造业的标杆行业。西门子中国研究院在智能制造领域不断进行的数字化、自动化和智能化的尝试，在汽车制造产业链上的诸多环节均大有用武之地——无论是对某个独立的零部件生产质量的监控，还是对整体生产流程的优化，西门子都拥有成功的经验。', 99);
INSERT INTO industries (id, namekey, iconpath, imagepath, desctext, status) VALUES (4,'industry.name.soft','icon-soft.png', 'img-software.png', '随着数字化工厂和智能制造理念的发展，越来越多的信息技术与传统工业生产流程紧密结合在了一起，体现在很多生产流程要求使用可编程模块或者完整的软件进行控制，而相应的模块和软件的开发也越来越多的由工业企业内部而不是外部信息企业来进行。在这一领域，西门子中国研究院针对常规的工业软件开发过程进行流程管理，从而帮助开发人员提高效率，缩短开发周期，长远而言，达到提高工业产能的最终目标。',99);
INSERT INTO industries (id, namekey, iconpath, imagepath, desctext, status) VALUES (5,'industry.name.ass','icon-ass.png', 'img-assets.png', '资产管理对于各类企事业单位，尤其是规模较大、机构较为复杂的大中型企业来说，至关重要。西门子中国研究院多年来致力于通过建立安全、便捷、兼容性强的数据接口和平台，对不同来源、不同结构、不同格式的资产数据进行科学整合，从而系统性降低相关企业的数据管理成本，加强其信息处理能力，并加快其业务转换的速度。',99);
INSERT INTO industries (id, namekey, iconpath, imagepath, desctext, status) VALUES (6,'industry.name.city','icon-city.png', 'img-digicity.png', '“数字城市”是个长期系统工程，力求利用信息技术手段把城市生活的方方面面在网络上进行数字化虚拟实现，从而使生活更为便捷，与我国目前工业化和信息化并行的经济生活现状十分契合。西门子中国研究院通过对诸如信息整合、物联网技术、能耗体系以及工业人工智能等诸多有关方向上进行深入研究，逐步为实现“数字城市”乃至“智慧城市”这一长远目标进行着技术储备。',99);
INSERT INTO industries (id, namekey, iconpath, imagepath, desctext, status) VALUES (7,'industry.name.env','icon-env.png', 'img-envpro.png', '“绿水青山就是金山银山”，近年来，全社会都逐步意识到工业的快速发展万万不能以牺牲环境为代价。在环境保护这一领域，西门子中国研究院一方面对于工业生产过程中如何实现节能减排进行深入的研究，一方面对于非工业语境下的公共环境数据进行科学而智能化的分析和预测，力求为共建一个健康的生态环境添砖加瓦。',99);
INSERT INTO industries (id, namekey, iconpath, imagepath, desctext, status) VALUES (8,'industry.name.build','icon-build.png', 'img-building.png', '全球约40%的能源成本发生在建筑物上，而每栋建筑都包括供热、通风和空调等设备，如何最高效的使用这些设备，对于节能减排、优化成本意义重大。西门子中国研究院常年来与西门子楼宇科技集团合作，共同研发智能化解决方案，力求与可与一起再整个建筑的生命周期内开发能源采购、能源效率以及能源管理的最优策略，实现与用户的长期共赢。',99);
INSERT INTO industries (id, namekey, iconpath, imagepath, desctext, status) VALUES (9,'industry.name.powerprovide','','img-powerprovide.png','工业生产活动无可避免的伴随着能量的消耗，小到一台生产设备，大到整个工业园区，对电能、热能等能源的消耗通常是不平均的。在这样的条件下，如何搭建安全高效的功能网络，并找到效率最优的供能策略，对于从单台设备到整个园区的生产活动而言，都有着重大的意义，而西门子中国研究院在这个方向上钻研许久，能够提供一整套关于供能网络设计及功能策略优化的方案，一次达到节约能源消耗、提高生产效率的目的。',0);
INSERT INTO industries (id, namekey, iconpath, imagepath, desctext, status) VALUES (10, 'industry.name.mold','', 'img-mold.png','模具是零部件生产过程中不可或缺的重要工具，通常而言，模具多由金属铸成，开发周期长、成本较高、灵活度相对有限。对此，西门子中国研究院研发出使用注塑成型工艺的增材制造技术，也称为3D打印技术，能够较快的获得新型材料模具，大幅降低相关生产过程中的试错成本。',0);


INSERT INTO technologies (id, namekey, desciption, imagepath, displayinmain) VALUES (1, 'technology.name.robo', '数字化工厂，技术介绍。数字化工厂技术介绍数字化工厂，技术介绍数字化工厂技术介绍数字化工厂，技术…','icon-robo.png', true);
INSERT INTO technologies (id, namekey, desciption, imagepath, displayinmain) VALUES (2, 'technology.name.savepow', '数字化工厂，技术介绍。数字化工厂技术介绍数字化工厂，技术介绍数字化工厂技术介绍数字化工厂，技术…','icon-savepow.png',true);
INSERT INTO technologies (id, namekey, desciption, imagepath, displayinmain) VALUES (3, 'technology.name.fact', '数字化工厂，技术介绍。数字化工厂技术介绍数字化工厂，技术介绍数字化工厂技术介绍数字化工厂，技术…', 'icon-fact.png',true);
INSERT INTO technologies (id, namekey, desciption, imagepath, displayinmain) VALUES (4, 'technology.name.diagnostic', '数字化工厂，技术介绍。数字化工厂技术介绍数字化工厂，技术介绍数字化工厂技术介绍数字化工厂，技术…','icon-diagnostic.png', true);
INSERT INTO technologies (id, namekey, desciption, imagepath, displayinmain) VALUES (5, 'technology.name.dataplatform', '数字化工厂，技术介绍。数字化工厂技术介绍数字化工厂，技术介绍数字化工厂技术介绍数字化工厂，技术…','icon-dataplatform.png', true);
INSERT INTO technologies (id, namekey, desciption, imagepath, displayinmain) VALUES (6, 'technology.name.nnn', '数字化工厂，技术介绍。数字化工厂技术介绍数字化工厂，技术介绍数字化工厂技术介绍数字化工厂，技术…','nnnn.png', false);

INSERT INTO users (id, fullname, accountname, pwd, status) VALUES (1, 'testuser','testuser', 'testpwd', 1);
INSERT INTO deliverables (id, name) VALUES (1,'机械故障告警');
INSERT INTO projects (id,name, contact, requirement,"industryId","deliverableId") VALUES (1,'预测性维护', 'A', '序列数值预测',1,1);
INSERT INTO bookmarkfolders (id, "name", folderdesc, "userId") VALUES (1, 'folder name 1', 'folder desc 1', 1);
INSERT INTO project_bookmarkfolder ("projectId", "bookmarkfolderId") VALUES (1,1);