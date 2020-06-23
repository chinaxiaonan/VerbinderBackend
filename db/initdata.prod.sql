ALTER SEQUENCE industries_id_seq RESTART 100;
ALTER SEQUENCE technologies_id_seq RESTART 100;
ALTER SEQUENCE projects_id_seq RESTART 100;
ALTER SEQUENCE bookmarkfolders_id_seq RESTART 100;

INSERT INTO industries (id, name, iconpath, imagepath, desctext, status) VALUES (1,'设备制造','icon-equip.png','img-equip.png', '“工欲善其事，必先利其器”，任何现代化工业生产都不可能离开相应的设备而凭手工进行，因此，制造各类高质量的工业设备是众多企业不遗余力所追求的目标。西门子中国研究院致力于通过一系列电气化、数字化、自动化、乃至智能化的努力，帮助各类设备制造企业提高生产效率，增加生产效益，快步迈向工业4.0时代。', 99);
INSERT INTO industries (id, name, iconpath, imagepath, desctext, status) VALUES (2,'火力发电','icon-fire.png', 'img-powergen.png', '电力资源对于工业生产有着无法替代的核心作用，而通过燃烧化石燃料来获取电能的火力发电产业是我国能源版图中至关重要的一部分。西门子中国研究院多年来着眼于对火电机组运行过程进行预测性维护和自动化监控，并对可能发生的设备故障进行在线智能诊断，并在环保节能成为我国电力结构调整重要方向的今天，协助火力发电行业的更新换代和产能升级。', 99);
INSERT INTO industries (id, name, iconpath, imagepath, desctext, status) VALUES (3,'汽车制造','icon-car.png', 'img-car.png', '汽车制造行业产业链长、工艺面广、规模化生产需求高、成本控制要求严格，往往被称为整个制造业的标杆行业。西门子中国研究院在智能制造领域不断进行的数字化、自动化和智能化的尝试，在汽车制造产业链上的诸多环节均大有用武之地——无论是对某个独立的零部件生产质量的监控，还是对整体生产流程的优化，西门子都拥有成功的经验。', 99);
INSERT INTO industries (id, name, iconpath, imagepath, desctext, status) VALUES (4,'软件开发','icon-soft.png', 'img-software.png', '随着数字化工厂和智能制造理念的发展，越来越多的信息技术与传统工业生产流程紧密结合在了一起，体现在很多生产流程要求使用可编程模块或者完整的软件进行控制，而相应的模块和软件的开发也越来越多的由工业企业内部而不是外部信息企业来进行。在这一领域，西门子中国研究院针对常规的工业软件开发过程进行流程管理，从而帮助开发人员提高效率，缩短开发周期，长远而言，达到提高工业产能的最终目标。',99);
INSERT INTO industries (id, name, iconpath, imagepath, desctext, status) VALUES (5,'资产管理','icon-ass.png', 'img-assets.png', '资产管理对于各类企事业单位，尤其是规模较大、机构较为复杂的大中型企业来说，至关重要。西门子中国研究院多年来致力于通过建立安全、便捷、兼容性强的数据接口和平台，对不同来源、不同结构、不同格式的资产数据进行科学整合，从而系统性降低相关企业的数据管理成本，加强其信息处理能力，并加快其业务转换的速度。',99);
INSERT INTO industries (id, name, iconpath, imagepath, desctext, status) VALUES (6,'数字城市','icon-city.png', 'img-digicity.png', '“数字城市”是个长期系统工程，力求利用信息技术手段把城市生活的方方面面在网络上进行数字化虚拟实现，从而使生活更为便捷，与我国目前工业化和信息化并行的经济生活现状十分契合。西门子中国研究院通过对诸如信息整合、物联网技术、能耗体系以及工业人工智能等诸多有关方向上进行深入研究，逐步为实现“数字城市”乃至“智慧城市”这一长远目标进行着技术储备。',99);
INSERT INTO industries (id, name, iconpath, imagepath, desctext, status) VALUES (7,'环境保护','icon-env.png', 'img-envpro.png', '“绿水青山就是金山银山”，近年来，全社会都逐步意识到工业的快速发展万万不能以牺牲环境为代价。在环境保护这一领域，西门子中国研究院一方面对于工业生产过程中如何实现节能减排进行深入的研究，一方面对于非工业语境下的公共环境数据进行科学而智能化的分析和预测，力求为共建一个健康的生态环境添砖加瓦。',99);
INSERT INTO industries (id, name, iconpath, imagepath, desctext, status) VALUES (8,'楼宇暖风','icon-build.png', 'img-building.png', '全球约40%的能源成本发生在建筑物上，而每栋建筑都包括供热、通风和空调等设备，如何最高效的使用这些设备，对于节能减排、优化成本意义重大。西门子中国研究院常年来与西门子楼宇科技集团合作，共同研发智能化解决方案，力求与可与一起再整个建筑的生命周期内开发能源采购、能源效率以及能源管理的最优策略，实现与用户的长期共赢。',99);
INSERT INTO industries (id, name, iconpath, imagepath, desctext, status) VALUES (9,'供能网络','','img-powerprovide.png','工业生产活动无可避免的伴随着能量的消耗，小到一台生产设备，大到整个工业园区，对电能、热能等能源的消耗通常是不平均的。在这样的条件下，如何搭建安全高效的功能网络，并找到效率最优的供能策略，对于从单台设备到整个园区的生产活动而言，都有着重大的意义，而西门子中国研究院在这个方向上钻研许久，能够提供一整套关于供能网络设计及功能策略优化的方案，一次达到节约能源消耗、提高生产效率的目的。',0);
INSERT INTO industries (id, name, iconpath, imagepath, desctext, status) VALUES (10, '模具浇铸','', 'img-mold.png','模具是零部件生产过程中不可或缺的重要工具，通常而言，模具多由金属铸成，开发周期长、成本较高、灵活度相对有限。对此，西门子中国研究院研发出使用注塑成型工艺的增材制造技术，也称为3D打印技术，能够较快的获得新型材料模具，大幅降低相关生产过程中的试错成本。',0);


INSERT INTO technologies (id, name, desctext, iconpath, imagepath, status) VALUES (1, '工业机器人', '工业机器人是广泛应用于工业领域的多自由度机器装置，具有一定的自动型，从而可一靠自身的动力能源和控制能力实现相应的工业加工制造功能。因此，工业机器人的研发是西门子中国研究院的一个重要研究方向，迄今为止已取得诸多成果，例如通过自动运货车来实现工厂流水线的全自动联通，可节约大量人工成本。','icon-robo.png', '',99);
INSERT INTO technologies (id, name, desctext, iconpath, imagepath, status) VALUES (2, '节能优化', '随着工业生产规模的扩大，很多行业的能耗居高不下，而节能减排不仅有利于可持续发展，更能够帮助企业降低成本、提升竞争力。西门子中国研究院致力于研发精细化能耗管理工具，自动分析各个耗能设备与系统的统筹联动及动态变化，并基于分析结果提供系统运行最优配置方案，达到减少无谓能耗，最大化系统运行效能之功效。','icon-savepow.png','',99);
INSERT INTO technologies (id, name, desctext, iconpath, imagepath, status) VALUES (3, '数字化工厂', '数字化工厂以产品全生命周期的相关数据为基础，在计算机虚拟环境中，对生产过程进行仿真、评估和优化，从而起到“谋定而后动”的功效。西门子中国研究院除了进行相关仿真软件的研发和部署，还会基于一些评估的结果，生产过程中的某些传统上基于人力的管理流程，如生产计划制定、生产进度追踪等，亦可由此完成数字化乃至自动化升级，从而大幅度提高工业生产的自动化程度，降低管理成本，进一步优化生产效率。', 'icon-fact.png','',99);
INSERT INTO technologies (id, name, desctext, iconpath, imagepath, status) VALUES (4, '故障诊断', '工业生产过程中，故障总是难免的。传统上故障的诊断和处理均是基于工程师的专业知识和经验判断来进行，对人力资源的要求较高，而西门子中国研究院则努力通过基于传感器数据记录和故障文本描述进行的大数据分析，完成智能化的自动诊断，并以此辅助工程人员，提高故障诊断流程的效率和准确性。而故障诊断系统更可以和诸多西门子其他的工业辅助流程相结合，如预测性维护，形成更加完整的智能制造生态链，助力工业4.0时代。','icon-diagnostic.png', '',99);
INSERT INTO technologies (id, name, desctext, iconpath, imagepath, status) VALUES (5, '数据中台', '数据中台是一个将各类相关数据进行加工后封装成一个公共数据产品或服务的平台。在实际应用中，西门子中国研究院致力于根据客户的实际情况，将来源不尽相同、但相互间有着显性或隐性关联的异构数据进行梳理和整合，形成格式明确、从属清晰的数据结构，并通过云服务和交互式管理软件赋予客户查看、编辑、整理、归纳这些数据的能力，为后续的数据使用铺平道路。','icon-dataplatform.png', '',99);
INSERT INTO technologies (id, name, desctext, iconpath, imagepath, status) VALUES (6, '质量优化', '产品良率是制造业中永恒的话题，而加工参数的配置对于产品良率而言至关重要，因此，如何统筹考虑加工参数与眼睛因素、产品质量要求之间的相互关系，从而找到最优配置，是很多人孜孜以求的目标。西门子中国研究院在总体钻研工业自动化的过程中，对于如何优化产品生产质量的课题也有涉及，主要通过对各类生产相关数据进行智能化分析，从而自动获取与现实生产环境相适宜的最优生产参数配置，从而优化总体生产质量。','', '',0);
INSERT INTO technologies (id, name, desctext, iconpath, imagepath, status) VALUES (7, '预测性维护','设备维护是与生产效率、成本、质量等诸多要素息息相关的话题，无论是疏于维护导致故障，还是过度维护造成减产，都是生产单位力求避免的现象。西门子中国研究院多年来持续投入于该课题，通过对设备运行状态进行实时监控，并与历史记录和领域知识相比对，前瞻性的对可能发生的设备异常状态进行预警，从而引导维修工作恰逢其时，保障机组设备健康高效运行，在效率、成本与质量间把握平衡点。','','',0);
INSERT INTO technologies (id, name, desctext, iconpath, imagepath, status) VALUES (8, '趋势预测','序列数据，尤其是时序数据，在很多应用场景都能起到观察总体趋势的作用。然而，对单维度或多维度序列数据的研究不仅仅能够对过往进行归纳总结，还可以对未来进行科学展望——这就是趋势预测。在这个课题上，西门子中国研究院应用科学方法，能够在诸多领域开展趋势预测的工作，并在诸如工件寿命、空气质量追踪等风格迥异的应用场景中积累了丰富的经验。','','',0);
INSERT INTO technologies (id, name, desctext, iconpath, imagepath, status) VALUES (9, '3D打印','3D打印是快速成型技术的一种，又称增材制造，它是以可编辑数字模型文件为基础，运用粉末状可年和材料，通过逐层打印的方式来构造物体的技术。西门子中国研究院在此领域投入人力物力，利用对数字文件的灵活编辑，以较小的时间成本和较高的容错率实践零部件的试验型，大大加快了新部件研发和测试的效率，并广泛应用于制造业合作伙伴的实际生产过程之中。','','',0);
INSERT INTO technologies (id, name, desctext, iconpath, imagepath, status) VALUES (10, 'UI设计','西门子中国研究院致力于提供门类繁多的数字化、自动化、智能化解决方案来助力各类工业生产流程，而如果想让这些解决方案在用户手中发挥最大的效能，给这些解决方案配上清晰、明确而又友好的用户界面显得尤为重要。为此，我们提供专业的设计团队，深度剖析用户的功能需求和操作习惯，与技术团队紧密协调，开发出让用户满意的交互界面。','','',0);
INSERT INTO technologies (id, name, desctext, iconpath, imagepath, status) VALUES (11, '设计思维','随着技术的不断发展，没有人愿意原地踏步，无论是个人还是企业，都在追求卓越的道路上策马奔腾。然而有时候，您可能有满怀前进的热情，却一时间没有创新的头绪——在这个时候，西门子中国研究院所能提供的“设计思维”研讨会或许可以帮到您。设计思维是一种以人为中心，通过组织跨行业的团队讨论，以迭代形式梳理需求、愿景和可行性，最终集思广益，寻找创新之路的心灵旅程，目前已在美国、德国及中国的很多企业中得到广泛认可。','','',0);

INSERT INTO deliverables (id, name) VALUES (1,'机械故障告警');
INSERT INTO projects (id,name, desctext, requirement,pvalue,shortvalue, techdesc, imgpath, customer, contact, status, "deliverableId") VALUES (1,'某变压器工厂数字化升级案例','针对某变压器工厂诸多生产流程依赖人工、自动化程度低的情况，我们通过整理客户核心需求、梳理价值链，定制Brownfield 数字化升级与数据中台解决方案，打通全价值链。', '<ul><li>•人工制定生产计划，配置非最优</li><li>•人工记录生产进度，难以管理和分析</li><li>•关键设备不联网，难以监控和维护</li><li>•人工记录质量结果，难以管理和分析</li></ul>', '<ul><li>•生产计划管理：车间手写记录减少90%，统计效率提高80%，生产效率提升30%</li><li>•生产运营管理：运营成本降低25%，利润增加100%</li><li>•设备管理：非计划停机时间减少30%，能源利用率提高13%</li><li>•质量管理：缩短问题平均处理时间20%，产品制造周期缩短22%，产品不良率降低67%</li></ul>','运营成本降低25%','<ul><li>•生产计划数字化管理，变更可追溯：基于产线数字孪生模型进行仿真，实现生产KPI预先评估和资源的优化配置</li><li>•各工序按工单派工报工，对工序、工位、工步、工时进行实时管理，获取生产进度，分析工时利用率，统计计划执行情况</li><li>•关键工序设备联网，设备运行状态和维护过程实时透明，实现预防性维修</li><li>•产值品质透明化：产品相关问题进行实时收集和跟踪，利用统计分析和知识图谱进行全程追溯分析和持续优化</li></ul>','img-case1.jpeg','某变压器工厂','SDT PPS-CN',99,1);
INSERT INTO projects (id,name, desctext, requirement,pvalue,shortvalue, techdesc, imgpath, customer, contact, status, "deliverableId") VALUES (2,'发电厂核心设备（主辅机）的智能诊断','针对某发电集团某区域的8个电厂，19台发电机组（装机容量9.6吉瓦）的主要发电设备（含主机、辅机），进行故障的智能诊断。','基于文字描述的人工故障诊断，依赖经验','针对发电机组的主辅机，当收到故障预警，或者已经发生故障时，基于设备异常的现象、设备各项状态，进行自动或半自动的诊断，给出潜在的原因和解决放方案，提高故障处理效率。','故障处理效率显著提高','<ul><li>•基于自然语言处理、语义分析、知识图谱等技术，建立历史故障知识库和参考案例库，作为诊断的依据；</li><li>•根据监控系统或运维人员的输入，通过案例推理，实现基于故障症状和现象的根本原因分析和解决方案推荐</li></ul>','img-case2.jpeg','某发电集团','BAM DAV-CN',99,1);
INSERT INTO projects (id,name, desctext, requirement,pvalue,shortvalue, techdesc, imgpath, customer, contact, status, "deliverableId") VALUES (3,'冷机/空压机运行策略优化案例','针对某半导体行业头部企业，优化设备的整体运行与控制策略，达到能源利用最大化的效果。','<ul><li>•冷机设备运行策略非最优，浪费能源</li><li>•空压机用电量高，浪费能源</li><li>•空压机用气量不均，造成浪费</li></ul>','<ul><li>•以最小的用电量，满足生产侧的冷量需求，提升整体系统能效</li><li>•给出最优运行参数值，实现空压机的最高能效</li></ul>','','<ul><li>•对外界条件，系统运行状态，设备能效及相关能耗的历史数据进行分析，建立连续模型，预测冷量供应需求。通过神经网络、优化等方法，给出最优的冷机群组控制策略。</li><li>•通过对典型工况，设备及系统运行参数和对应能耗的历史数据进行分析，建立机器学习模型。在满足冷量供应要求的条件下，通过优化算法计算并推荐最优的运行配置参数，达到减少用电量的效果。</li><li>•根据需求侧的压力、流量等需求，基于空压机的性能曲线，利用优化和机器学习方法，给出最优的压缩空气供给模式，包括压力分配、流量等。</li></ul>','img-case3.jpeg','某半导体行业头部企业','BAM DAV-CN',0,1);
INSERT INTO projects (id,name, desctext, requirement,pvalue,shortvalue, techdesc, imgpath, customer, contact, status, "deliverableId") VALUES (4,'精加工过程的生产质量优化','某汽车核心部件生产的领先企业通过数控机床进行某核心汽车零部件的生产，我们通过推荐最优生产参数，提高产线的良率','设备参数需根据不同环境条件调整','在不同室温、机器温度等环境条件下推荐最优的数控机床的加工参数，从而降低某核心部件的生产次品率','','生产质量优化系统，通过对历史数据分析，挖掘与生产质量相关的各种因素，并根据给定的优化目标，直接推荐参数配置的最优值，从而实现良率的提升。','img-case4.jpeg','某汽车核心部件领先企业','BAM DAV-CN',0,1);
INSERT INTO projects (id,name, desctext, requirement,pvalue,shortvalue, techdesc, imgpath, customer, contact, status, "deliverableId") VALUES (5,'汽车整车厂核心设备的预测性维护','对某高端汽车整车厂冲压车间的核心设备伺服冲压机（冲压线），进行实时状态监控、异常检测报警，并提供健康度预测，为进一步的维护计划提供依据。','设备突发损坏影响生产效率','避免非计划性宕机，并对未来劣化趋势进行预测，为维修计划的制定提供依据','大幅节约宕机损耗','针对伺服冲压线的易磨损、易坏部件，例如电机、齿轮箱等，对其潜在故障进行提前预警，并对多个领域KPI进行展示，方面设备维护人员理解设备状态和潜在故障','img-case5.jpeg','某高端汽车整车厂','BAM DAV-CN',99,1);
INSERT INTO projects (id,name, desctext, requirement,pvalue,shortvalue, techdesc, imgpath, customer, contact, status, "deliverableId") VALUES (6,'高级资产管理案例','针对南方某金融租赁领域客户数据纷乱、异地、异构等问题，提出数据融合的资产管理方案，使得项目能够顺利进行，并有利于后续工作的开展。','<ul><li>•不同资产分布存储，资产管理成本高、效率低</li><li>•数据存储系统异构，手动登录收集数据、进行分析</li><li>•资产数据规模复杂，需要进行360°管理</li></ul>','<ul><li>•建立了集成异构数据源的能力</li><li>•建立了未来业务融资租赁领域的标准语义模型</li><li>•增强了自身的IT能力并支持业务快速转换</li></ul>','','<ul><li>•将来自不同合作商的数据融合并构建集成资产管理解决方案，以确保租赁项目的健康运行</li><li>•除资产管理功能外，还提供客户风险评估、资产生命周期预测和数字化管理等相关服务</li></ul>','img-case6.jpeg','南方某金融租赁领域客户','SSI SEN-CN',0,1);
INSERT INTO projects (id,name, desctext, requirement,pvalue,shortvalue, techdesc, imgpath, customer, contact, status, "deliverableId") VALUES (7,'工业级DevOps西门子成都数字化工厂试点','在确保工业级产品质量的前提下，充分发挥和利用敏捷和DevOps，缩短响应时间，提高测试效率，推进软件开发的总体进程','<ul><li>•开发团队希望提高产品开发的敏捷性和开发效率</li><li>•由于在工业级软件开发中约束严格、质量要求高，应用敏捷开发和DevOps是一个巨大挑战</li></ul>','<ul><li>•敏捷：通过应用符合工业级PLM需求的敏捷实践，提高开发效率和透明度</li><li>•快速反馈：通过CI/CD构建和发布软件；在不同的开发阶段提供持续的质量和绩效反馈，缩短对质量问题的响应时间</li><li>•质量：与自动化流程自动运行进行集成，新的单元测试解决方案提高了测试效率；通过强制的代码审查和持续的代码检查来改进代码质量</li></ul>','','<ul><li>•敏捷: 应用正式的Scrum流程，培养项目经验丰富、合格的Scrum master</li><li>•CI/CD: (持续集成&持续开发):将现有的工具和流程集成到同一个工作流内, 通过实施CI/CD以简化交付流程</li><li>•内建质量: 创建单元测试解决方案、与构建和自动化过程集成</li></ul>','img-case7.jpeg','西门子成都数字化工厂','SSI SEN-CN',0,1);
INSERT INTO projects (id,name, desctext, requirement,pvalue,shortvalue, techdesc, imgpath, customer, contact, status, "deliverableId") VALUES (8,'电路板抓取解决方案','针对电路板生产线上的抓取问题，提供“AGV + UR5 + 摄像头 +应用编辑器”的系统解决方案，实现产线生产和任务分配的自动化','<ul><li>•流水线中需要人工移动产品，重复繁琐</li><li>•任务配置需要随时更改</li><li>•对新员工培训不足</li></ul>','<ul><li>•解决方案可以替换50%劳动力/任务</li><li>•灵活的解决方案，可以确保AGV可以到不同的位置开展不同的任务</li><li>•客户可以使用App Composer自行进行开发</li><li>•使用App Composer应用程序可以将员工培训成本降低到最低</li></ul>','','<ul><li>•使用AGV（自动运货车）在产线有物理断链的地方移动产品，从而实现产线全联通。</li><li>•通过App Composer自主配置生产任务</li></ul>','img-case8.jpeg','西门子成都数字化工厂','SSI SEN-CN',0,1);
INSERT INTO projects (id,name, desctext, requirement,pvalue,shortvalue, techdesc, imgpath, customer, contact, status, "deliverableId") VALUES (9,'中节能银川经开区增量配电网示范项目','针对经济开发区供电、供热价格高，能源供需矛盾突出等问题，提出全局优化、动态调度、多能互补、智能管理等方案，提高能源总体利用效率。','<ul><li>•工业园区企业使用电能、热能成本高</li><li>•园区用能分配策略非最优，供能质量低</li></ul>','<ul><li>•降低能源成本20%</li><li>•节能、节水、减排CO2</li></ul>','','<ul><li>•基于逐时负荷变化曲线，涵盖多种能源转换技术，从技术选用、容量确定、运行调度角度，实现园区级经济、精确、定制化的多能互补系统优化设计</li><li>•工业蒸汽负荷、采暖负荷都具有间歇性、随机性的特点，应用西门子综合能源智能优化调度，充分利用系统的灵活性，实现能源供应的经济性最优，效率最高</li><li>•数字化能源管理运营系统 - 创建区域能源即服务的新型商业模式。结合增量配电网建设和售电业务的开展，建立综合能源与增量配网的融合</li></ul>','img-case9.jpeg','中节能银川经开区','ENS EDM-CN',0,1);
INSERT INTO projects (id,name, desctext, requirement,pvalue,shortvalue, techdesc, imgpath, customer, contact, status, "deliverableId") VALUES (10,'增材制造模具和注塑成型工艺','结合增材制造技术与现有解决方案的优势和限制，快速开发功能性原型工艺流程，进而缩短产品开发周期和上市周期，提高竞争力','<ul><li>•传统的金属模具制造周期长(5-10周)，生产成本高，金属模具的保存和维护成本高</li><li>•随着小批量生产和产品多样化的发展趋势，模具的生产价值较高，但实际使用价值较低</li><li>•现有的金属模具冷却效率因加工方式而受限，造成较长的成型时间，从而增加了产品成本</li><li>•在产品开发阶段，产品设计方案的迭代会带来金属模具的持续修模，从而增加生产成本</li></ul>','<ul><li>•缩短产品开发周期，一次性降低22.7%的产品开发时间，新品上市提前，进而降低产品成本3%。</li><li>•与传统的CNC方法相比，AM具有更高的设计复杂度和自由度，并具有更高的精度</li><li>•该模具结构是传统的制造工艺无法实现，因此提高了可靠性和工艺稳定性</li></ul>','','增材制造技术（3D打印）释放产品设计自由度，通过设计模具的随型冷却流道，提高冷却效率和死点，继而发挥注塑成型工艺能够快速生产小批量产品验证的优势。','img-case10.jpeg','无','MDM MMQ-CN',0,1);
INSERT INTO projects (id,name, desctext, requirement,pvalue,shortvalue, techdesc, imgpath, customer, contact, status, "deliverableId") VALUES (11,'空气污染指数预测','近年来空气污染问题引起社会各界极大关注，空气质量预测能让相关部门事先对空气污染情况有所了解，并提前采取相应措施。我们通过非线性模式来进行空气污染情况的预测。','提前获知空气污染程度有助于采取措施','能够随时掌握预测 KPI 并能模拟特定时间治理措施的影响，这将对空气污染治理产生巨大影响','','应用深度神经网络识别随时间和位置变化的非线性模式（时间空间分析）以进行未来空气质量预测；利用深度学习识别特征进而评估风险因素；同时应用高级组合模型模拟预测相应措施对空气污染的治理效果','img-case11.jpeg','无','BAM DAV-CN',0,1);
INSERT INTO projects (id,name, desctext, requirement,pvalue,shortvalue, techdesc, imgpath, customer, contact, status, "deliverableId") VALUES (12,'楼宇暖风系统节能','暖风系统的控制管理和使用方式对楼宇能耗有着重要的影响，我们可以通过数据学习暖风系统的运行模式，基于实时状态数据，优化暖风系统的控制策略和使用方式，达到节能的目的。','暖风系统耗能占到楼宇整体的50%以上','在保证使用需要(如房间舒适度, 室内温湿度等)的同时，更有效地使用能源并降低能耗。','耗能总量减少约10%','<ul><li>•通过机器学习模型对冷量需求和相关能耗进行预测</li><li>•通过使用动态优化及强化学习等算法找到最优的控制策略，如温度设定，冷机群控等</li></ul>','img-case12.jpeg','无','BAM DAV-CN',99,1);
INSERT INTO projects (id,name, desctext, requirement,pvalue,shortvalue, techdesc, imgpath, customer, contact, status, "deliverableId") VALUES (13,'变频器调试流程体验设计','该项目旨在提升西门子家族变频器软件调试流程，通过基于界面的调试流程，帮助工程师更简单直观快速的完成变频器部署后的软件调试工作','当前西门子变频器调试流程缺少清晰直观的调试流程指导，尤其对于新手用户难以从繁杂的参数列表中找出符合实际应用需要的调试参数，在传统调试流程中，用户需同时使用调试手册查询必要参数','<ul><li>•通过向导似的调试流程指引，引导用户完整调试步骤</li><li>•通过基于宏选项的选项帮助用户减少不必要的参数选择，降低学习成本</li><li>•通过视觉化的调试表达方式，帮助用户简单直观的类比变频器物理实际硬件和数字调试选项的关系</li></ul>','显著提升调试效率','<ul><li>•通过实地观察用户现有调试流程了解用户调试过程中的问题和需求</li><li>•了解竞品变频器调试步骤和方法，对比优缺点</li><li>•根据西门子现有调试架构定义和参数关系，根据对用户实际的调试场景和流程的理解，重新定义调试参数分组情况和步骤顺序</li><li>•完成调试流程界面设计</li><li>•对设计概念进行可用性验证评估</li></ul>','img-case13.png','无','SSI UxD-CN',99,1);
INSERT INTO projects (id,name, desctext, requirement,pvalue,shortvalue, techdesc, imgpath, customer, contact, status, "deliverableId") VALUES (14,'设计思维工作坊','设计思维工作坊旨在通过设计思维的方法论，基于一定的主题，以开放讨论的氛围帮助客户补足项目上下文，定义项目挑战，明确项目需求，发散解决方案等一系列开放式的理解讨论的创新迭代过程','<ul><li>•客户不清楚现状及问题所在</li><li>•客户难以明确项目的重点及范围</li><li>•针对明确需求，客户缺少匹配创新的解决方案</li></ul>','<ul><li>•以用户为中心的视角重新审视项目挑战，明确用户需求，帮助客户突破思维定式，发散创新的解决方案；</li><li>•通过跨行业的参与者的交流，激发更多相关话题的产生。通过工作坊明确后续项目目标，确定项目范围和流程，以及最终交付物形态。</li></ul>','抽丝剥茧，明确需求','<ul><li>•了解项目背景：通过分析市场趋势，相关者生态关系，竞品分析来帮助定义项目目标及挑战</li><li>•定义问题：通过访谈，观察等一系列定性方法收集用户痛点，需求，通过讲故事的方式还原场景，通过集体讨论发现洞察，定义机会方向</li><li>•发散方案：通过头脑风暴的方式突破定势，发散创新解决方案</li><li>•制作原型：根据项目目的选择最有价值的概念方案快速制作出原型，表达概念</li><li>•快速验证：通过访谈和可用性测试等方法验证产品概念及价值</li></ul>','img-case14.png','无','SSI UxD-CN',99,1);

INSERT INTO project_technology ("projectId","technologyId") VALUES (1, 3);
INSERT INTO project_technology ("projectId","technologyId") VALUES (1, 5);
INSERT INTO project_technology ("projectId","technologyId") VALUES (2, 4);
INSERT INTO project_technology ("projectId","technologyId") VALUES (3, 2);
INSERT INTO project_technology ("projectId","technologyId") VALUES (4, 6);
INSERT INTO project_technology ("projectId","technologyId") VALUES (5, 7);
INSERT INTO project_technology ("projectId","technologyId") VALUES (6, 5);
INSERT INTO project_technology ("projectId","technologyId") VALUES (7, 3);
INSERT INTO project_technology ("projectId","technologyId") VALUES (8, 3);
INSERT INTO project_technology ("projectId","technologyId") VALUES (8, 1);
INSERT INTO project_technology ("projectId","technologyId") VALUES (9, 2);
INSERT INTO project_technology ("projectId","technologyId") VALUES (10, 9);
INSERT INTO project_technology ("projectId","technologyId") VALUES (11, 8);
INSERT INTO project_technology ("projectId","technologyId") VALUES (12, 2);
INSERT INTO project_technology ("projectId","technologyId") VALUES (13, 10);
INSERT INTO project_technology ("projectId","technologyId") VALUES (14, 11);

INSERT INTO project_industry ("projectId", "industryId") VALUES (1,1);
INSERT INTO project_industry ("projectId", "industryId") VALUES (2,2);
INSERT INTO project_industry ("projectId", "industryId") VALUES (3,1);
INSERT INTO project_industry ("projectId", "industryId") VALUES (3,9);
INSERT INTO project_industry ("projectId", "industryId") VALUES (4,1);
INSERT INTO project_industry ("projectId", "industryId") VALUES (4,3);
INSERT INTO project_industry ("projectId", "industryId") VALUES (5,3);
INSERT INTO project_industry ("projectId", "industryId") VALUES (6,5);
INSERT INTO project_industry ("projectId", "industryId") VALUES (7,4);
INSERT INTO project_industry ("projectId", "industryId") VALUES (8,1);
INSERT INTO project_industry ("projectId", "industryId") VALUES (9,6);
INSERT INTO project_industry ("projectId", "industryId") VALUES (9,9);
INSERT INTO project_industry ("projectId", "industryId") VALUES (10,10);
INSERT INTO project_industry ("projectId", "industryId") VALUES (11,7);
INSERT INTO project_industry ("projectId", "industryId") VALUES (12,8);

INSERT INTO users (id, fullname, accountname, pwd, status) VALUES (1, 'testuser','testuser', 'testpwd', 1);


INSERT INTO bookmarkfolders (id, "name", folderdesc, "userId") VALUES (1, 'folder name 1', 'folder desc 1', 1);
INSERT INTO project_bookmarkfolder ("projectId", "bookmarkfolderId") VALUES (1,1);

