create table ALL_AREA
(
  ID            INTEGER not null,
  PROVINCE_NAME VARCHAR(30),
  CODE          VARCHAR(30),
  NAME          VARCHAR(30),
  PINYIN        VARCHAR(50),
  SIMPLE_CODE   VARCHAR(30)
)
;
alter table ALL_AREA
  add constraint PK_ALL_AREA primary key (ID);

create table PROVINCE
(
  ID          INT not null,
  CODE        VARCHAR(10) not null,
  NAME        VARCHAR(30) not null,
  PINYIN      VARCHAR(50),
  SIMPLE_CODE VARCHAR(30)
)
;
alter table PROVINCE
  add constraint PK_PROVINCE primary key (ID);
alter table PROVINCE
  add constraint UK_PROVINCE unique (CODE);

create table CITY
(
  ID            INT not null,
  CODE          VARCHAR(10) not null,
  NAME          VARCHAR(30) not null,
  PROVINCE_CODE VARCHAR(10) not null,
  PINYIN        VARCHAR(50),
  SIMPLE_CODE   VARCHAR(30)
)
;
alter table CITY
  add constraint PK_CITY primary key (ID);
alter table CITY
  add constraint UK_CITY unique (CODE);
alter table CITY
  add constraint FK_CITY_PROVINCE foreign key (PROVINCE_CODE)
  references PROVINCE (CODE);

create table AREA
(
  ID          INT not null,
  CODE        VARCHAR(10) not null,
  NAME        VARCHAR(30) not null,
  CITY_CODE   VARCHAR(10) not null,
  PINYIN      VARCHAR(50),
  SIMPLE_CODE VARCHAR(30)
)
;
alter table AREA
  add constraint PK_AREA primary key (ID);
alter table AREA
  add constraint UK_AREA unique (CODE);
alter table AREA
  add constraint FK_AREA_CITY foreign key (CITY_CODE)
  references CITY (CODE);

insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1, '北京市', '110000', '北京市', 'Beijing Shi', 'BJ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2, '北京市', '110100', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3, '北京市', '110101', '东城区', 'Dongcheng Qu', 'DCQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (4, '北京市', '110102', '西城区', 'Xicheng Qu', 'XCQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (5, '北京市', '110103', '崇文区', 'Chongwen Qu', 'CWQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (6, '北京市', '110104', '宣武区', 'Xuanwu Qu', 'XWQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (7, '北京市', '110105', '朝阳区', 'Chaoyang Qu', 'CYQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (8, '北京市', '110106', '丰台区', 'Fengtai Qu', 'FTQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (9, '北京市', '110107', '石景山区', 'Shijingshan Qu', 'SJS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (10, '北京市', '110108', '海淀区', 'Haidian Qu', 'HDN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (11, '北京市', '110109', '门头沟区', 'Mentougou Qu', 'MTG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (12, '北京市', '110111', '房山区', 'Fangshan Qu', 'FSQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (13, '北京市', '110112', '通州区', 'Tongzhou Qu', 'TZQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (14, '北京市', '110113', '顺义区', 'Shunyi Qu', 'SYI');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (15, '北京市', '110200', '县', 'Xian', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (16, '北京市', '110114', '昌平区', 'Changping Qu', 'CP Q');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (17, '北京市', '110115', '大兴区', 'Daxing Qu', 'DX Q');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (18, '北京市', '110117', '平谷区', 'Pinggu Qu', 'PG Q');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (19, '北京市', '110116', '怀柔区', 'Huairou Qu', 'HR Q');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (20, '北京市', '110228', '密云县', 'Miyun Xian ', 'MYN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (21, '北京市', '110229', '延庆县', 'Yanqing Xian', 'YQX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (22, '天津市', '120000', '天津市', 'Tianjin Shi', 'TJ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (23, '天津市', '120100', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (24, '天津市', '120101', '和平区', 'Heping Qu', 'HPG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (25, '天津市', '120102', '河东区', 'Hedong Qu', 'HDQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (26, '天津市', '120103', '河西区', 'Hexi Qu', 'HXQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (27, '天津市', '120104', '南开区', 'Nankai Qu', 'NKQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (28, '天津市', '120105', '河北区', 'Hebei Qu', 'HBQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (29, '天津市', '120106', '红桥区', 'Hongqiao Qu', 'HQO');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (30, '天津市', '120107', '塘沽区', 'Tanggu Qu', 'TGA');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (31, '天津市', '120108', '汉沽区', 'Hangu Qu', 'HGQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (32, '天津市', '120109', '大港区', 'Dagang Qu', 'DGJ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (33, '天津市', '120110', '东丽区', 'Dongli Qu', 'DLI');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (34, '天津市', '120111', '西青区', 'Xiqing Qu', 'XQG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (35, '天津市', '120112', '津南区', 'Jinnan Qu', 'JNQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (36, '天津市', '120113', '北辰区', 'Beichen Qu', 'BCQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (37, '天津市', '120200', '县', 'Xian', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (38, '天津市', '120221', '宁河县', 'Ninghe Xian', 'NHE');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (39, '天津市', '120114', '武清区', 'Wuqing Qu', 'WQ Q');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (40, '天津市', '120223', '静海县', 'Jinghai Xian', 'JHT');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (41, '天津市', '120115', '宝坻区', 'Baodi Qu', 'BDI');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (42, '天津市', '120225', '蓟县', 'Ji Xian', 'JIT');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (43, '河北省', '130000', '河北省', 'Hebei Sheng', 'HE');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (44, '河北省', '130100', '石家庄市', 'Shijiazhuang Shi', 'SJW');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (45, '河北省', '130101', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (46, '河北省', '130102', '长安区', 'Chang,an Qu', 'CAQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (47, '河北省', '130103', '桥东区', 'Qiaodong Qu', 'QDQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (48, '河北省', '130104', '桥西区', 'Qiaoxi Qu', 'QXQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (49, '河北省', '130105', '新华区', 'Xinhua Qu', 'XHK');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (50, '河北省', '130106', '郊区', 'Jiaoqu', 'JQS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (51, '河北省', '130107', '井陉矿区', 'Jingxing Kuangqu', 'JXK');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (52, '河北省', '130121', '井陉县', 'Jingxing Xian', 'JXJ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (53, '河北省', '130123', '正定县', 'Zhengding Xian', 'ZDJ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (54, '河北省', '130124', '栾城县', 'Luancheng Xian', 'LCG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (55, '河北省', '130125', '行唐县', 'Xingtang Xian', 'XTG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (56, '河北省', '130126', '灵寿县', 'Lingshou Xian ', 'LSO');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (57, '河北省', '130127', '高邑县', 'Gaoyi Xian', 'GYJ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (58, '河北省', '130128', '沈泽县', 'Shenze Xian', 'SZE');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (59, '河北省', '130129', '赞皇县', 'Zanhuang Xian', 'ZHG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (60, '河北省', '130130', '无极县', 'Wuji Xian', 'WJI');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (61, '河北省', '130131', '平山县', 'Pingshan Xian', 'PSH');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (62, '河北省', '130132', '元氏县', 'Yuanshi Xian', 'YSI');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (63, '河北省', '130133', '赵县', 'Zhao Xian', 'ZAO');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (64, '河北省', '130181', '辛集市', 'Xinji Shi', 'XJS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (65, '河北省', '130182', '藁城市', 'Gaocheng Shi', 'GCS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (66, '河北省', '130183', '晋州市', 'Jinzhou Shi', 'JZJ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (67, '河北省', '130184', '新乐市', 'Xinle Shi', 'XLE');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (68, '河北省', '130185', '鹿泉市', 'Luquan Shi', 'LUQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (69, '河北省', '130200', '唐山市', 'Tangshan Shi', 'TGS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (70, '河北省', '130201', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (71, '河北省', '130202', '路南区', 'Lunan Qu', 'LNB');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (72, '河北省', '130203', '路北区', 'Lubei Qu', 'LBQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (73, '河北省', '130204', '古冶区', 'Guye Qu', 'GYE');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (74, '河北省', '130205', '开平区', 'Kaiping Qu', 'KPQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (75, '河北省', '130206', '新区', 'Xin Qu', 'XNQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (76, '河北省', '130221', '丰润县', 'Fengrun Xian', 'FRN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (77, '河北省', '130223', '滦县', 'Luan Xian', 'LUA');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (78, '河北省', '130224', '滦南县', 'Luannan Xian', 'LNJ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (79, '河北省', '130225', '乐亭县', 'Leting Xian', 'LTJ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (80, '河北省', '130227', '迁西县', 'Qianxi Xian', 'QXX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (81, '河北省', '130229', '玉田县', 'Yutian Xian', 'YTJ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (82, '河北省', '130230', '唐海县', 'Tanghai Xian ', 'THA');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (83, '河北省', '130281', '遵化市', 'Zunhua Shi', 'ZNH');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (84, '河北省', '130282', '丰南市', 'Fengnan Shi', 'FNN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (85, '河北省', '130283', '迁安市', 'Qian,an Shi', 'QAS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (86, '河北省', '130300', '秦皇岛市', 'Qinhuangdao Shi', 'SHP');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (87, '河北省', '130301', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (88, '河北省', '130302', '海港区', 'Haigang Qu', 'HGG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (89, '河北省', '130303', '山海关区', 'Shanhaiguan Qu', 'SHG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (90, '河北省', '130304', '北戴河区', 'Beidaihe Qu', 'BDH');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (91, '河北省', '130321', '青龙满族自治县', 'Qinglong Manzu Zizhixian', 'QLM');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (92, '河北省', '130322', '昌黎县', 'Changli Xian', 'CGL');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (93, '河北省', '130323', '抚宁县', 'Funing Xian ', 'FUN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (94, '河北省', '130324', '卢龙县', 'Lulong Xian', 'LLG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (95, '河北省', '130400', '邯郸市', 'Handan Shi', 'HDS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (96, '河北省', '130401', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (97, '河北省', '130402', '邯山区', 'Hanshan Qu', 'HHD');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (98, '河北省', '130403', '丛台区', 'Congtai Qu', 'CTQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (99, '河北省', '130404', '复兴区', 'Fuxing Qu', 'FXQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (100, '河北省', '130406', '峰峰矿区', 'Fengfeng Kuangqu', 'FFK');
commit;
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (101, '河北省', '130421', '邯郸县', 'Handan Xian ', 'HDX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (102, '河北省', '130423', '临漳县', 'Linzhang Xian ', 'LNZ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (103, '河北省', '130424', '成安县', 'Cheng,an Xian', 'CAJ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (104, '河北省', '130425', '大名县', 'Daming Xian', 'DMX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (105, '河北省', '130426', '涉县', 'She Xian', 'SEJ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (106, '河北省', '130427', '磁县', 'Ci Xian', 'CIX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (107, '河北省', '130428', '肥乡县', 'Feixiang Xian', 'FXJ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (108, '河北省', '130429', '永年县', 'Yongnian Xian', 'YON');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (109, '河北省', '130430', '邱县', 'Qiu Xian', 'QIU');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (110, '河北省', '130431', '鸡泽县', 'Jize Xian', 'JZE');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (111, '河北省', '130432', '广平县', 'Guangping Xian ', 'GPX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (112, '河北省', '130433', '馆陶县', 'Guantao Xian', 'GTO');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (113, '河北省', '130434', '魏县', 'Wei Xian ', 'WEI');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (114, '河北省', '130435', '曲周县', 'Quzhou Xian ', 'QZX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (115, '河北省', '130481', '武安市', 'Wu,an Shi', 'WUA');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (116, '河北省', '130500', '邢台市', 'Xingtai Shi', 'XTS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (117, '河北省', '130501', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (118, '河北省', '130502', '桥东区', 'Qiaodong Qu', 'QDG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (119, '河北省', '130503', '桥西区', 'Qiaoxi Qu', 'QXT');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (120, '河北省', '130521', '邢台县', 'Xingtai Xian', 'XTJ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (121, '河北省', '130522', '临城县', 'Lincheng Xian ', 'LNC');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (122, '河北省', '130523', '内丘县', 'Neiqiu Xian ', 'NQU');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (123, '河北省', '130524', '柏乡县', 'Baixiang Xian', 'BXG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (124, '河北省', '130525', '隆尧县', 'Longyao Xian', 'LYO');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (125, '河北省', '130526', '任县', 'Ren Xian', 'REN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (126, '河北省', '130527', '南和县', 'Nanhe Xian', 'NHX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (127, '河北省', '130528', '宁晋县', 'Ningjin Xian', 'NJN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (128, '河北省', '130529', '巨鹿县', 'Julu Xian', 'JLU');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (129, '河北省', '130530', '新河县', 'Xinhe Xian ', 'XHJ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (130, '河北省', '130531', '广宗县', 'Guangzong Xian ', 'GZJ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (131, '河北省', '130532', '平乡县', 'Pingxiang Xian', 'PXX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (132, '河北省', '130533', '威县', 'Wei Xian ', 'WEX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (133, '河北省', '130534', '清河县', 'Qinghe Xian', 'QHE');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (134, '河北省', '130535', '临西县', 'Linxi Xian', 'LXI');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (135, '河北省', '130581', '南宫市', 'Nangong Shi', 'NGO');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (136, '河北省', '130582', '沙河市', 'Shahe Shi', 'SHS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (137, '河北省', '130600', '保定市', 'Baoding Shi', 'BDS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (138, '河北省', '130601', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (139, '河北省', '130602', '新市区', 'Xinshi Qu', 'XBD');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (140, '河北省', '130603', '北市区', 'Beishi Qu', 'BSI');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (141, '河北省', '130604', '南市区', 'Nanshi Qu', 'NSB');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (142, '河北省', '130621', '满城县', 'Mancheng Xian ', 'MCE');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (143, '河北省', '130622', '清苑县', 'Qingyuan Xian', 'QYJ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (144, '河北省', '130623', '涞水县', 'Laishui Xian', 'LSM');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (145, '河北省', '130624', '阜平县', 'Fuping Xian ', 'FUP');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (146, '河北省', '130625', '徐水县', 'Xushui Xian ', 'XSJ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (147, '河北省', '130626', '定兴县', 'Dingxing Xian ', 'DXG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (148, '河北省', '130627', '唐县', 'Tang Xian ', 'TAG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (149, '河北省', '130628', '高阳县', 'Gaoyang Xian ', 'GAY');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (150, '河北省', '130629', '容城县', 'Rongcheng Xian ', 'RCX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (151, '河北省', '130630', '涞源县', 'Laiyuan Xian ', 'LIY');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (152, '河北省', '130631', '望都县', 'Wangdu Xian ', 'WDU');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (153, '河北省', '130632', '安新县', 'Anxin Xian ', 'AXX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (154, '河北省', '130633', '易县', 'Yi Xian', 'YII');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (155, '河北省', '130634', '曲阳县', 'Quyang Xian ', 'QUY');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (156, '河北省', '130635', '蠡县', 'Li Xian', 'LXJ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (157, '河北省', '130636', '顺平县', 'Shunping Xian ', 'SPI');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (158, '河北省', '130637', '博野县', 'Boye Xian ', 'BYE');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (159, '河北省', '130638', '雄县', 'Xiong Xian', 'XOX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (160, '河北省', '130681', '涿州市', 'Zhuozhou Shi', 'ZZO');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (161, '河北省', '130682', '定州市', 'Dingzhou Shi ', 'DZO');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (162, '河北省', '130683', '安国市', 'Anguo Shi ', 'AGO');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (163, '河北省', '130684', '高碑店市', 'Gaobeidian Shi', 'GBD');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (164, '河北省', '130700', '张家口市', 'Zhangjiakou Shi ', 'ZJK');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (165, '河北省', '130701', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (166, '河北省', '130702', '桥东区', 'Qiaodong Qu', 'QDZ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (167, '河北省', '130703', '桥西区', 'Qiaoxi Qu', 'QXI');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (168, '河北省', '130705', '宣化区', 'Xuanhua Qu', 'XHZ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (169, '河北省', '130706', '下花园区', 'Xiahuayuan Qu ', 'XHY');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (170, '河北省', '130721', '宣化县', 'Xuanhua Xian ', 'XHX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (171, '河北省', '130722', '张北县', 'Zhangbei Xian ', 'ZGB');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (172, '河北省', '130723', '康保县', 'Kangbao Xian', 'KBO');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (173, '河北省', '130724', '沽原县', 'Guyuan Xian', 'GUY');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (174, '河北省', '130725', '尚义县', 'Shangyi Xian', 'SYK');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (175, '河北省', '130726', '蔚县', 'Yu Xian', 'YXJ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (176, '河北省', '130727', '阳原县', 'Yangyuan Xian', 'YYN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (177, '河北省', '130728', '怀安县', 'Huai,an Xian', 'HAX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (178, '河北省', '130729', '万全县', 'Wanquan Xian ', 'WQN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (179, '河北省', '130730', '怀来县', 'Huailai Xian', 'HLA');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (180, '河北省', '130731', '涿鹿县', 'Zhuolu Xian ', 'ZLU');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (181, '河北省', '130732', '赤城县', 'Chicheng Xian', 'CCX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (182, '河北省', '130733', '崇礼县', 'Chongli Xian', 'COL');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (183, '河北省', '130800', '承德市', 'Chengde Shi', 'CDS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (184, '河北省', '130801', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (185, '河北省', '130802', '双桥区', 'Shuangqiao Qu ', 'SQO');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (186, '河北省', '130803', '双滦区', 'Shuangluan Qu', 'SLQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (187, '河北省', '130804', '鹰手营子矿区', 'Yingshouyingzi Kuangqu', 'YSY');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (188, '河北省', '130821', '承德县', 'Chengde Xian', 'CDX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (189, '河北省', '130822', '兴隆县', 'Xinglong Xian', 'XLJ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (190, '河北省', '130823', '平泉县', 'Pingquan Xian', 'PQN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (191, '河北省', '130824', '滦平县', 'Luanping Xian ', 'LUP');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (192, '河北省', '130825', '隆化县', 'Longhua Xian', 'LHJ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (193, '河北省', '130826', '丰宁满族自治县', 'Fengning Manzu Zizhixian', 'FNJ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (194, '河北省', '130827', '宽城满族自治县', 'Kuancheng Manzu Zizhixian', 'KCX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (643, '吉林省', '220282', '桦甸市', 'Huadian Shi', 'HDJ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (644, '吉林省', '220283', '舒兰市', 'Shulan Shi', 'SLN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (645, '吉林省', '220284', '磐石市', 'Panshi Shi', 'PSI');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (646, '吉林省', '220300', '四平市', 'Siping Shi', 'SPS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (647, '吉林省', '220301', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (648, '吉林省', '220302', '铁西区', 'Tiexi Qu', 'TXS');
commit;
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (649, '吉林省', '220303', '铁东区', 'Tiedong Qu ', 'TDQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (650, '吉林省', '220322', '梨树县', 'Lishu Xian', 'LSU');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (651, '吉林省', '220323', '伊通满族自治县', 'Yitong Manzu Zizhixian', 'YTO');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (652, '吉林省', '220381', '公主岭市', 'Gongzhuling Shi', 'GZL');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (653, '吉林省', '220382', '双辽市', 'Shuangliao Shi', 'SLS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (654, '吉林省', '220400', '辽源市', 'Liaoyuan Shi', 'LYH');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (655, '吉林省', '220401', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (656, '吉林省', '220402', '龙山区', 'Longshan Qu', 'LGS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (657, '吉林省', '220403', '西安区', 'Xi,an Qu', 'XAA');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (658, '吉林省', '220421', '东丰县', 'Dongfeng Xian', 'DGF');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (659, '吉林省', '220422', '东辽县', 'Dongliao Xian ', 'DLX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (660, '吉林省', '220500', '通化市', 'Tonghua Shi', 'THS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (661, '吉林省', '220501', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (662, '吉林省', '220502', '东昌区', 'Dongchang Qu', 'DCT');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (663, '吉林省', '220503', '二道江区', 'Erdaojiang Qu', 'EDJ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (664, '吉林省', '220521', '通化县', 'Tonghua Xian ', 'THX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (665, '吉林省', '220523', '辉南县', 'Huinan Xian ', 'HNA');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (666, '吉林省', '220524', '柳河县', 'Liuhe Xian ', 'LHC');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (667, '吉林省', '220581', '梅河口市', 'Meihekou Shi', 'MHK');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (668, '吉林省', '220582', '集安市', 'Ji,an Shi', 'KNC');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (669, '吉林省', '220600', '白山市', 'Baishan Shi', 'BSN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (670, '吉林省', '220601', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (671, '吉林省', '220602', '八道江区', 'Badaojiang Qu', 'BDJ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (672, '吉林省', '220621', '抚松县', 'Fusong Xian', 'FSG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (673, '吉林省', '220622', '靖宇县', 'Jingyu Xian', 'JYJ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (674, '吉林省', '220623', '长白朝县族自治县', 'Changbai Chosenzu Zizhixian', 'CGB');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (675, '吉林省', '220625', '江源县', 'Jiangyuan Xian', 'JYT');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (676, '吉林省', '220681', '临江市', 'Linjiang Shi', 'LIN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (677, '吉林省', '220700', '松原市', 'Songyuan Shi', 'SYU');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (678, '吉林省', '220701', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (679, '吉林省', '220702', '宁江区', 'Ningjiang Qu', 'NJA');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (680, '吉林省', '220721', '前郭尔罗斯蒙古族自治县', 'Qian Gorlos Mongolzu Zizhixian', 'QGO');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (681, '吉林省', '220722', '长岭县', 'Changling Xian', 'CLG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (682, '吉林省', '220723', '乾安县', 'Qian,an Xian', 'QAJ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (683, '吉林省', '220724', '扶余县', 'Fuyu Xian', 'FYU');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (684, '吉林省', '220800', '白城市', 'Baicheng Shi', 'BCS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (685, '吉林省', '220801', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (686, '吉林省', '220802', '洮北区', 'Taobei Qu', 'TBQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (687, '吉林省', '220821', '镇赉县', 'Zhenlai Xian', 'ZLA');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (688, '吉林省', '220822', '通榆县', 'Tongyu Xian', 'TGY');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (689, '吉林省', '220881', '洮南市', 'Taonan Shi', 'TNS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (690, '吉林省', '220882', '大安市', 'Da,an Shi', 'DNA');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (691, '吉林省', '222400', '延边朝鲜族自治州', 'Yanbian Chosenzu Zizhizhou', 'YBZ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (692, '吉林省', '222401', '延吉市', 'Yanji Shi', 'YNJ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (693, '吉林省', '222402', '图们市', 'Tumen Shi', 'TME');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (694, '吉林省', '222403', '敦化市', 'Dunhua Shi', 'DHS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (695, '吉林省', '222404', '珲春市', 'Hunchun Shi', 'HUC');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (696, '吉林省', '222405', '龙井市', 'Longjing Shi', 'LJJ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (697, '吉林省', '222406', '和龙市', 'Helong Shi', 'HEL');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (698, '吉林省', '222424', '汪清县', 'Wangqing Xian', 'WGQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (699, '吉林省', '222426', '安图县', 'Antu Xian', 'ATU');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (700, '黑龙江省', '230000', '黑龙江省', 'Heilongjiang Sheng', 'HL');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (701, '黑龙江省', '230100', '哈尔滨市', 'Harbin Shi', 'HRB');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (702, '黑龙江省', '230101', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (703, '黑龙江省', '230102', '道里区', 'Daoli Qu', 'DLH');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (704, '黑龙江省', '230103', '南岗区', 'Nangang Qu', 'NGQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (705, '黑龙江省', '230104', '道外区', 'Daowai Qu', 'DWQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (706, '黑龙江省', '230105', '太平区', 'Taiping Qu', 'TPQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (707, '黑龙江省', '230106', '香坊区', 'Xiangfang Qu', 'XFQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (708, '黑龙江省', '230107', '动力区', 'Dongli Qu', 'DGL');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (709, '黑龙江省', '230108', '平房区', 'Pingfang Qu', 'PFQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (710, '黑龙江省', '230121', '呼兰县', 'Hulan Xian', 'HLH');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (711, '黑龙江省', '230123', '依兰县', 'Yilan Xian', 'YLH');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (712, '黑龙江省', '230124', '方正县', 'Fangzheng Xian', 'FZH');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (713, '黑龙江省', '230125', '宾县', 'Bin Xian', 'BNX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (714, '黑龙江省', '230126', '巴彦县', 'Bayan Xian', 'BYH');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (715, '黑龙江省', '230127', '木兰县', 'Mulan Xian ', 'MUL');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (716, '黑龙江省', '230128', '通河县', 'Tonghe Xian', 'TOH');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (717, '黑龙江省', '230129', '延寿县', 'Yanshou Xian', 'YSU');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (718, '黑龙江省', '230181', '阿城市', 'Acheng Shi', 'ACG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (719, '黑龙江省', '230182', '双城市', 'Shuangcheng Shi', 'SCS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (720, '黑龙江省', '230183', '尚志市', 'Shangzhi Shi', 'SZI');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (721, '黑龙江省', '230184', '五常市', 'Wuchang Shi', 'WCA');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (722, '黑龙江省', '230200', '齐齐哈尔市', 'Qiqihar Shi', 'NDG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (723, '黑龙江省', '230201', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (724, '黑龙江省', '230202', '龙沙区', 'Longsha Qu', 'LQQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (725, '黑龙江省', '230203', '建华区', 'Jianhua Qu', 'JHQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (726, '黑龙江省', '230204', '铁峰区', 'Tiefeng Qu', 'TFQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (727, '黑龙江省', '230205', '昂昂溪区', 'Ang,angxi Qu', 'AAX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (728, '黑龙江省', '230206', '富拉尔基区', 'Hulan Ergi Qu', 'HUE');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (729, '黑龙江省', '230207', '碾子山区', 'Nianzishan Qu', 'NZS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (730, '黑龙江省', '230208', '梅里斯达斡尔族', 'Meilisi Daurzu Qu', 'MLS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (731, '黑龙江省', '230221', '龙江县', 'Longjiang Xian', 'LGJ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (732, '黑龙江省', '230223', '依安县', 'Yi,an Xian', 'YAN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (733, '黑龙江省', '230224', '泰来县', 'Tailai Xian', 'TLA');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (734, '黑龙江省', '230225', '甘南县', 'Gannan Xian', 'GNX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (735, '黑龙江省', '230227', '富裕县', 'Fuyu Xian', 'FYX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (736, '黑龙江省', '230229', '克山县', 'Keshan Xian', 'KSN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (737, '黑龙江省', '230230', '克东县', 'Kedong Xian', 'KDO');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (738, '黑龙江省', '230231', '拜泉县', 'Baiquan Xian', 'BQN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (739, '黑龙江省', '230281', '讷河市', 'Nehe Shi', 'NEH');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (740, '黑龙江省', '230300', '鸡西市', 'Jixi Shi', 'JXI');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (741, '黑龙江省', '230301', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (742, '黑龙江省', '230302', '鸡冠区', 'Jiguan Qu', 'JGU');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (743, '黑龙江省', '230303', '恒山区', 'Hengshan Qu', 'HSD');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (744, '黑龙江省', '230304', '滴道区', 'Didao Qu', 'DDO');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (745, '黑龙江省', '230305', '梨树区', 'Lishu Qu', 'LJX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (746, '黑龙江省', '230306', '城子河区', 'Chengzihe Qu', 'CZH');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (747, '黑龙江省', '230307', '麻山区', 'Mashan Qu', 'MSN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (748, '黑龙江省', '230321', '鸡东县', 'Jidong Xian', 'JID');
commit;
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (749, '黑龙江省', '230381', '虎林市', 'Hulin Shi', 'HUL');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (750, '黑龙江省', '230382', '密山市', 'Mishan Shi', 'MIS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (751, '黑龙江省', '230400', '鹤岗市', 'Hegang Shi', 'HEG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (752, '黑龙江省', '230401', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (753, '黑龙江省', '230402', '向阳区', 'Xiangyang  Qu ', 'XYZ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (754, '黑龙江省', '230403', '工农区', 'Gongnong Qu', 'GNH');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (755, '黑龙江省', '230404', '南山区', 'Nanshan Qu', 'NSQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (756, '黑龙江省', '230405', '兴安区', 'Xing,an Qu', 'XAH');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (757, '黑龙江省', '230406', '东山区', 'Dongshan Qu', 'DSA');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (758, '黑龙江省', '230407', '兴山区', 'Xingshan Qu', 'XSQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (759, '黑龙江省', '230421', '萝北县', 'Luobei Xian', 'LUB');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (760, '黑龙江省', '230422', '绥宾县', 'Suibin Xian', 'SBN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (761, '黑龙江省', '230500', '双鸭山市', 'Shuangyashan Shi', 'SYS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (195, '河北省', '130828', '围场满族蒙古族自治县', 'Weichang Manzu Menggolzu Zizhixian', 'WCJ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (196, '河北省', '130900', '沧州市', 'Cangzhou Shi', 'CGZ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (197, '河北省', '130901', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (198, '河北省', '130902', '新华区', 'Xinhua Qu', 'XHF');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (199, '河北省', '130903', '运河区', 'Yunhe Qu', 'YHC');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (200, '河北省', '130921', '沧县', 'Cang Xian', 'CAG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (201, '河北省', '130922', '青县', 'Qing Xian', 'QIG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (202, '河北省', '130923', '东光县', 'Dongguang Xian ', 'DGU');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (203, '河北省', '130924', '海兴县', 'Haixing Xian', 'HXG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (204, '河北省', '130925', '盐山县', 'Yanshan Xian', 'YNS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (205, '河北省', '130926', '肃宁县', 'Suning Xian ', 'SNG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (206, '河北省', '130927', '南皮县', 'Nanpi Xian', 'NPI');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (207, '河北省', '130928', '吴桥县', 'Wuqiao Xian ', 'WUQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (208, '河北省', '130929', '献县', 'Xian Xian ', 'XXN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (209, '河北省', '130930', '孟村回族自治县', 'Mengcun Huizu Zizhixian', 'MCN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (210, '河北省', '130981', '泊头市', 'Botou Shi ', 'BOT');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (211, '河北省', '130982', '任丘市', 'Renqiu Shi', 'RQS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (212, '河北省', '130983', '黄骅市', 'Huanghua Shi', 'HHJ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (213, '河北省', '130984', '河间市', 'Hejian Shi', 'HJN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (214, '河北省', '131000', '廊坊市', 'Langfang Shi', 'LFS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (215, '河北省', '131001', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (216, '河北省', '131002', '安次区', 'Anci Qu', 'ACI');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (217, '河北省', '131022', '固安县', 'Gu,an Xian', 'GUA');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (218, '河北省', '131023', '永清县', 'Yongqing Xian ', 'YQG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (219, '河北省', '131024', '香河县', 'Xianghe Xian', 'XGH');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (220, '河北省', '131025', '大城县', 'Dacheng Xian', 'DCJ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (221, '河北省', '131026', '文安县', 'Wen,an Xian', 'WEA');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (222, '河北省', '131028', '大厂回族自治县', 'Dachang Huizu Zizhixian', 'DCG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (223, '河北省', '131081', '霸州市', 'Bazhou Shi', 'BZO');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (224, '河北省', '131082', '三河市', 'Sanhe Shi', 'SNH');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (225, '河北省', '131100', '衡水市', 'Hengshui Shi ', 'HGS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (226, '河北省', '131101', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (227, '河北省', '131102', '桃城区', 'Taocheng Qu', 'TOC');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (228, '河北省', '131121', '枣强县', 'Zaoqiang Xian ', 'ZQJ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (229, '河北省', '131122', '武邑县', 'Wuyi Xian', 'WYI');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (230, '河北省', '131123', '武强县', 'Wuqiang Xian ', 'WQG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (231, '河北省', '131124', '饶阳县', 'Raoyang Xian', 'RYG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (232, '河北省', '131125', '安平县', 'Anping Xian', 'APG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (233, '河北省', '131126', '故城县', 'Gucheng Xian', 'GCE');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (234, '河北省', '131127', '景县', 'Jing Xian ', 'JIG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (235, '河北省', '131128', '阜城县', 'Fucheng Xian ', 'FCE');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (236, '河北省', '131181', '冀州市', 'Jizhou Shi ', 'JIZ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (237, '河北省', '131182', '深州市', 'Shenzhou Shi', 'SNZ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (238, '山西省', '140000', '山西省', 'Shanxi Sheng ', 'SX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (239, '山西省', '140100', '太原市', 'Taiyuan Shi', 'TYN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (240, '山西省', '140101', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (241, '山西省', '140105', '小店区', 'Xiaodian Qu', 'XDQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (242, '山西省', '140106', '迎泽区', 'Yingze Qu', 'YZT');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (243, '山西省', '140107', '杏花岭区', 'Xinghualing Qu', 'XHL');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (244, '山西省', '140108', '尖草坪区', 'Jiancaoping Qu', 'JCP');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (245, '山西省', '140109', '万柏林区', 'Wanbailin Qu', 'WBL');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (246, '山西省', '140110', '晋源区', 'Jinyuan Qu', 'JYM');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (247, '山西省', '140121', '清徐县', 'Qingxu Xian ', 'QXU');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (248, '山西省', '140122', '阳曲县', 'Yangqu Xian ', 'YGQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (249, '山西省', '140123', '娄烦县', 'Loufan Xian', 'LFA');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (250, '山西省', '140181', '古交市', 'Gujiao Shi', 'GUJ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (251, '山西省', '140200', '大同市', 'Datong Shi ', 'DTG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (252, '山西省', '140201', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (253, '山西省', '140202', '城区', 'Chengqu', 'CQD');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (254, '山西省', '140203', '矿区', 'Kuangqu', 'KQD');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (255, '山西省', '140211', '南郊区', 'Nanjiao Qu', 'NJQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (256, '山西省', '140212', '新荣区', 'Xinrong Qu', 'XRQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (257, '山西省', '140221', '阳高县', 'Yanggao Xian ', 'YGO');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (258, '山西省', '140222', '天镇县', 'Tianzhen Xian ', 'TZE');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (259, '山西省', '140223', '广灵县', 'Guangling Xian ', 'GLJ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (260, '山西省', '140224', '灵丘县', 'Lingqiu Xian ', 'LQX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (261, '山西省', '140225', '浑源县', 'Hunyuan Xian', 'HYM');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (262, '山西省', '140226', '左云县', 'Zuoyun Xian', 'ZUY');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (263, '山西省', '140227', '大同县', 'Datong Xian ', 'DTX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (264, '山西省', '140300', '阳泉市', 'Yangquan Shi', 'YQS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (265, '山西省', '140301', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (266, '山西省', '140302', '城区', 'Chengqu', 'CQU');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (267, '山西省', '140303', '矿区', 'Kuangqu', 'KQY');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (268, '山西省', '140311', '郊区', 'Jiaoqu', 'JQY');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (269, '山西省', '140321', '平定县', 'Pingding Xian', 'PDG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (270, '山西省', '140322', '盂县', 'Yu Xian', 'YUX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (271, '山西省', '140400', '长治市', 'Changzhi Shi', 'CZS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (272, '山西省', '140401', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (273, '山西省', '140402', '城区', 'Chengqu ', 'CQC');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (274, '山西省', '140411', '郊区', 'Jiaoqu', 'JQZ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (275, '山西省', '140421', '长治县', 'Changzhi Xian', 'CZI');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (276, '山西省', '140423', '襄垣县', 'Xiangyuan Xian', 'XYJ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (277, '山西省', '140424', '屯留县', 'Tunliu Xian', 'TNL');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (278, '山西省', '140425', '平顺县', 'Pingshun Xian', 'PSX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (279, '山西省', '140426', '黎城县', 'Licheng Xian', 'LIC');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (280, '山西省', '140427', '壶关县', 'Huguan Xian', 'HGN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (281, '山西省', '140428', '长子县', 'Zhangzi Xian ', 'ZHZ');
commit;
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (282, '山西省', '140429', '武乡县', 'Wuxiang Xian', 'WXG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (283, '山西省', '140430', '沁县', 'Qin Xian', 'QIN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (284, '山西省', '140431', '沁源县', 'Qinyuan Xian ', 'QYU');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (285, '山西省', '140481', '潞城市', 'Lucheng Shi', 'LCS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (286, '山西省', '140500', '晋城市', 'Jincheng Shi ', 'JCG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (287, '山西省', '140501', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (288, '山西省', '140502', '城区', 'Chengqu ', 'CQJ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (289, '山西省', '140521', '沁水县', 'Qinshui Xian', 'QSI');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (290, '山西省', '140522', '阳城县', 'Yangcheng Xian ', 'YGC');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (291, '山西省', '140524', '陵川县', 'Lingchuan Xian', 'LGC');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (292, '山西省', '140525', '泽州县', 'Zezhou Xian', 'ZEZ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (293, '山西省', '140581', '高平市', 'Gaoping Shi ', 'GPG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (294, '山西省', '140600', '朔州市', 'Shuozhou Shi ', 'SZJ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (295, '山西省', '140601', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (296, '山西省', '140602', '朔城区', 'Shuocheng Qu', 'SCH');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (297, '山西省', '140603', '平鲁区', 'Pinglu Qu', 'PLU');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (298, '山西省', '140621', '山阴县', 'Shanyin Xian', 'SYP');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (299, '山西省', '140622', '应县', 'Ying Xian', 'YIG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (300, '山西省', '140623', '右玉县', 'Youyu Xian ', 'YOY');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (301, '山西省', '140624', '怀仁县', 'Huairen Xian', 'HRN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (302, '山西省', '142200', '忻州地区', 'Xinzhou Diqu', 'XZD');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (303, '山西省', '142201', '忻州市', 'Xinzhou Shi', 'XZS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (304, '山西省', '142202', '原平市', 'Yuanping Shi', 'YUP');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (305, '山西省', '142222', '定襄县', 'Dingxiang Xian', 'DXJ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (306, '山西省', '142223', '五台县', 'Wutai Xian', 'WTA');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (307, '山西省', '142225', '代县', 'Dai Xian', 'DAI');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (308, '山西省', '142226', '繁峙县', 'Fanshi Xian', 'FSI');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (309, '山西省', '142227', '宁武县', 'Ningwu Xian', 'NWU');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (310, '山西省', '142228', '静乐县', 'Jingle Xian', 'JGL');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (311, '山西省', '142229', '神池县', 'Shenchi Xian', 'SCI');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (312, '山西省', '142230', '五寨县', 'Wuzhai Xian', 'WZH');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (313, '山西省', '142231', '苛岚县', 'Kelan Xian', 'KLN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (314, '山西省', '142232', '河曲县', 'Hequ Xian ', 'HQU');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (315, '山西省', '142233', '保德县', 'Baode Xian', 'BDE');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (316, '山西省', '142234', '偏关县', 'Pianguan Xian', 'PGN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (317, '山西省', '142300', '吕梁地区', 'Lvliang Diqu', 'LLD');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (318, '山西省', '142301', '孝义市', 'Xiaoyi Shi', 'XOY');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (319, '山西省', '142302', '离石市', 'Lishi  Shi', 'LSW');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (320, '山西省', '142303', '汾阳市', 'Fenyang Shi', 'FYJ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (321, '山西省', '142322', '文水市', 'Wenshui Shi', 'WSJ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (322, '山西省', '142323', '交城县', 'Jiaocheng Xian', 'JCJ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (323, '山西省', '142325', '兴县', 'Xing Xian', 'XGX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (324, '山西省', '142326', '临县', 'Lin Xian ', 'LXN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (325, '山西省', '142327', '柳林县', 'Liulin Xian', 'LUL');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (326, '山西省', '142328', '石楼县', 'Shilou Xian', 'SLO');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (327, '山西省', '142329', '岚县', 'Lan Xian', 'LAN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (328, '山西省', '142330', '方山县', 'Fangshan Xian', 'FGS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (329, '山西省', '142332', '中阳县', 'Zhongyang Xian', 'ZHY');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (330, '山西省', '142333', '交口县', 'Jiaokou Xian', 'JKO');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (331, '山西省', '142400', '晋中地区', 'Jinzhong Diqu', 'JZD');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (332, '山西省', '142401', '榆次市', 'Yuci Shi', 'YCI');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (333, '山西省', '142402', '介休市', 'Jiexiu Shi', 'JXS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (334, '山西省', '142421', '榆社县', 'Yushe Xian', 'YSJ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (335, '山西省', '142422', '左权县', 'Zuoquan Xian', 'ZQX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (336, '山西省', '142423', '和顺县', 'Heshun Xian', 'HSJ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (337, '山西省', '142424', '昔阳县', 'Xiyang Xian', 'XIY');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (338, '山西省', '142427', '寿阳县', 'Shouyang Xian', 'SYJ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (339, '山西省', '142429', '太谷县', 'Taigu Xian', 'TIG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (340, '山西省', '142430', '祁县', 'Qi Xian', 'QIJ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (341, '山西省', '142431', '平遥县', 'Pingyao Xian', 'PGY');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (342, '山西省', '142433', '灵石县', 'Lingshi Xian', 'LSF');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (343, '山西省', '142600', '临汾地区', 'Linfen Diqu', 'LFD');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (344, '山西省', '142601', '临汾市', 'Linfen Shi', 'LFN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (345, '山西省', '142602', '侯马市', 'Houma Shi ', 'HMA');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (346, '山西省', '142603', '霍州市', 'Huozhou Shi ', 'HOZ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (347, '山西省', '142621', '曲沃县', 'Quwo Xian ', 'QWO');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (348, '山西省', '142622', '翼城县', 'Yicheng Xian', 'YCB');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (349, '山西省', '142623', '襄汾县', 'Xiangfen Xian', 'XFJ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (350, '山西省', '142625', '洪洞县', 'Hongtong Xian', 'HTO');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (351, '山西省', '142627', '古县', 'Gu Xian', 'GUX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (352, '山西省', '142628', '安泽县', 'Anze Xian', 'AZE');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (353, '山西省', '142629', '浮山县', 'Fushan Xian ', 'FSJ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (354, '山西省', '142630', '吉县', 'Ji Xian', 'JIJ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (355, '山西省', '142631', '乡宁县', 'Xiangning Xian', 'XGN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (356, '山西省', '142632', '浦县', 'Pu Xian', 'PUX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (357, '山西省', '142633', '大宁县', 'Daning Xian', 'DNG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (358, '山西省', '142634', '永和县', 'Yonghe Xian', 'YGH');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (359, '山西省', '142635', '隰县', 'Xi Xian', 'XIJ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (360, '山西省', '142636', '汾西县', 'Fenxi Xian', 'FEX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (361, '山西省', '142700', '运城地区', 'Yuncheng Diqu', 'YCJ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (362, '山西省', '142701', '运城市', 'Yuncheng Shi', 'YCE');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (363, '山西省', '142702', '永济市', 'Yongji Shi ', 'YJJ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (364, '山西省', '142703', '河津市', 'Hejin Shi', 'HJS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (365, '山西省', '142723', '芮城县', 'Ruicheng Xian', 'RIC');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (366, '山西省', '142724', '临猗县', 'Linyi Xian', 'LYJ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (367, '山西省', '142725', '万荣县', 'Wanrong Xian', 'WRG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (368, '山西省', '142726', '新绛县', 'Xinjiang Xian', 'XNJ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (369, '山西省', '142727', '稷山县', 'Jishan Xian', 'JSJ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (370, '山西省', '142729', '闻喜县', 'Wenxi Xian', 'WNX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (371, '山西省', '142730', '夏县', 'Xia Xian ', 'XIA');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (372, '山西省', '142731', '绛县', 'Jiang Xian', 'JXC');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (373, '山西省', '142732', '平陆县', 'Pinglu Xian', 'PGL');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (374, '山西省', '142733', '垣曲县', 'Yuanqu Xian', 'YQU');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (375, '内蒙古自治区', '150000', '内蒙古自治区', 'Nei Mongol Zizhiqu', 'NM');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (376, '内蒙古自治区', '150100', '呼和浩特市', 'Hohhot Shi', 'Hhht');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (377, '内蒙古自治区', '150101', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (378, '内蒙古自治区', '150102', '新城区', 'Xincheng Qu', 'XCN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (379, '内蒙古自治区', '150103', '回民区', 'Huimin Qu', 'HMQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (380, '内蒙古自治区', '150104', '玉泉区', 'Yuquan Qu', 'YQN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (381, '内蒙古自治区', '150105', '郊区', 'Jiaoqu', 'JQH');
commit;
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (382, '内蒙古自治区', '150121', '土默特左旗', 'Tumd Zuoqi', 'TUZ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (383, '内蒙古自治区', '150122', '托克托县', 'Togtoh Xian', 'TOG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (384, '内蒙古自治区', '150123', '和林格尔县', 'Horinger Xian', 'HOR');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (385, '内蒙古自治区', '150124', '清水河县', 'Qingshuihe Xian', 'QSH');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (386, '内蒙古自治区', '150125', '武川县', 'Wuchuan Xian', 'WCX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (387, '内蒙古自治区', '150200', '包头市', 'Baotou Shi ', 'BTS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (388, '内蒙古自治区', '150201', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (389, '内蒙古自治区', '150202', '东河区', 'Donghe Qu', 'DHE');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (390, '内蒙古自治区', '150203', '昆都伦区', 'Hondlon Qu', 'HDB');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (391, '内蒙古自治区', '150204', '青山区', 'Qingshan Qu', 'QSB');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (392, '内蒙古自治区', '150205', '石拐矿区', 'Shiguai Kuangqu', 'SGK');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (393, '内蒙古自治区', '150206', '白云矿区', 'Baiyun Kuangqu', 'BYK');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (394, '内蒙古自治区', '150207', '郊区', 'Jiaoqu', 'JBT');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (395, '内蒙古自治区', '150221', '土默特右旗', 'Tumd Youqi', 'TUY');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (396, '内蒙古自治区', '150222', '固阳县', 'Guyang Xian', 'GYM');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (397, '内蒙古自治区', '150223', '达尔罕茂明安联合旗', 'Darhan Muminggan Lianheqi', 'DML');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (398, '内蒙古自治区', '150300', '乌海市', 'Wuhai Shi', 'WHM');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (399, '内蒙古自治区', '150301', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (400, '内蒙古自治区', '150302', '海勃湾区', 'Haibowan Qu', 'HBW');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (401, '内蒙古自治区', '150303', '海南区', 'Hainan Qu', 'HNU');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (402, '内蒙古自治区', '150304', '乌达区', 'Ud Qu', 'UDQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (403, '内蒙古自治区', '150400', '赤峰市', 'Chifeng (Ulanhad)Shi', 'CFS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (404, '内蒙古自治区', '150401', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (405, '内蒙古自治区', '150402', '红山区', 'Hongshan Qu', 'HSZ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (406, '内蒙古自治区', '150403', '元宝山区', 'Yuanbaoshan Qu', 'YBO');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (407, '内蒙古自治区', '150404', '松山区', 'Songshan Qu', 'SSQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (408, '内蒙古自治区', '150421', '阿鲁科尔沁旗', 'Ar Horqin Qi', 'AHO');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (409, '内蒙古自治区', '150422', '巴林左旗', 'Bairin Zuoqi', 'BAZ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (410, '内蒙古自治区', '150423', '巴林右旗', 'Bairin Youqi', 'BAY');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (411, '内蒙古自治区', '150424', '林西县', 'Linxi Xian', 'LXM');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (412, '内蒙古自治区', '150425', '克什克腾旗', 'Hexigten Qi', 'HXT');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (413, '内蒙古自治区', '150426', '翁牛特旗', 'Ongniud Qi', 'ONG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (414, '内蒙古自治区', '150428', '喀喇沁旗', 'Harqin Qi', 'HAR');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (415, '内蒙古自治区', '150429', '宁城县', 'Ningcheng Xian', 'NCH');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (416, '内蒙古自治区', '150430', '敖汉旗', 'Aohan Qi', 'AHN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (417, '内蒙古自治区', '152100', '呼伦贝尔盟', 'Hulun Buir Meng ', 'HBM');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (418, '内蒙古自治区', '152101', '海拉尔市', 'Hailar Shi', 'HLR');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (419, '内蒙古自治区', '152102', '满洲里市', 'Manzhouli Shi', 'MLX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (420, '内蒙古自治区', '152103', '扎兰屯市', 'Zalantun Shi', 'ZLT');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (421, '内蒙古自治区', '152104', '牙克石市', 'Yakeshi Shi', 'YKS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (422, '内蒙古自治区', '152105', '根河市', 'Genhe Shi', 'GHS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (423, '内蒙古自治区', '152106', '额尔古纳市', 'Ergun Shi', 'ERG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (424, '内蒙古自治区', '152122', '阿荣旗', 'Arun Qi', 'ARU');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (425, '内蒙古自治区', '152123', '莫力达瓦达斡尔族自治旗', 'Morin Dawa Daurzu Zizhiqi', 'MDD');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (426, '内蒙古自治区', '152127', '鄂伦春自治旗', 'Oroqen Zizhiqi', 'ORO');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (427, '内蒙古自治区', '152128', '鄂温克族自治旗', 'Ewenkizu Zizhiqi', 'EWE');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (428, '内蒙古自治区', '152129', '新巴尔虎右旗', 'Xin Barag Youqi', 'XBY');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (429, '内蒙古自治区', '152130', '新巴尔虎左旗', 'Xin Barag Zuoqi', 'XBZ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (430, '内蒙古自治区', '152131', '陈巴尔虎旗', 'Chen Barag Qi', 'CBA');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (431, '内蒙古自治区', '152200', '兴安盟', 'Hinggan Meng', 'HIN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (432, '内蒙古自治区', '152201', '乌兰浩特市', 'Ulan Hot Shi', 'ULO');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (433, '内蒙古自治区', '152202', '阿尔山市', 'Arxan Shi', 'ARS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (434, '内蒙古自治区', '152221', '科尔沁右翼前旗', 'Horqin Youyi Qianqi', 'HYQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (435, '内蒙古自治区', '152222', '科尔沁右翼中旗', 'Horqin Youyi Zhongqi', 'HYZ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (436, '内蒙古自治区', '152223', '扎赉特旗', 'Jalaid Qi', 'JAL');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (437, '内蒙古自治区', '152224', '突泉县', 'Tuquan Xian', 'TUQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (438, '内蒙古自治区', '152300', '哲里木盟', 'Jirem Meng', 'JIR');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (439, '内蒙古自治区', '152301', '通辽市', 'Tongliao Shi', 'TLO');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (440, '内蒙古自治区', '152302', '霍林郭勒市', 'Holingol Shi', 'HOL');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (441, '内蒙古自治区', '152322', '科尔沁左翼中旗', 'Horqin Zuoyi Zhongqi', 'HZZ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (442, '内蒙古自治区', '152323', '科尔沁左翼后旗', 'Horqin Zuoyi Houqi', 'HZI');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (443, '内蒙古自治区', '152324', '开鲁县', 'Kailu Xian', 'KLU');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (444, '内蒙古自治区', '152325', '库伦旗', 'Hure Qi', 'HUR');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (445, '内蒙古自治区', '152326', '奈曼旗', 'Naiman Qi', 'NMN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (446, '内蒙古自治区', '152327', '扎鲁特旗', 'Jarud Qi', 'JAR');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (447, '内蒙古自治区', '152500', '锡林郭勒盟', 'Xilin Gol Meng', 'XGO');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (448, '内蒙古自治区', '152501', '二连浩特市', 'Erenhot Shi', 'ERC');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (449, '内蒙古自治区', '152502', '锡林浩特市', 'Xilinhot Shi', 'XLI');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (450, '内蒙古自治区', '152522', '阿巴嘎旗', 'Abag Qi', 'ABG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (451, '内蒙古自治区', '152523', '苏尼特左旗', 'Sonid Zuoqi', 'SOZ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (452, '内蒙古自治区', '152524', '苏尼特右旗', 'Sonid Youqi', 'SOY');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (453, '内蒙古自治区', '152525', '东乌珠穆沁旗', 'Dong Ujimqin Qi', 'DUJ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (454, '内蒙古自治区', '152526', '西乌珠穆沁旗', 'Xi Ujimqin Qi', 'XUJ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (455, '内蒙古自治区', '152527', '太仆寺旗', 'Taibus Qi', 'TAB');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (456, '内蒙古自治区', '152528', '镶黄旗', 'Xianghuang(Hobot Xar) Qi', 'XHG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (457, '内蒙古自治区', '152529', '正镶白旗', 'Zhengxiangbai(Xulun Hobot Qagan)Qi', 'ZXB');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (458, '内蒙古自治区', '152530', '正蓝旗', 'Zhenglan(Xulun Hoh)Qi', 'ZLM');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (459, '内蒙古自治区', '152531', '多伦县', 'Duolun (Dolonnur)Xian', 'DLM');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (460, '内蒙古自治区', '152600', '乌兰察布盟', 'Ulanqab Meng', 'ULM');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (461, '内蒙古自治区', '152601', '集宁市', 'Jining Shi', 'JIN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (462, '内蒙古自治区', '152602', '丰镇市', 'Fengzhen Shi', 'FZS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (463, '内蒙古自治区', '152624', '卓资县', 'Zhuozi Xian', 'ZUZ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (464, '内蒙古自治区', '152625', '化德县', 'Huade Xian', 'HDE');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (465, '内蒙古自治区', '152626', '商都县', 'Shangdu Xian', 'SDX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (466, '内蒙古自治区', '152627', '兴和县', 'Xinghe Xian', 'XHM');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (467, '内蒙古自治区', '152629', '凉城县', 'Liangcheng Xian', 'LCM');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (468, '内蒙古自治区', '152630', '察哈尔右翼前旗', 'Qahar Youyi Qianqi', 'QYM');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (469, '内蒙古自治区', '152631', '察哈尔右翼中旗', 'Qahar Youyi Zhongqi', 'QYZ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (470, '内蒙古自治区', '152632', '察哈尔右翼后旗', 'Qahar Youyi Houqi', 'QYH');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (471, '内蒙古自治区', '152634', '四子王旗', 'Dorbod Qi', 'DOR');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (472, '内蒙古自治区', '152700', '伊克昭盟', 'Ih Ju Meng', 'IJU');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (473, '内蒙古自治区', '152701', '东胜市', 'Dongsheng Shi', 'DSS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (474, '内蒙古自治区', '152722', '达拉特旗', 'Dalad Qi', 'DLA');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (475, '内蒙古自治区', '152723', '准格尔旗', 'Jungar Qi', 'JUN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (476, '内蒙古自治区', '152724', '鄂托克前旗', 'Otog Qianqi', 'OTQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (477, '内蒙古自治区', '152725', '鄂托克旗', 'Otog Qi', 'OTO');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (478, '内蒙古自治区', '152726', '杭锦旗', 'Hanggin Qi', 'HAQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (479, '内蒙古自治区', '152727', '乌审旗', 'Uxin Qi', 'UXI');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (480, '内蒙古自治区', '152728', '伊金霍洛旗', 'Ejin Horo Qi', 'EHO');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (481, '内蒙古自治区', '152800', '巴彦淖尔盟', 'Bayannur Meng', 'BAM');
commit;
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (482, '内蒙古自治区', '152801', '临河市', 'Linhe Shi', 'LNH');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (483, '内蒙古自治区', '152822', '五原县', 'Wuyuan Xian', 'WYM');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (484, '内蒙古自治区', '152823', '磴口县', 'Dengkou Xian', 'DKO');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (485, '内蒙古自治区', '152824', '乌拉特前旗', 'Urad Qianqi', 'URQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (486, '内蒙古自治区', '152825', '乌拉特中旗', 'Urad Zhongqi', 'URZ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (487, '内蒙古自治区', '152826', '乌拉特后旗', 'Urad Houqi', 'URH');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (488, '内蒙古自治区', '152827', '杭锦后旗', 'Hanggin Houqi', 'HAH');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (489, '内蒙古自治区', '152900', '阿拉善盟', 'Alxa Meng', 'ALM');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (490, '内蒙古自治区', '152921', '阿拉善左旗', 'Alxa Zuoqi', 'ALZ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (491, '内蒙古自治区', '152922', '阿拉善右旗', 'Alxa Youqi', 'ALY');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (492, '内蒙古自治区', '152923', '额济纳旗', 'Ejin Qi', 'EJI');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (493, '辽宁省', '210000', '辽宁省', 'Liaoning Sheng', 'LN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (494, '辽宁省', '210100', '沈阳市', 'Shenyang Shi', 'SHE');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (495, '辽宁省', '210101', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (496, '辽宁省', '210102', '和平区', 'Heping Qu', 'HEP');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (497, '辽宁省', '210103', '沈河区', 'Shenhe Qu ', 'SHQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (498, '辽宁省', '210104', '大东区', 'Dadong Qu ', 'DDQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (499, '辽宁省', '210105', '皇姑区', 'Huanggu Qu', 'HGU');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (500, '辽宁省', '210106', '铁西区', 'Tiexi Qu', 'TXI');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (501, '辽宁省', '210111', '苏家屯区', 'Sujiatun Qu', 'SJT');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (502, '辽宁省', '210112', '东陵区', 'Dongling Qu ', 'DLQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (503, '辽宁省', '210113', '新城子区', 'Xinchengzi Qu', 'XCZ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (504, '辽宁省', '210114', '于洪区', 'Yuhong Qu ', 'YHQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (505, '辽宁省', '210122', '辽中县', 'Liaozhong Xian', 'LZL');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (506, '辽宁省', '210123', '康平县', 'Kangping Xian', 'KPG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (507, '辽宁省', '210124', '法库县', 'Faku Xian', 'FKU');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (508, '辽宁省', '210181', '新民市', 'Xinmin Shi', 'XMS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (509, '辽宁省', '210200', '大连市', 'Dalian Shi', 'DLC');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (510, '辽宁省', '210201', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (511, '辽宁省', '210202', '中山区', 'Zhongshan Qu', 'ZSD');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (512, '辽宁省', '210203', '西岗区', 'Xigang Qu', 'XGD');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (513, '辽宁省', '210204', '沙河口区', 'Shahekou Qu', 'SHK');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (514, '辽宁省', '210211', '甘井子区', 'Ganjingzi Qu', 'GJZ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (515, '辽宁省', '210212', '旅顺口区', 'Lvshunkou Qu ', 'LSK');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (516, '辽宁省', '210213', '金州区', 'Jinzhou Qu', 'JZH');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (517, '辽宁省', '210224', '长海县', 'Changhai Xian', 'CHX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (518, '辽宁省', '210281', '瓦房店市', 'Wafangdian Shi', 'WFD');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (519, '辽宁省', '210282', '普兰店市', 'Pulandian Shi', 'PLD');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (520, '辽宁省', '210283', '庄河市', 'Zhuanghe Shi', 'ZHH');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (521, '辽宁省', '210300', '鞍山市', 'AnShan Shi', 'ASN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (522, '辽宁省', '210301', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (523, '辽宁省', '210302', '铁东区', 'Tiedong Qu ', 'TED');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (524, '辽宁省', '210303', '铁西区', 'Tiexi Qu', 'TXL');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (525, '辽宁省', '210304', '立山区', 'Lishan Qu', 'LAS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (526, '辽宁省', '210311', '千山区', 'Qianshan Qu ', 'QSQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (527, '辽宁省', '210321', '台安县', 'Tai,an Xian', 'TAX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (528, '辽宁省', '210323', '岫岩满族自治县', 'Xiuyan Manzu Zizhixian', 'XYL');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (529, '辽宁省', '210381', '海城市', 'Haicheng Shi', 'HCL');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (530, '辽宁省', '210400', '抚顺市', 'Fushun Shi', 'FSN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (531, '辽宁省', '210401', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (532, '辽宁省', '210402', '新抚区', 'Xinfu Qu', 'XFU');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (533, '辽宁省', '210403', '露天区', 'Lutian Qu', 'LTF');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (534, '辽宁省', '210404', '望花区', 'Wanghua Qu', 'WHF');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (535, '辽宁省', '210411', '顺城区', 'Shuncheng Qu', 'SCF');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (536, '辽宁省', '210421', '抚顺县', 'Fushun Xian', 'FSX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (537, '辽宁省', '210422', '新宾满族自治区', 'Xinbin Manzu Zizhixian ', 'XBN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (538, '辽宁省', '210423', '清原满族自治区', 'Qingyuan Manzu Zizhixian ', 'QYA');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (539, '辽宁省', '210500', '本溪市', 'Benxi Shi', 'BXS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (540, '辽宁省', '210501', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (541, '辽宁省', '210502', '平山区', 'Pingshan Qu', 'PSN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (542, '辽宁省', '210503', '溪湖区', 'Xihu Qu ', 'XHB');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (543, '辽宁省', '210504', '明山区', 'Mingshan Qu', 'MSB');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (544, '辽宁省', '210505', '南芬区', 'Nanfen Qu', 'NFQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (545, '辽宁省', '210521', '本溪满族自治县', 'Benxi Manzu Zizhixian', 'BXX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (546, '辽宁省', '210522', '桓仁满族自治县', 'Huanren Manzu Zizhixian', 'HRL');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (547, '辽宁省', '210600', '丹东市', 'Dandong Shi', 'DDG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (548, '辽宁省', '210601', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (549, '辽宁省', '210602', '元宝区', 'Yuanbao Qu', 'YBD');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (550, '辽宁省', '210603', '振兴区', 'Zhenxing Qu ', 'ZXQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (551, '辽宁省', '210604', '振安区', 'Zhen,an Qu', 'ZAQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (552, '辽宁省', '210624', '宽甸满族自治县', 'Kuandian Manzu Zizhixian', 'KDN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (553, '辽宁省', '210681', '东港市', 'Donggang Shi', 'DGS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (554, '辽宁省', '210682', '凤城市', 'Fengcheng Shi', 'FCL');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (555, '辽宁省', '210700', '锦州市', 'Jinzhou Shi', 'JNZ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (556, '辽宁省', '210701', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (557, '辽宁省', '210702', '古塔区', 'Guta Qu', 'GTQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (558, '辽宁省', '210703', '凌河区', 'Linghe Qu', 'LHF');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (559, '辽宁省', '210711', '太河区', 'Taihe Qu', 'THJ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (560, '辽宁省', '210726', '黑山县', 'Heishan Xian', 'HSL');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (561, '辽宁省', '210727', '义县', 'Yi Xian', 'YXL');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (562, '辽宁省', '210781', '凌海市', 'Linghai Shi ', 'LHL');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (563, '辽宁省', '210782', '北宁市', 'Beining Shi', 'BNG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (564, '辽宁省', '210800', '营口市', 'Yingkou Shi', 'YIK');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (565, '辽宁省', '210801', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (566, '辽宁省', '210802', '站前区', 'Zhanqian Qu', 'ZQQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (567, '辽宁省', '210803', '西市区', 'Xishi Qu', 'XII');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (568, '辽宁省', '210804', '鲅鱼圈区', 'Bayuquan Qu', 'BYQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (569, '辽宁省', '210811', '老边区', 'Laobian Qu', 'LOB');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (570, '辽宁省', '210881', '盖州市', 'Gaizhou Shi', 'GZU');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (571, '辽宁省', '210882', '大石桥市', 'Dashiqiao Shi', 'DSQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (572, '辽宁省', '210900', '阜新市', 'Fuxin Shi', 'FXS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (573, '辽宁省', '210901', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (574, '辽宁省', '210902', '海州区', 'Haizhou Qu', 'HZF');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (575, '辽宁省', '210903', '新邱区', 'Xinqiu Qu', 'XQF');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (576, '辽宁省', '210904', '太平区', 'Taiping Qu', 'TPG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (577, '辽宁省', '210905', '清河门区', 'Qinghemen Qu', 'QHM');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (578, '辽宁省', '210911', '细河区', 'Xihe Qu', 'XHO');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (579, '辽宁省', '210921', '阜新蒙古族自治县', 'Fuxin Mongolzu Zizhixian', 'FXX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (580, '辽宁省', '210922', '彰武县', 'Zhangwu Xian', 'ZWU');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (581, '辽宁省', '211000', '辽阳市', 'Liaoyang Shi', 'LYL');
commit;
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (582, '辽宁省', '211001', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (583, '辽宁省', '211002', '白塔区', 'Baita Qu', 'BTL');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (584, '辽宁省', '211003', '文圣区', 'Wensheng Qu', 'WST');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (585, '辽宁省', '211004', '宏伟区', 'Hongwei Qu', 'HWQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (586, '辽宁省', '211005', '弓长岭区', 'Gongchangling Qu', 'GCL');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (587, '辽宁省', '211011', '太子河区', 'Taizihe Qu', 'TZH');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (588, '辽宁省', '211021', '辽阳县', 'Liaoyang Xian', 'LYX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (589, '辽宁省', '211081', '灯塔市', 'Dengta Shi', 'DTL');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (590, '辽宁省', '211100', '盘锦市', 'Panjin Shi', 'PJS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (591, '辽宁省', '211101', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (592, '辽宁省', '211102', '双台子区', 'Shuangtaizi Qu', 'STZ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (593, '辽宁省', '211103', '兴隆台区', 'Xinglongtai Qu', 'XLT');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (594, '辽宁省', '211121', '大洼县', 'Dawa Xian', 'DWA');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (595, '辽宁省', '211122', '盘山县', 'Panshan Xian', 'PNS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (596, '辽宁省', '211200', '铁岭市', 'Tieling Shi', 'TLS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (597, '辽宁省', '211201', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (598, '辽宁省', '211202', '银州区', 'Yinzhou Qu', 'YZU');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (599, '辽宁省', '211204', '清河区', 'Qinghe Qu', 'QHQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (600, '辽宁省', '211221', '铁岭县', 'Tieling Xian', 'TLG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (601, '辽宁省', '211223', '西丰县', 'Xifeng Xian', 'XIF');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (602, '辽宁省', '211224', '昌图县', 'Changtu Xian', 'CTX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (603, '辽宁省', '211281', '铁法市', 'Tiefa Shi ', 'TFA');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (604, '辽宁省', '211282', '开原市', 'Kaiyuan Shi', 'KYS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (605, '辽宁省', '211300', '朝阳市', 'Chaoyang Shi', 'CYS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (606, '辽宁省', '211301', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (607, '辽宁省', '211302', '双塔区', 'Shuangta Qu', 'STQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (608, '辽宁省', '211303', '龙城区', 'Longcheng Qu', 'LCL');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (609, '辽宁省', '211321', '朝阳县', 'Chaoyang Xian', 'CYG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (610, '辽宁省', '211322', '建平县', 'Jianping Xian', 'JPG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (611, '辽宁省', '211324', '喀喇沁左翼蒙古族自治县', 'Harqin Zuoyi Mongolzu Zizhixian', 'HAZ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (612, '辽宁省', '211381', '北票市', 'Beipiao Shi', 'BPO');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (613, '辽宁省', '211382', '凌源市', 'Lingyuan Shi', 'LYK');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (614, '辽宁省', '211400', '葫芦岛市', 'Huludao Shi', 'HLD');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (615, '辽宁省', '211401', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (616, '辽宁省', '211402', '连山区', 'Lianshan Qu', 'LSQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (617, '辽宁省', '211403', '龙港区', 'Longgang Qu', 'LGD');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (618, '辽宁省', '211404', '南票区', 'Nanpiao Qu', 'NPQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (619, '辽宁省', '211421', '绥中县', 'Suizhong Xian', 'SZL');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (620, '辽宁省', '211422', '建昌县', 'Jianchang Xian', 'JCL');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (621, '辽宁省', '211481', '兴城市', 'Xingcheng Shi', 'XCL');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (622, '吉林省', '220000', '吉林省', 'Jilin Sheng', 'JL');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (623, '吉林省', '220100', '长春市', 'Changchun Shi ', 'CGQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (624, '吉林省', '220101', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (625, '吉林省', '220102', '南关区', 'Nanguan Qu', 'NGN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (626, '吉林省', '220103', '宽城区', 'Kuancheng Qu', 'KCQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (627, '吉林省', '220104', '朝阳区', 'Chaoyang Qu ', 'CYC');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (628, '吉林省', '220105', '二道区', 'Erdao Qu', 'EDQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (629, '吉林省', '220106', '绿园区', 'Lvyuan Qu', 'LYQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (630, '吉林省', '220112', '双阳区', 'Shuangyang Qu', 'SYQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (631, '吉林省', '220122', '农安县', 'Nong,an Xian ', 'NAJ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (632, '吉林省', '220180', '九台市', 'Jiutai Shi', 'JUT');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (633, '吉林省', '220182', '榆树市', 'Yushu Shi', 'YSS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (634, '吉林省', '220183', '德惠市', 'Dehui Shi', 'DEH');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (635, '吉林省', '220200', '吉林市', 'Jilin Shi ', 'JLS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (636, '吉林省', '220201', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (637, '吉林省', '220202', '昌邑区', 'Changyi Qu', 'CYI');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (638, '吉林省', '220203', '龙潭区', 'Longtan Qu', 'LTQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (639, '吉林省', '220204', '船营区', 'Chuanying Qu', 'CYJ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (640, '吉林省', '220211', '丰满区', 'Fengman Qu', 'FMQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (641, '吉林省', '220221', '永吉县', 'Yongji Xian', 'YOJ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (642, '吉林省', '220281', '蛟河市', 'Jiaohe Shi', 'JHJ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1878, '湖北省', '420505', '猇亭区', 'Xiaoting Qu', 'XTQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1879, '湖北省', '420521', '宜昌县', 'Yichang Xian', 'YCX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1880, '湖北省', '420525', '远安县', 'Yuan,an Xian', 'YAX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1881, '湖北省', '420526', '兴山县', 'Xingshan Xian', 'XSX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1882, '湖北省', '420527', '秭归县', 'Zigui Xian', 'ZGI');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1883, '湖北省', '420528', '长阳土家族自治县', 'Changyang Tujiazu Zizhixian', 'CYA');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1884, '湖北省', '420529', '五峰土家族自治县', 'Wufeng Tujiazu Zizhixian', 'WFG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1885, '湖北省', '420581', '宜都市', 'Yidu Shi', 'YID');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1886, '湖北省', '420582', '当阳市', 'Dangyang Shi', 'DYS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1887, '湖北省', '420583', '枝江市', 'Zhijiang Shi', 'ZIJ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1888, '湖北省', '420600', '襄樊市', 'Xiangfan Shi', 'XFN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1889, '湖北省', '420601', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1890, '湖北省', '420602', '襄城区', 'Xiangcheng Qu', 'XXF');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1891, '湖北省', '420606', '樊城区', 'Fancheng Qu', 'FNC');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1892, '湖北省', '420621', '襄阳县', 'Xiangyang Xian', 'XYA');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1893, '湖北省', '420624', '南漳县', 'Nanzhang Xian', 'NZH');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1894, '湖北省', '420625', '谷城县', 'Gucheng Xian', 'GUC');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1895, '湖北省', '420626', '保康县', 'Baokang Xian', 'BKG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1896, '湖北省', '420682', '老河口市', 'Laohekou Shi', 'LHK');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1897, '湖北省', '420683', '枣阳市', 'Zaoyang Shi', 'ZOY');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1898, '湖北省', '420684', '宜城市', 'Yicheng Shi', 'YCW');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1899, '湖北省', '420700', '鄂州市', 'Ezhou Shi', 'EZS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1900, '湖北省', '420701', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1901, '湖北省', '420702', '梁子湖区', 'Liangzihu Qu', 'LZI');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1902, '湖北省', '420703', '华容区', 'Huarong Qu', 'HRQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1903, '湖北省', '420704', '鄂城区', 'Echeng Qu', 'ECQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1904, '湖北省', '420800', '荆门市', 'Jingmen Shi', 'JMS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1905, '湖北省', '420801', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1906, '湖北省', '420802', '东宝区', 'Dongbao Qu', 'DBQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1907, '湖北省', '420821', '京山县', 'Jingshan Xian', 'JSA');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1908, '湖北省', '420822', '沙洋县', 'Shayang Xian', 'SYF');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1909, '湖北省', '420881', '钟祥县', 'Zhongxiang Xian', 'ZXS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1910, '湖北省', '420900', '孝感市', 'Xiaogan Shi', 'XGE');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1911, '湖北省', '420901', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1912, '湖北省', '420902', '孝南区', 'Xiaonan Qu', 'XNA');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1913, '湖北省', '420921', '孝昌县', 'Xiaochang Xian', 'XOC');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1914, '湖北省', '420922', '大悟县', 'Dawu Xian', 'DWU');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1915, '湖北省', '420923', '云梦县', 'Yunmeng Xian', 'YMX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1916, '湖北省', '420981', '应城市', 'Yingcheng Shi', 'YCG');
commit;
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1917, '湖北省', '420982', '安陆市', 'Anlu Shi', 'ALU');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1918, '湖北省', '420983', '广水市', 'Guangshui Shi', 'GSS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1919, '湖北省', '420984', '汉川市', 'Hanchuan Shi', 'HCH');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1920, '湖北省', '421000', '荆州市', 'Jingzhou Shi', 'JGZ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1921, '湖北省', '421001', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1922, '湖北省', '421002', '沙市区', 'Shashi Qu', 'SSJ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1923, '湖北省', '421003', '荆州区', 'Jingzhou Qu', 'JZQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1924, '湖北省', '421022', '公安县', 'Gong,an Xian', 'GGA');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1925, '湖北省', '421023', '监利县', 'Jianli Xian', 'JLI');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1926, '湖北省', '421024', '江陵县', 'Jiangling Xian', 'JLX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1927, '湖北省', '421081', '石首市', 'Shishou Shi', 'SSO');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1928, '湖北省', '421083', '洪湖市', 'Honghu Shi', 'HHU');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1929, '湖北省', '421087', '松滋市', 'Songzi Shi', 'SZF');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1930, '湖北省', '421100', '黄冈市', 'Huanggang Shi', 'HE');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1931, '湖北省', '421101', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1932, '湖北省', '421102', '黄州区', 'Huangzhou Qu', 'HZC');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1933, '湖北省', '421121', '团风县', 'Tuanfeng Xian', 'TFG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1934, '湖北省', '421122', '红安县', 'Hong,an Xian', 'HGA');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1935, '湖北省', '421123', '罗田县', 'Luotian Xian', 'LTE');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1936, '湖北省', '421124', '英山县', 'Yingshan Xian', 'YSE');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1937, '湖北省', '421125', '浠水县', 'Xishui Xian', 'XSE');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1938, '湖北省', '421126', '蕲春县', 'Qichun Xian', 'QCN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1939, '湖北省', '421127', '黄梅县', 'Huangmei Xian', 'HGM');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1940, '湖北省', '421181', '麻城市', 'Macheng Shi', 'MCS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1941, '湖北省', '421182', '武穴市', 'Wuxue Shi', 'WXE');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1942, '湖北省', '421200', '咸宁市', 'Xianning Xian', 'XNS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1943, '湖北省', '421201', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1944, '湖北省', '421202', '咸安区', 'Xian,an Qu', 'XAN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1945, '湖北省', '421221', '嘉鱼县', 'Jiayu Xian', 'JYX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1946, '湖北省', '421222', '通城县', 'Tongcheng Xian', 'TCX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1947, '湖北省', '421223', '崇阳县', 'Chongyang Xian', 'CGY');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1948, '湖北省', '421224', '通山县', 'Tongshan Xian', 'TSA');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1949, '湖北省', '421281', '赤壁市', 'Chibi Shi', 'CBI');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1950, '湖北省', '422800', '恩施土家族苗族自治州', 'Enshi Tujiazu Miaozu Zizhizhou', 'ESH');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1951, '湖北省', '422801', '恩施市', 'Enshi Shi', 'ESS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1952, '湖北省', '422802', '利川市', 'Lichuan Shi', 'LCE');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1953, '湖北省', '422822', '建始县', 'Jianshi Xian', 'JSE');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1954, '湖北省', '422823', '巴东县', 'Badong Xian', 'BDG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1955, '湖北省', '422825', '宣恩县', 'Xuan,en Xian', 'XEN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1956, '湖北省', '422826', '咸丰县', 'Xianfeng Xian', 'XFG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1957, '湖北省', '422827', '来凤县', 'Laifeng Xian', 'LFG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1958, '湖北省', '422828', '鹤峰县', 'Hefeng Xian', 'HEF');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1959, '湖北省', '429000', '省直辖县级行政单位', 'Sheng Zhixia Xianji Xingzhengdanwei', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1960, '湖北省', '429001', '随州市', 'Suizhou Shi', 'SZR');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1961, '湖北省', '429004', '仙桃市', 'Xiantao Shi', 'XNT');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1962, '湖北省', '429005', '潜江市', 'Qianjiang Shi', 'QNJ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1963, '湖北省', '429006', '天门市', 'Tianmen Shi', 'TMS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1964, '湖北省', '429021', '神农架林区', 'Shennongjia Linqu', 'SNJ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1965, '湖南省', '430000', '湖南省', 'Hunan Sheng', 'HN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1966, '湖南省', '430100', '长沙市', 'Changsha Shi', 'CSX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1967, '湖南省', '430101', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1968, '湖南省', '430102', '芙蓉区', 'Furong Qu', 'FRQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1969, '湖南省', '430103', '天心区', 'Tianxin Qu', 'TXQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1970, '湖南省', '430104', '岳麓区', 'Yuelu Qu', 'YLU');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1971, '湖南省', '430105', '开福区', 'Kaifu Qu', 'KFQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1972, '湖南省', '430111', '雨花区', 'Yuhua Qu', 'YHA');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1973, '湖南省', '430121', '长沙县', 'Changsha Xian', 'CSA');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1974, '湖南省', '430122', '望城县', 'Wangcheng Xian', 'WCH');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1975, '湖南省', '430124', '宁乡县', 'Ningxiang Xian', 'NXX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1976, '湖南省', '430181', '浏阳市', 'Liuyang Shi', 'LYS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1977, '湖南省', '430200', '株洲市', 'Zhuzhou Shi', 'ZZS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1978, '湖南省', '430201', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1979, '湖南省', '430202', '荷塘区', 'Hetang Qu', 'HTZ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1980, '湖南省', '430203', '芦淞区', 'Lusong Qu', 'LZZ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1981, '湖南省', '430204', '石峰区', 'Shifeng Qu', 'SFG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1982, '湖南省', '430211', '天元区', 'Tianyuan Qu', 'TYQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1983, '湖南省', '430221', '株洲县', 'Zhuzhou Xian', 'ZZX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1984, '湖南省', '430223', '攸县', 'You Xian', 'YOU');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1985, '湖南省', '430224', '茶陵县', 'Chaling Xian', 'CAL');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1986, '湖南省', '430225', '炎陵县', 'Yanling Xian', 'YLX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1987, '湖南省', '430281', '醴陵市', 'Liling Shi', 'LIL');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1988, '湖南省', '430300', '湘潭市', 'Xiangtan Shi', 'XGT');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1989, '湖南省', '430301', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1990, '湖南省', '430302', '雨湖区', 'Yuhu Qu', 'YHU');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1991, '湖南省', '430304', '岳塘区', 'Yuetang Qu', 'YTG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1992, '湖南省', '430321', '湘潭县', 'Xiangtan Qu', 'XTX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1993, '湖南省', '430381', '湘乡市', 'Xiangxiang Shi', 'XXG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1994, '湖南省', '430382', '韶山市', 'Shaoshan Shi', 'SSN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1995, '湖南省', '430400', '衡阳市', 'Hengyang Shi', 'HNY');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1996, '湖南省', '430401', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1997, '湖南省', '430402', '江东区', 'Jiangdong Qu', 'JDH');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1998, '湖南省', '430403', '城南区', 'Chengnan Qu', 'CNN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1999, '湖南省', '430404', '城北区', 'Chengbei Qu', 'CBQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2000, '湖南省', '430411', '郊区', 'Jiaoqu', 'JHY');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2001, '湖南省', '430412', '南岳区', 'Nanyue Qu', 'NYQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2002, '湖南省', '430421', '衡阳县', 'Hengyang Xian', 'HYO');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2003, '湖南省', '430422', '衡南县', 'Hengnan Xian', 'HNX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2004, '湖南省', '430423', '衡山县', 'Hengshan Xian', 'HSH');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2005, '湖南省', '430424', '衡东县', 'Hengdong Xian', 'HED');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2006, '湖南省', '430426', '祁东县', 'Qidong Xian', 'QDX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2007, '湖南省', '430481', '耒阳市', 'Leiyang Shi', 'LEY');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2008, '湖南省', '430482', '常宁市', 'Changning Shi', 'CNS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2009, '湖南省', '430500', '邵阳市', 'Shaoyang Shi', 'SYR');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2010, '湖南省', '430501', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2011, '湖南省', '430502', '双清区', 'Shuangqing Qu', 'SGQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2012, '湖南省', '430503', '大祥区', 'Daxiang Qu', 'DXS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2013, '湖南省', '430511', '北塔区', 'Beita Qu', 'BET');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2014, '湖南省', '430521', '邵东县', 'Shaodong Xian', 'SDG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2015, '湖南省', '430522', '新邵县', 'Xinshao Xian', 'XSO');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2016, '湖南省', '430523', '邵阳县', 'Shaoyang Xian', 'SYW');
commit;
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2017, '湖南省', '430524', '隆回县', 'Longhui Xian', 'LGH');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2018, '湖南省', '430525', '洞口县', 'Dongkou Xian', 'DGK');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2019, '湖南省', '430527', '绥宁县', 'Suining Xian', 'SNX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2020, '湖南省', '430528', '新宁县', 'Xinning Xian', 'XNI');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2021, '湖南省', '430529', '城步苗族自治县', 'Chengbu Miaozu Zizhixian', 'CBU');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2022, '湖南省', '430581', '武冈市', 'Wugang Shi', 'WGS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2023, '湖南省', '430600', '岳阳市', 'Yueyang Shi', 'YYG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2024, '湖南省', '430601', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2025, '湖南省', '430602', '岳阳楼区', 'Yueyanglou Qu', 'YYL');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2026, '湖南省', '430603', '云溪区', 'Yunxi Qu', 'YXI');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2027, '湖南省', '430611', '君山区', 'Junshan Qu', 'JUS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2028, '湖南省', '430621', '岳阳县', 'Yueyang Xian', 'YYX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2029, '湖南省', '430623', '华容县', 'Huarong Xian', 'HRG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2030, '湖南省', '430624', '湘阴县', 'Xiangyin Xian', 'XYN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2031, '湖南省', '430626', '平江县', 'Pingjiang Xian', 'PJH');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2032, '湖南省', '430681', '汨罗市', 'Miluo Shi', 'MLU');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (762, '黑龙江省', '230501', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (763, '黑龙江省', '230502', '尖山区', 'Jianshan Qu', 'JSQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (764, '黑龙江省', '230503', '岭东区', 'Lingdong Qu', 'LDQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (765, '黑龙江省', '230505', '四方台区', 'Sifangtai Qu', 'SFT');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (766, '黑龙江省', '230506', '宝山区', 'Baoshan Qu', 'BSQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (767, '黑龙江省', '230521', '集贤县', 'Jixian Xian', 'JXH');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (768, '黑龙江省', '230522', '友谊县', 'Youyi Xian', 'YYI');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (769, '黑龙江省', '230523', '宝清县', 'Baoqing Xian', 'BQG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (770, '黑龙江省', '230524', '饶河县', 'Raohe Xian ', 'ROH');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (771, '黑龙江省', '230600', '大庆市', 'Daqing Shi', 'DQG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (772, '黑龙江省', '230601', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (773, '黑龙江省', '230602', '萨尔图区', 'Sairt Qu', 'SAI');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (774, '黑龙江省', '230603', '龙凤区', 'Longfeng Qu', 'LFQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (775, '黑龙江省', '230604', '让胡路区', 'Ranghulu Qu', 'RHL');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (776, '黑龙江省', '230605', '红岗区', 'Honggang Qu', 'HGD');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (777, '黑龙江省', '230606', '大同区', 'Datong Qu', 'DHD');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (778, '黑龙江省', '230621', '肇州县', 'Zhaozhou Xian', 'ZAZ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (779, '黑龙江省', '230622', '肇源县', 'Zhaoyuan Xian', 'ZYH');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (780, '黑龙江省', '230623', '林甸县', 'Lindian Xian ', 'LDN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (781, '黑龙江省', '230624', '杜尔伯特蒙古族自治县', 'Dorbod Mongolzu Zizhixian', 'DOM');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (782, '黑龙江省', '230700', '伊春市', 'Yichun Shi', 'YCH');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (783, '黑龙江省', '230701', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (784, '黑龙江省', '230702', '伊春区', 'Yichun Qu', 'YYC');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (785, '黑龙江省', '230703', '南岔区', 'Nancha Qu', 'NCQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (786, '黑龙江省', '230704', '友好区', 'Youhao Qu', 'YOH');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (787, '黑龙江省', '230705', '西林区', 'Xilin Qu', 'XIL');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (788, '黑龙江省', '230706', '翠峦区', 'Cuiluan Qu', 'CLN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (789, '黑龙江省', '230707', '新青区', 'Xinqing Qu', 'XQQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (790, '黑龙江省', '230708', '美溪区', 'Meixi Qu', 'MXQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (791, '黑龙江省', '230709', '金山屯区', 'Jinshantun Qu', 'JST');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (792, '黑龙江省', '230710', '五营区', 'Wuying Qu', 'WYQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (793, '黑龙江省', '230711', '乌马河区', 'Wumahe Qu', 'WMH');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (794, '黑龙江省', '230712', '汤旺河区', 'Tangwanghe Qu', 'TWH');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (795, '黑龙江省', '230713', '带岭区', 'Dailing Qu', 'DLY');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (796, '黑龙江省', '230714', '乌伊岭区', 'Wuyiling Qu', 'WYL');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (797, '黑龙江省', '230715', '红星区', 'Hongxing Qu', 'HGX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (798, '黑龙江省', '230716', '上甘岭区', 'Shangganling Qu', 'SGL');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (799, '黑龙江省', '230722', '嘉阴县', 'Jiayin Xian', 'JAY');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (800, '黑龙江省', '230781', '铁力市', 'Tieli Shi', 'TEL');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (801, '黑龙江省', '230800', '佳木斯市', 'Jiamusi Shi', 'JMU');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (802, '黑龙江省', '230801', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (803, '黑龙江省', '230802', '永红区', 'Yonghong Qu', 'YHJ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (804, '黑龙江省', '230803', '向阳区', 'Xiangyang  Qu ', 'XYQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (805, '黑龙江省', '230804', '前进区', 'Qianjin Qu', 'QJQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (806, '黑龙江省', '230805', '东风区', 'Dongfeng Qu', 'DFQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (807, '黑龙江省', '230811', '郊区', 'Jiaoqu', 'JQJ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (808, '黑龙江省', '230822', '桦南县', 'Huanan Xian', 'HNH');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (809, '黑龙江省', '230826', '桦川县', 'Huachuan Xian', 'HCN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (810, '黑龙江省', '230828', '汤原县', 'Tangyuan Xian', 'TYX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (811, '黑龙江省', '230833', '抚远县', 'Fuyuan Xian', 'FUY');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (812, '黑龙江省', '230881', '同江市', 'Tongjiang Shi', 'TOJ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (813, '黑龙江省', '230882', '富锦市', 'Fujin Shi', 'FUJ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (814, '黑龙江省', '230900', '七台河市', 'Qitaihe Shi', 'QTH');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (815, '黑龙江省', '230901', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (816, '黑龙江省', '230902', '新兴区', 'Xinxing Qu', 'XXQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (817, '黑龙江省', '230903', '桃山区', 'Taoshan Qu', 'TSC');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (818, '黑龙江省', '230904', '茄子河区', 'Qiezihe Qu', 'QZI');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (819, '黑龙江省', '230921', '勃利县', 'Boli Xian', 'BLI');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (820, '黑龙江省', '231000', '牡丹江市', 'Mudanjiang Shi', 'MDG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (821, '黑龙江省', '231001', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (822, '黑龙江省', '231002', '东安区', 'Dong,an Qu', 'DGA');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (823, '黑龙江省', '231003', '阳明区', 'Yangming Qu', 'YMQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (824, '黑龙江省', '231004', '爱民区', 'Aimin Qu', 'AMQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (825, '黑龙江省', '231005', '西安区', 'Xi,an Qu', 'XAQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (826, '黑龙江省', '231024', '东宁县', 'Dongning Xian', 'DON');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (827, '黑龙江省', '231025', '林口县', 'Linkou Xian', 'LKO');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (828, '黑龙江省', '231081', '绥芬河市', 'Suifenhe Shi', 'SFE');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (829, '黑龙江省', '231083', '海林市', 'Hailin Shi', 'HLS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (830, '黑龙江省', '231084', '宁安市', 'Ning,an Shi', 'NAI');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (831, '黑龙江省', '231085', '穆棱市', 'Muling Shi', 'MLG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (832, '黑龙江省', '231100', '黑河市', 'Heihe Shi', 'HEK');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (833, '黑龙江省', '231101', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (834, '黑龙江省', '231102', '爱辉区', 'Aihui Qu', 'AHQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (835, '黑龙江省', '231121', '嫩江县', 'Nenjiang Xian', 'NJH');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (836, '黑龙江省', '231123', '逊克县', 'Xunke Xian', 'XUK');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (837, '黑龙江省', '231124', '孙吴县', 'Sunwu Xian', 'SUW');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (838, '黑龙江省', '231181', '北安市', 'Bei,an Shi', 'BAS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (839, '黑龙江省', '231182', '五大连池市', 'Wudalianchi Shi', 'WDL');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (840, '黑龙江省', '232300', '绥化地区', 'Suihua Diqu', 'SHD');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (841, '黑龙江省', '232301', '绥化市', 'Suihua Shi', 'SUH');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (842, '黑龙江省', '232302', '安达市', 'Anda Shi', 'ADA');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (843, '黑龙江省', '232303', '肇东市', 'Zhaodong Shi', 'ZDS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (844, '黑龙江省', '232304', '海伦市', 'Hailun Shi', 'HLU');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (845, '黑龙江省', '232324', '望奎县', 'Wangkui Xian', 'WKI');
commit;
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (846, '黑龙江省', '232325', '兰西县', 'Lanxi Xian', 'LXT');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (847, '黑龙江省', '232326', '青冈县', 'Qinggang Xian', 'QGG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (848, '黑龙江省', '232330', '庆安县', 'Qing,an Xian', 'QAN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (849, '黑龙江省', '232331', '明水县', 'Mingshui Xian', 'MSU');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (850, '黑龙江省', '232332', '绥棱县', 'Suileng Xian', 'SLG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (851, '黑龙江省', '232700', '大兴安岭地区', 'Da Hinggan Ling Diqu', 'DHL');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (852, '黑龙江省', '232721', '呼玛县', 'Huma Xian', 'HUM');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (853, '黑龙江省', '232722', '塔河县', 'Tahe Xian', 'TAH');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (854, '黑龙江省', '232723', '漠河县', 'Mohe Xian', 'MOH');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (855, '上海市', '310000', '上海市', 'Shanghai Shi', 'SH');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (856, '上海市', '310100', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (857, '上海市', '310101', '黄浦区', 'Huangpu Qu', 'HGP');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (858, '上海市', '310103', '卢湾区', 'Luwan Qu', 'LWN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (859, '上海市', '310104', '徐汇区', 'Xuhui Qu', 'XHI');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (860, '上海市', '310105', '长宁区', 'Changning Qu', 'CNQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (861, '上海市', '310106', '静安区', 'Jing,an Qu', 'JAQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (862, '上海市', '310107', '普陀区', 'Putuo Qu', 'PTQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (863, '上海市', '310108', '闸北区', 'Zhabei Qu', 'ZBE');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (864, '上海市', '310109', '虹口区', 'Hongkou Qu', 'HKQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (865, '上海市', '310110', '杨浦区', 'Yangpu Qu', 'YPU');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (866, '上海市', '310112', '闵行区', 'Minhang Qu', 'MHQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (867, '上海市', '310113', '宝山区', 'Baoshan Qu', 'BAO');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (868, '上海市', '310114', '嘉定区', 'Jiading Qu', 'JDG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (869, '上海市', '310115', '浦东新区', 'Pudong Xinqu', 'PDX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (870, '上海市', '310116', '金山区', 'Jinshan Qu', 'JSH');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (871, '上海市', '310117', '松江区', 'Songjiang Qu', 'SOJ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (872, '上海市', '310200', '县', 'Xian', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (873, '上海市', '310119', '南汇区', 'Nanhui Qu', 'NNH');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (874, '上海市', '310120', '奉贤区', 'Fengxian Qu', 'FXI');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (875, '上海市', '310118', '青浦区', 'Qingpu  Qu', 'QPU');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (876, '上海市', '310230', '崇明县', 'Chongming Xian', 'CMI');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (877, '江苏省', '320000', '江苏省', 'Jiangsu Sheng', 'JS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (878, '江苏省', '320100', '南京市', 'Nanjing Shi', 'NKG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (879, '江苏省', '320101', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (880, '江苏省', '320102', '玄武区', 'Xuanwu Qu', 'XWU');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (881, '江苏省', '320103', '白下区', 'Baixia Qu', 'BXQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (882, '江苏省', '320104', '秦淮区', 'Qinhuai Qu', 'QHU');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (883, '江苏省', '320105', '建邺区', 'Jianye Qu', 'JYQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (884, '江苏省', '320106', '鼓楼区', 'Gulou Qu', 'GLQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (885, '江苏省', '320107', '下关区', 'Xiaguan Qu', 'XGQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (886, '江苏省', '320111', '浦口区', 'Pukou Qu', 'PKO');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (887, '江苏省', '320112', '大厂区', 'Dachang Qu', 'DCH');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (888, '江苏省', '320113', '栖霞区', 'Qixia Qu', 'QAX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (889, '江苏省', '320114', '雨花台区', 'Yuhuatai Qu', 'YHT');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (890, '江苏省', '320121', '江宁县', 'Jiangning Xian', 'JNX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (891, '江苏省', '320122', '江浦县', 'Jiangpu Xian ', 'JPU');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (892, '江苏省', '320123', '六合县', 'Liuhe Xian ', 'LHE');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (893, '江苏省', '320124', '溧水县', 'Lishui Xian', 'LIS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (894, '江苏省', '320125', '高淳县', 'Gaochun Xian', 'GCN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (895, '江苏省', '320200', '无锡市', 'Wuxi Shi', 'WUX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (896, '江苏省', '320201', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (897, '江苏省', '320202', '崇安区', 'Chong,an Qu', 'CGA');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (898, '江苏省', '320203', '南长区', 'Nanchang Qu', 'NCG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (899, '江苏省', '320204', '北塘区', 'Beitang Qu', 'BTQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (900, '江苏省', '320211', '郊区', 'Jiaoqu', 'JQW');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (901, '江苏省', '320212', '马山区', 'Mashan Qu', 'MSW');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (902, '江苏省', '320281', '江阴市', 'Jiangyin Shi', 'JIA');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (903, '江苏省', '320282', '宜兴市', 'Yixing Shi', 'YIX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (904, '江苏省', '320283', '锡山市', 'Xishan Shi', 'XSS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (905, '江苏省', '320300', '徐州市', 'Xuzhou Shi', 'XUZ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (906, '江苏省', '320301', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (907, '江苏省', '320302', '鼓楼区', 'Gulou Qu', 'GLU');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (908, '江苏省', '320303', '云龙区', 'Yunlong Qu', 'YLF');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (909, '江苏省', '320304', '九里区', 'Jiuli Qu', 'JUL');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (910, '江苏省', '320305', '贾汪区', 'Jiawang Qu', 'JWQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (911, '江苏省', '320311', '泉山区', 'Quanshan Qu', 'QSX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (912, '江苏省', '320321', '丰县', 'Feng Xian', 'FXN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (913, '江苏省', '320322', '沛县', 'Pei Xian', 'PEI');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (914, '江苏省', '320323', '铜山县', 'Tongshan Xian', 'TSX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (915, '江苏省', '320324', '睢宁县', 'Suining Xian', 'SNI');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (916, '江苏省', '320381', '新沂市', 'Xinyi Shi', 'XYW');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (917, '江苏省', '320382', '邳州市', 'Pizhou Shi', 'PZO');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (918, '江苏省', '320400', '常州市', 'Changzhou Shi', 'CZX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (919, '江苏省', '320401', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (920, '江苏省', '320402', '天宁区', 'Tianning Qu', 'TNQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (921, '江苏省', '320404', '钟楼区', 'Zhonglou Qu', 'ZLQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (922, '江苏省', '320405', '戚墅堰区', 'Qishuyan Qu', 'QSY');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (923, '江苏省', '320411', '郊区', 'Jiaoqu', 'JCZ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (924, '江苏省', '320481', '溧阳市', 'Liyang Shi', 'LYR');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (925, '江苏省', '320482', '金坛市', 'Jintan Shi', 'JTS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (926, '江苏省', '320483', '武进市', 'Wujin Shi', 'WJN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (927, '江苏省', '320500', '苏州市', 'Suzhou Shi', 'SZH');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (928, '江苏省', '320501', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (929, '江苏省', '320502', '沧浪区', 'Canglang Qu', 'CLQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (930, '江苏省', '320503', '平江区', 'Pingjiang Qu', 'PJQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (931, '江苏省', '320504', '金阊区', 'Jinchang Qu', 'JCA');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (932, '江苏省', '320511', '郊区', 'Jiaoqu', 'JSZ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (933, '江苏省', '320581', '常熟市', 'Changshu Shi', 'CGS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (934, '江苏省', '320582', '张家港市', 'Zhangjiagang Shi ', 'ZJG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (935, '江苏省', '320583', '昆山市', 'Kunshan Shi', 'KUS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (936, '江苏省', '320584', '吴江市', 'Wujiang Shi', 'WUJ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (937, '江苏省', '320585', '太仓市', 'Taicang Shi', 'TAC');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (938, '江苏省', '320586', '吴县市', 'Wuxian Shi', 'WXS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (939, '江苏省', '320600', '南通市', 'Nantong Shi', 'NTG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (940, '江苏省', '320601', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (941, '江苏省', '320602', '崇川区', 'Chongchuan Qu', 'CCQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (942, '江苏省', '320611', '港闸区', 'Gangzha Qu', 'GZQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (943, '江苏省', '320621', '海安县', 'Hai,an Xian', 'HIA');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (944, '江苏省', '320623', '如东县', 'Rudong Xian', 'RDG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (945, '江苏省', '320681', '启东市', 'Qidong Shi', 'QID');
commit;
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (946, '江苏省', '320682', '如皋市', 'Rugao Shi', 'RGO');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (947, '江苏省', '320683', '通州市', 'Tongzhou Shi', 'TGA');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (948, '江苏省', '320684', '海门市', 'Haimen Shi', 'HME');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (949, '江苏省', '320700', '连云港市', 'Lianyungang Shi', 'LYG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (950, '江苏省', '320701', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (951, '江苏省', '320703', '连云区', 'Lianyun Qu', 'LYB');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (952, '江苏省', '320704', '云台区', 'Yuntai Qu', 'YTI');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (953, '江苏省', '320705', '新浦区', 'Xinpu Qu', 'XPQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (954, '江苏省', '320706', '海州区', 'Haizhou Qu', 'HIZ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (955, '江苏省', '320721', '赣榆县', 'Ganyu Xian', 'GYU');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (956, '江苏省', '320722', '东海县', 'Donghai Xian', 'DHX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (957, '江苏省', '320723', '灌云县', 'Guanyun Xian', 'GYS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (958, '江苏省', '320724', '灌南县', 'Guannan Xian', 'GUN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (959, '江苏省', '320800', '淮阴市', 'Huaiyin Shi', 'HYS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (960, '江苏省', '320801', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (961, '江苏省', '320802', '清河区', 'Qinghe Qu', 'QHH');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (962, '江苏省', '320811', '清浦区', 'Qingpu Qu', 'QPQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (963, '江苏省', '320821', '淮阴县', 'Huaiyin Xian', 'HYX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (964, '江苏省', '320826', '涟水县', 'Lianshui Xian', 'LSI');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (965, '江苏省', '320829', '洪泽县', 'Hongze Xian', 'HGZ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (966, '江苏省', '320830', '盱眙县', 'Xuyi Xian', 'XUY');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (967, '江苏省', '320831', '金湖县', 'Jinhu Xian', 'JHU');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (968, '江苏省', '320882', '淮安市', 'Huai,an Xian', 'HAS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (969, '江苏省', '320900', '盐城市', 'Yancheng Shi', 'YCK');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (970, '江苏省', '320901', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (971, '江苏省', '320902', '城区', 'Chengqu', 'CQH');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (972, '江苏省', '320921', '响水县', 'Xiangshui Xian', 'XSH');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (973, '江苏省', '320922', '滨海县', 'Binhai Xian', 'BHI');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (974, '江苏省', '320923', '阜宁县', 'Funing Xian', 'FNG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (975, '江苏省', '320924', '射阳县', 'Sheyang Xian', 'SEY');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (976, '江苏省', '320925', '建湖县', 'Jianhu Xian', 'JIH');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (977, '江苏省', '320928', '盐都县', 'Yandu Xian', 'YDU');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (978, '江苏省', '320981', '东台市', 'Dongtai Shi', 'DTS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (979, '江苏省', '320982', '大丰市', 'Dafeng Shi', 'DFS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (980, '江苏省', '321000', '扬州市', 'Yangzhou Shi', 'YZH');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (981, '江苏省', '321001', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (982, '江苏省', '321002', '广陵区', 'Guangling Qu', 'GGL');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (983, '江苏省', '321011', '郊区', 'Jiaoqu', 'JYZ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (984, '江苏省', '321023', '宝应县', 'Baoying Xian ', 'BYI');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (985, '江苏省', '321027', '邗江县', 'Hanjiang Xian', 'HAJ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (986, '江苏省', '321081', '仪征市', 'Yizheng Shi', 'YZE');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (987, '江苏省', '321084', '高邮市', 'Gaoyou Shi', 'GYO');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (988, '江苏省', '321088', '江都市', 'Jiangdu Shi', 'JDU');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (989, '江苏省', '321100', '镇江市', 'Zhenjiang Shi', 'ZHE');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (990, '江苏省', '321101', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (991, '江苏省', '321102', '东口区', 'Dongkou Qu', 'JKQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (992, '江苏省', '321111', '润州区', 'Runzhou Qu', 'RZQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (993, '江苏省', '321121', '丹徒县', 'Dantu Xian', 'DNT');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (994, '江苏省', '321181', '丹阳市', 'Danyang Xian', 'DNY');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (995, '江苏省', '321182', '扬中市', 'Yangzhong Shi', 'YZG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (996, '江苏省', '321183', '句容市', 'Jurong Shi', 'JRG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (997, '江苏省', '321200', '泰州市', 'Taizhou Shi', 'TZS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (998, '江苏省', '321201', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (999, '江苏省', '321202', '海陵区', 'Hailing Qu', 'HIL');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1000, '江苏省', '321203', '高港区', 'Gaogang Qu', 'GGQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1001, '江苏省', '321281', '兴化市', 'Xinghua Shi', 'XHS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1002, '江苏省', '321282', '靖江市', 'Jingjiang Shi', 'JGJ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1003, '江苏省', '321283', '泰兴市', 'Taixing Shi', 'TXG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1004, '江苏省', '321284', '姜堰市', 'Jiangyan Shi', 'JYS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1005, '江苏省', '321300', '宿迁市', 'Suqian Shi', 'SUQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1006, '江苏省', '321301', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1007, '江苏省', '321302', '宿城区', 'Sucheng Qu', 'SCE');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1008, '江苏省', '321321', '宿豫区', 'Suyu Qu', 'SYY');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1009, '江苏省', '321322', '沭阳县', 'Shuyang Xian', 'SYD');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1010, '江苏省', '321323', '泗阳县', 'Siyang Xian ', 'SIY');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1011, '江苏省', '321324', '泗洪县', 'Sihong Xian', 'SIH');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1012, '浙江省', '330000', '浙江省', 'Zhejiang Sheng', 'ZJ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1013, '浙江省', '330100', '杭州市', 'Hangzhou Shi', 'HGH');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1014, '浙江省', '330101', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1015, '浙江省', '330102', '上城区', 'Shangcheng Qu', 'SCQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1016, '浙江省', '330103', '下城区', 'Xiacheng Qu', 'XCG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1017, '浙江省', '330104', '江干区', 'Jianggan Qu', 'JGQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1018, '浙江省', '330105', '拱墅区', 'Gongshu Qu', 'GSQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1019, '浙江省', '330106', '西湖区', 'Xihu Qu ', 'XHU');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1020, '浙江省', '330108', '滨江区', 'Binjiang Qu', 'BJQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1021, '浙江省', '330122', '桐庐县', 'Tonglu Xian', 'TLU');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1022, '浙江省', '330127', '淳安县', 'Chun,an Xian', 'CAZ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1023, '浙江省', '330181', '萧山市', 'Xiaoshan Shi', 'XIS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1024, '浙江省', '330182', '建德市', 'Jiande Shi', 'JDS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1025, '浙江省', '330183', '富阳市', 'Fuyang Shi', 'FYZ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1026, '浙江省', '330184', '余杭市', 'Yuhang Shi', 'YHS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1027, '浙江省', '330185', '临安市', 'Lin,an Shi', 'LNA');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1028, '浙江省', '330200', '宁波市', 'Ningbo Shi', 'NGB');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1029, '浙江省', '330201', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1030, '浙江省', '330203', '海曙区', 'Haishu Qu', 'HNB');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1031, '浙江省', '330204', '江东区', 'Jiangdong Qu', 'JDO');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1032, '浙江省', '330205', '江北区', 'Jiangbei Qu', 'JBQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1033, '浙江省', '330206', '北仑区', 'Beilun Qu', 'BLN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1034, '浙江省', '330211', '镇海区', 'Zhenhai Qu', 'ZHF');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1035, '浙江省', '330225', '象山县', 'Xiangshan Xian', 'YSZ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1036, '浙江省', '330226', '宁海县', 'Ninghai Xian', 'NHI');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1037, '浙江省', '330227', '鄞县', 'Yin Xian', 'YXZ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1038, '浙江省', '330281', '余姚市', 'Yuyao Shi', 'YYO');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1039, '浙江省', '330282', '慈溪市', 'Cixi Shi', 'CXI');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1040, '浙江省', '330283', '奉化市', 'Fenghua Shi', 'FHU');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1041, '浙江省', '330300', '温州市', 'Wenzhou Shi', 'WNZ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1042, '浙江省', '330301', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1043, '浙江省', '330302', '鹿城区', 'Lucheng Qu', 'LUW');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1044, '浙江省', '330303', '龙湾区', 'Longwan Qu', 'LWW');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1045, '浙江省', '330304', '瓯海区', 'Ouhai Qu', 'OHQ');
commit;
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1046, '浙江省', '330322', '洞头县', 'Dongtou Xian', 'DTO');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1047, '浙江省', '330324', '永嘉县', 'Yongjia Xian', 'YJX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1048, '浙江省', '330326', '平阳县', 'Pingyang Xian', 'PYG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1049, '浙江省', '330327', '苍南县', 'Cangnan Xian', 'CAN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1050, '浙江省', '330328', '文成县', 'Wencheng Xian', 'WCZ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1051, '浙江省', '330329', '泰顺县', 'Taishun Xian', 'TSZ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1052, '浙江省', '330381', '瑞安市', 'Rui,an Xian', 'RAS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1053, '浙江省', '330382', '乐清市', 'Yueqing Shi', 'YQZ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1054, '浙江省', '330400', '嘉兴市', 'Jiaxing Shi', 'JIX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1055, '浙江省', '330401', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1056, '浙江省', '330402', '秀城区', 'Xiucheng Qu', 'XCJ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1057, '浙江省', '330411', '郊区', 'Jiaoqu', 'JJX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1058, '浙江省', '330421', '嘉善县', 'Jiashan Xian', 'JSK');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1059, '浙江省', '330424', '海盐县', 'Haiyan Xian', 'HYN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1060, '浙江省', '330481', '海宁市', 'Haining Shi', 'HNG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1061, '浙江省', '330482', '平湖市', 'Pinghu Shi', 'PHU');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1062, '浙江省', '330483', '桐乡市', 'Tongxiang Shi', 'TXZ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1063, '浙江省', '330500', '湖州市', 'Huzhou Shi ', 'HZH');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1064, '浙江省', '330501', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1065, '浙江省', '330521', '德清县', 'Deqing Xian', 'DQX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1066, '浙江省', '330522', '长兴县', 'Changxing Xian', 'CXG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1067, '浙江省', '330523', '安吉县', 'Anji Xian', 'AJI');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1068, '浙江省', '330600', '绍兴市', 'Shaoxing Shi', 'SXG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1069, '浙江省', '330601', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1070, '浙江省', '330602', '越城区', 'Yuecheng Qu', 'YSX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1071, '浙江省', '330621', '绍兴县', 'Shaoxing Xian', 'SXZ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1072, '浙江省', '330624', '新昌县', 'Xinchang Xian', 'XCX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1073, '浙江省', '330681', '诸暨市', 'Zhuji Shi', 'ZHJ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1074, '浙江省', '330682', '上虞市', 'Shangyu Shi', 'SYZ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1075, '浙江省', '330683', '嵊州市', 'Shengzhou Shi', 'SGZ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1076, '浙江省', '330700', '金华市', 'Jinhua Shi', 'JHA');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1077, '浙江省', '330701', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1078, '浙江省', '330702', '婺城区', 'Wucheng Qu', 'WCF');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1079, '浙江省', '330721', '金华县', 'Jinhua Xian', 'JNH');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1080, '浙江省', '330723', '武义县', 'Wuyi Xian', 'WYX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1081, '浙江省', '330726', '浦江县', 'Pujiang Xian ', 'PJG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1082, '浙江省', '330727', '磐安县', 'Pan,an Xian', 'PAX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1083, '浙江省', '330781', '兰溪市', 'Lanxi Shi', 'LXZ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1084, '浙江省', '330782', '义乌市', 'Yiwu Shi', 'YWS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1085, '浙江省', '330783', '东阳市', 'Dongyang Shi', 'DGY');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1086, '浙江省', '330784', '永康市', 'Yongkang Shi', 'YKG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1087, '浙江省', '330800', '衢州市', 'Quzhou Shi', 'QUZ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1088, '浙江省', '330801', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1089, '浙江省', '330802', '柯城区', 'Kecheng Qu', 'KEC');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1090, '浙江省', '330821', '衢县', 'Qu Xian', 'QXN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1091, '浙江省', '330822', '常山县', 'Changshan Xian', 'CSN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1092, '浙江省', '330824', '开化县', 'Kaihua Xian', 'KHU');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1093, '浙江省', '330825', '龙游县', 'Longyou Xian ', 'LGY');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1094, '浙江省', '330881', '江山市', 'Jiangshan Shi', 'JIS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1095, '浙江省', '330900', '舟山市', 'Zhoushan Shi', 'ZOS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1096, '浙江省', '330901', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1097, '浙江省', '330902', '定海区', 'Dinghai Qu', 'DHQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1098, '浙江省', '330903', '普陀区', 'Putuo Qu', 'PTO');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1099, '浙江省', '330921', '岱山县', 'Daishan Xian', 'DSH');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1100, '浙江省', '330922', '嵊泗县', 'Shengsi Xian', 'SSZ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1101, '浙江省', '331000', '台州市', 'Taizhou Shi', 'TZZ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1102, '浙江省', '331001', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1103, '浙江省', '331002', '椒江区', 'Jiaojiang Qu', 'JJT');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1104, '浙江省', '331003', '黄岩区', 'Huangyan Qu', 'HYT');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1105, '浙江省', '331004', '路桥区', 'Luqiao Qu', 'LQT');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1106, '浙江省', '331021', '玉环县', 'Yuhuan Xian', 'YHN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1107, '浙江省', '331022', '三门县', 'Sanmen Xian', 'SMN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1108, '浙江省', '331023', '天台县', 'Tiantai Xian', 'TTA');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1109, '浙江省', '331024', '仙居县', 'Xianju Xian', 'XJU');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1110, '浙江省', '331081', '温岭市', 'Wenling Shi', 'WLS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1111, '浙江省', '331082', '临海市', 'Linhai Shi', 'LHI');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1112, '浙江省', '332500', '丽水地区', 'Lishui Diqu', 'LSD');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1113, '浙江省', '332501', '丽水市', 'Lishui Shi', 'LSS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1114, '浙江省', '332502', '龙泉市', 'Longquan Shi', 'LGQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1115, '浙江省', '332522', '青田县', 'Qingtian Xian', 'QDN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1116, '浙江省', '332523', '云和县', 'Yunhe Xian', 'YNH');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1117, '浙江省', '332525', '庆元县', 'Qingyuan Xian', 'QYX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1118, '浙江省', '332526', '缙云县', 'Jinyun Xian', 'JYP');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1119, '浙江省', '332527', '遂昌县', 'Suichang Xian', 'SCZ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1120, '浙江省', '332528', '松阳县', 'Songyang Xian', 'SGY');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1121, '浙江省', '332529', '景宁畲族自治县', 'Jingning Shezu Zizhixian', 'JGN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1122, '安徽省', '340000', '安徽省', 'Anhui Sheng', 'AH');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1123, '安徽省', '340100', '合肥市', 'Hefei Shi', 'HFE');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1124, '安徽省', '340101', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1125, '安徽省', '340102', '东市区', 'Dongshi Qu', 'DSI');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1126, '安徽省', '340103', '中市区', 'Zhongshi Qu', 'ZSH');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1127, '安徽省', '340104', '西市区', 'Xishi Qu', 'XSF');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1128, '安徽省', '340111', '郊区', 'Jiaoqu', 'JHF');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1129, '安徽省', '340121', '长丰县', 'Changfeng Xian', 'CFG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1130, '安徽省', '340122', '肥东县', 'Feidong Xian', 'FDO');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1131, '安徽省', '340123', '肥西县', 'Feixi Xian', 'FIX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1132, '安徽省', '340200', '芜湖市', 'Wuhu Shi', 'WHI');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1133, '安徽省', '340201', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1134, '安徽省', '340202', '镜湖区', 'Jinghu Qu', 'JHW');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1135, '安徽省', '340203', '马塘区', 'Matang Qu', 'MTQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1136, '安徽省', '340204', '新芜区', 'Xinwu Qu', 'XWW');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1137, '安徽省', '340207', '鸠江区', 'Jiujiang Qu', 'JJW');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1138, '安徽省', '340221', '芜湖县', 'Wuhu Xian', 'WHX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1139, '安徽省', '340222', '繁昌县', 'Fanchang Xian', 'FCH');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1140, '安徽省', '340223', '南陵县', 'Nanling Xian', 'NLX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1141, '安徽省', '340300', '蚌埠市', 'Bengbu Shi', 'BBU');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1142, '安徽省', '340301', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1143, '安徽省', '340302', '东市区', 'Dongshi Qu', 'DSB');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1144, '安徽省', '340303', '中市区', 'Zhongshi Qu', 'ZSI');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1145, '安徽省', '340304', '西市区', 'Xishi Qu', 'XBB');
commit;
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1146, '安徽省', '340311', '郊区', 'Jiaoqu', 'JBB');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1147, '安徽省', '340321', '怀远县', 'Huaiyuan Qu', 'HYW');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1148, '安徽省', '340322', '五河县', 'Wuhe Xian', 'WHE');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1149, '安徽省', '340323', '固镇县', 'Guzhen Xian', 'GZX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1150, '安徽省', '340400', '淮南市', 'Huainan Shi', 'HNS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1151, '安徽省', '340401', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1152, '安徽省', '340402', '大通区', 'Datong Qu', 'DTQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1153, '安徽省', '340403', '田家庵区', 'Tianjia,an Qu', 'TJA');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1154, '安徽省', '340404', '谢家集区', 'Xiejiaji Qu', 'XJJ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1155, '安徽省', '340405', '八公山区', 'Bagongshan Qu', 'BGS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1156, '安徽省', '340406', '潘集区', 'Panji Qu', 'PJI');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1157, '安徽省', '340421', '凤台区', 'Fengtai Qu', 'FTX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1158, '安徽省', '340500', '马鞍山市', 'Ma,anshan Shi', 'MAA');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1159, '安徽省', '340501', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1160, '安徽省', '340502', '金家庄区', 'Jinjiazhuang Qu', 'JJZ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1161, '安徽省', '340503', '花山区', 'Huashan Qu', 'HSM');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1162, '安徽省', '340504', '雨山区', 'Yushan Qu', 'YSQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1163, '安徽省', '340505', '向山区', 'Xiangshan Qu', 'XSM');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1164, '安徽省', '340521', '当涂县', 'Dangtu Xian', 'DTU');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1165, '安徽省', '340600', '淮北市', 'Huaibei Shi', 'HBE');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1166, '安徽省', '340601', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1167, '安徽省', '340602', '杜集区', 'Duji Qu', 'DJQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1168, '安徽省', '340603', '相山区', 'Xiangshan Qu', 'XSA');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1169, '安徽省', '340604', '烈山区', 'Lieshan Qu', 'LHB');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1170, '安徽省', '340621', '濉溪县', 'Suixi Xian', 'SXW');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1171, '安徽省', '340700', '铜陵市', 'Tongling Shi', 'TOL');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1172, '安徽省', '340701', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1173, '安徽省', '340702', '铜官山区', 'Tongguanshan Qu', 'TGQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1174, '安徽省', '340703', '狮子山区', 'Shizishan Qu', 'SZN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1175, '安徽省', '340711', '郊区', 'Jiaoqu', 'JTL');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1176, '安徽省', '340721', '铜陵县', 'Tongling Xian', 'TLX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1177, '安徽省', '340800', '安庆市', 'Anqing Shi', 'AQG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1178, '安徽省', '340801', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1179, '安徽省', '340802', '迎江区', 'Yingjiang Qu', 'YJQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1180, '安徽省', '340803', '大观区', 'Daguan Qu', 'DGQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1181, '安徽省', '340811', '郊区', 'Jiaoqu', 'JQA');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1182, '安徽省', '340822', '怀宁县', 'Huaining Xian', 'HNW');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1183, '安徽省', '340823', '枞阳县', 'Zongyang Xian', 'ZYW');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1184, '安徽省', '340824', '潜山县', 'Qianshan Xian', 'QSW');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1185, '安徽省', '340825', '太湖县', 'Taihu Xian', 'THU');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1186, '安徽省', '340826', '宿松县', 'Susong Xian', 'SUS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1187, '安徽省', '340827', '望江县', 'Wangjiang Xian', 'WJX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1188, '安徽省', '340828', '岳西县', 'Yuexi Xian', 'YXW');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1189, '安徽省', '340881', '桐城市', 'Tongcheng Shi', 'TCW');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1190, '安徽省', '341000', '黄山市', 'Huangshan Shi', 'HSN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1191, '安徽省', '341001', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1192, '安徽省', '341002', '屯溪区', 'Tunxi Qu', 'TXN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1193, '安徽省', '341003', '黄山区', 'Huangshan Qu', 'HSK');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1194, '安徽省', '341004', '徽州区', 'Huizhou Qu', 'HZQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1195, '安徽省', '341021', '歙县', 'She Xian', 'SEX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1196, '安徽省', '341022', '休宁县', 'Xiuning Xian', 'XUN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1197, '安徽省', '341023', '黟县', 'Yi Xian', 'YIW');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1198, '安徽省', '341024', '祁门县', 'Qimen Xian', 'QMN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1199, '安徽省', '341100', '滁州市', 'Chuzhou Shi', 'CUZ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1200, '安徽省', '341101', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1201, '安徽省', '341102', '琅琊区', 'Langya Qu', 'LYU');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1202, '安徽省', '341103', '南谯区', 'Nanqiao Qu', 'NQQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1203, '安徽省', '341122', '来安县', 'Lai,an Xian', 'LAX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1204, '安徽省', '341124', '全椒县', 'Quanjiao Xian', 'QJO');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1205, '安徽省', '341125', '定远县', 'Dingyuan Xian', 'DYW');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1206, '安徽省', '341126', '凤阳县', 'Fengyang Xian', 'FYG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1207, '安徽省', '341181', '天长市', 'Tianchang Shi', 'TNC');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1208, '安徽省', '341182', '明光市', 'Mingguang Shi', 'MGG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1209, '安徽省', '341200', '阜阳市', 'Fuyang Shi', 'FYS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1210, '安徽省', '341201', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1211, '安徽省', '341202', '颖州区', 'Yingzhou Qu', 'YGA');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1212, '安徽省', '341203', '颖东区', 'Yingdong Qu', 'YDO');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1213, '安徽省', '341204', '颖泉区', 'Yingquan Qu', 'YQQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1214, '安徽省', '341221', '临泉县', 'Linquan Xian', 'LQN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1215, '安徽省', '341222', '太和县', 'Taihe Xian', 'TIH');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1216, '安徽省', '341223', '涡阳县', 'Guoyang Xian', 'GOY');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1217, '安徽省', '341224', '蒙城县', 'Mengcheng Xian', 'MCX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1218, '安徽省', '341225', '阜南县', 'Funan Xian', 'FNX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1219, '安徽省', '341226', '颖上县', 'Yingshang Xian', 'YSW');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1220, '安徽省', '341227', '利辛县', 'Lixin Xian', 'LIX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1221, '安徽省', '341281', '亳州市', 'Bozhou Shi', 'BOZ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1222, '安徽省', '341282', '界首市', 'Jieshou Shi', 'JSW');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1223, '安徽省', '341300', '宿州市', 'Suzhou Shi', 'SUZ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1224, '安徽省', '341301', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1225, '安徽省', '341302', '墉桥区', 'Yongqiao Qu', 'YQO');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1226, '安徽省', '341321', '砀山县', 'Dangshan Xian', 'DSW');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1227, '安徽省', '341322', '萧县', 'Xiao Xian', 'XIO');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1228, '安徽省', '341323', '灵璧县', 'Lingbi Xian', 'LBI');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1229, '安徽省', '341324', '泗县', 'Si Xian ', 'SIX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1230, '安徽省', '342400', '六安地区', 'Liu,an Diqu', 'LAD');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1231, '安徽省', '342401', '六安市', 'Liu,an Shi', 'LAW');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1232, '安徽省', '342422', '寿县', 'Shou Xian', 'SHO');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1233, '安徽省', '342423', '霍邱县', 'Huoqiu Xian', 'HQI');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1234, '安徽省', '342425', '舒城县', 'Shucheng Xian', 'SCW');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1235, '安徽省', '342426', '金寨县', 'Jingzhai Xian', 'JZX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1236, '安徽省', '342427', '霍山县', 'Huoshan Xian', 'HOS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1237, '安徽省', '342500', '宣城地区', 'Xuancheng Diqu', 'XCD');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1238, '安徽省', '342501', '宣州市', 'Xuanzhou Shi', 'XZO');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1239, '安徽省', '342502', '宁国市', 'Ningguo Shi', 'NGU');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1240, '安徽省', '342522', '郎溪县', 'Langxi Xian', 'LGX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1241, '安徽省', '342523', '广德县', 'Guangde Xian', 'GGD');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1242, '安徽省', '342529', '泾县', 'Jing Xian', 'JXA');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1243, '安徽省', '342530', '旌德县', 'Jingde Xian', 'JDE');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1244, '安徽省', '342531', '绩溪县', 'Jixi Xian', 'JXW');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1245, '安徽省', '342600', '巢湖地区', 'Chaohu Diqu', 'CHD');
commit;
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1246, '安徽省', '342601', '巢湖市', 'Chaohu Shi', 'CAH');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1247, '安徽省', '342622', '庐江县', 'Lujiang Xian', 'LJG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1248, '安徽省', '342623', '无为县', 'Wuwei Xian', 'WWX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1249, '安徽省', '342625', '含山县', 'Hanshan Xian', 'HSW');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1250, '安徽省', '342626', '和县', 'He Xian ', 'HEX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1251, '安徽省', '342900', '池州地区', 'Chizhou Diqu', 'CZD');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1252, '安徽省', '342901', '贵池市', 'Guichi Shi', 'GCI');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1253, '安徽省', '342921', '东至县', 'Dongzhi Xian', 'DZI');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1254, '安徽省', '342922', '石台县', 'Shitai Xian', 'SHT');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1255, '安徽省', '342923', '青阳县', 'Qingyang Xian', 'QGY');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1256, '福建省', '350000', '福建省', 'Fujian Sheng ', 'FJ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1257, '福建省', '350100', '福州市', 'Fuzhou Shi', 'FOC');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1258, '福建省', '350101', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1259, '福建省', '350102', '鼓楼区', 'Gulou Qu', 'GLR');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1260, '福建省', '350103', '台江区', 'Taijiang Qu', 'TJQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1261, '福建省', '350104', '仓山区', 'Cangshan Qu', 'CSQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1262, '福建省', '350105', '马尾区', 'Mawei Qu', 'MWQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1263, '福建省', '350111', '晋安区', 'Jin,an Qu', 'JAF');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1264, '福建省', '350121', '闽侯县', 'Minhou Qu', 'MHO');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1265, '福建省', '350122', '连江县', 'Lianjiang Xian', 'LJF');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1266, '福建省', '350123', '罗源县', 'Luoyuan Xian', 'LOY');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1267, '福建省', '350124', '闽清县', 'Minqing Xian', 'MQG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1268, '福建省', '350125', '永泰县', 'Yongtai Xian', 'YTX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1269, '福建省', '350128', '平潭县', 'Pingtan Xian', 'PTN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1270, '福建省', '350181', '福清市', 'Fuqing Shi', 'FQS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1271, '福建省', '350182', '长乐市', 'Changle Shi', 'CLS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1272, '福建省', '350200', '厦门市', 'Xiamen Shi', 'XMN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1273, '福建省', '350201', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1274, '福建省', '350202', '鼓浪屿区', 'Gulangyu Qu', 'GLY');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1275, '福建省', '350203', '思明区', 'Siming Qu', 'SMQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1276, '福建省', '350204', '开元区', 'Kaiyuan Qu', 'KYQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1277, '福建省', '350205', '杏林区', 'Xinglin Qu', 'XLN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1278, '福建省', '350206', '湖里区', 'Huli Qu', 'HLQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1279, '福建省', '350211', '集美区', 'Jimei Qu', 'JMQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1280, '福建省', '350212', '同安区', 'Tong,an Qu', 'TAQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1281, '福建省', '350300', '莆田市', 'Putian Shi', 'PUT');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1282, '福建省', '350301', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1283, '福建省', '350302', '城厢区', 'Chengxiang Qu', 'CXP');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1284, '福建省', '350303', '涵江区', 'Hanjiang Qu', 'HJQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1285, '福建省', '350321', '莆田县', 'Putian Xian', 'PTX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1286, '福建省', '350322', '仙游县', 'Xianyou Xian', 'XYF');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1287, '福建省', '350400', '三明市', 'Sanming Shi', 'SMS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1288, '福建省', '350401', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1289, '福建省', '350402', '梅列区', 'Meilie Qu', 'MLQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1290, '福建省', '350403', '三元区', 'Sanyuan Qu', 'SYB');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1291, '福建省', '350421', '明溪县', 'Mingxi Xian', 'MXI');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1292, '福建省', '350423', '清流县', 'Qingliu Xian', 'QLX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1293, '福建省', '350424', '宁化县', 'Ninghua Xian', 'NGH');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1294, '福建省', '350425', '大田县', 'Datian Xian', 'DTM');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1295, '福建省', '350426', '尤溪县', 'Youxi Xian', 'YXF');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1296, '福建省', '350427', '沙县', 'Sha Xian', 'SAX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1297, '福建省', '350428', '将乐县', 'Jiangle Xian', 'JLE');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1298, '福建省', '350429', '泰宁县', 'Taining Xian', 'TNG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1299, '福建省', '350430', '建宁县', 'Jianning Xian', 'JNF');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1300, '福建省', '350481', '永安市', 'Yong,an Shi', 'YAF');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1301, '福建省', '350500', '泉州市', 'Quanzhou Shi', 'QZJ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1302, '福建省', '350501', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1303, '福建省', '350502', '鲤城区', 'Licheng Qu', 'LCQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1304, '福建省', '350503', '丰泽区', 'Fengze Qu', 'FZE');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1305, '福建省', '350504', '洛江区', 'Luojiang Qu', 'LJQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1306, '福建省', '350521', '惠安县', 'Hui,an Xian', 'HAF');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1307, '福建省', '350524', '安溪县', 'Anxi Xian', 'ANX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1308, '福建省', '350525', '永春县', 'Yongchun Xian', 'YCM');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1309, '福建省', '350526', '德化县', 'Dehua Xian', 'DHA');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1310, '福建省', '350527', '金门县', 'Jinmen Xian', 'JME');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1311, '福建省', '350581', '石狮市', 'Shishi Shi', 'SHH');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1312, '福建省', '350582', '晋江市', 'Jinjiang Shi', 'JJG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1313, '福建省', '350583', '南安市', 'Nan,an Shi', 'NAS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1314, '福建省', '350600', '漳州市', 'Zhangzhou Shi', 'ZZU');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1315, '福建省', '350601', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1316, '福建省', '350602', '芗城区', 'Xiangcheng Qu', 'XZZ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1317, '福建省', '350603', '龙文区', 'Longwen Qu', 'LWZ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1318, '福建省', '350622', '云霄县', 'Yunxiao Xian', 'YXO');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1319, '福建省', '350623', '漳浦县', 'Zhangpu Xian', 'ZPU');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1320, '福建省', '350624', '诏安县', 'Zhao,an Xian', 'ZAF');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1321, '福建省', '350625', '长泰县', 'Changtai Xian', 'CTA');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1322, '福建省', '350626', '东山县', 'Dongshan Xian', 'DSN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1323, '福建省', '350627', '南靖县', 'Nanjing Xian', 'NJX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1324, '福建省', '350628', '平和县', 'Pinghe Xian', 'PHE');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1325, '福建省', '350629', '华安县', 'Hua,an Xian', 'HAN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1326, '福建省', '350681', '龙海市', 'Longhai Shi', 'LHM');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1327, '福建省', '350700', '南平市', 'Nanping Shi', 'NPS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1328, '福建省', '350701', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1329, '福建省', '350702', '延平区', 'Yanping Qu', 'YPQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1330, '福建省', '350721', '顺昌县', 'Shunchang Xian', 'SCG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1331, '福建省', '350722', '浦城县', 'Pucheng Xian', 'PCX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1332, '福建省', '350723', '光泽县', 'Guangze Xian', 'GZE');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1333, '福建省', '350724', '松溪县', 'Songxi Xian', 'SOX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1334, '福建省', '350725', '政和县', 'Zhenghe Xian', 'ZGH');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1335, '福建省', '350781', '邵武市', 'Shaowu Shi', 'SWU');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1336, '福建省', '350782', '武夷山市', 'Wuyishan Shi', 'WUS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1337, '福建省', '350783', '建瓯市', 'Jian,ou Shi', 'JOU');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1338, '福建省', '350784', '建阳市', 'Jianyang Shi', 'JNY');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1339, '福建省', '350800', '龙岩市', 'Longyan Shi', 'LYF');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1340, '福建省', '350801', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1341, '福建省', '350802', '新罗区', 'Xinluo Qu', 'XNL');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1342, '福建省', '350821', '长汀县', 'Changting Xian', 'CTG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1343, '福建省', '350822', '永定县', 'Yongding Xian', 'YDI');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1344, '福建省', '350823', '上杭县', 'Shanghang Xian', 'SHF');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1345, '福建省', '350824', '武平县', 'Wuping Xian', 'WPG');
commit;
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1346, '福建省', '350825', '连城县', 'Liancheng Xian', 'LCF');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1347, '福建省', '350881', '漳平市', 'Zhangping Xian', 'ZGP');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1348, '福建省', '352200', '宁德地区', 'Ningde Diqu', 'NDD');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1349, '福建省', '352201', '宁德市', 'Ningde Shi', 'NDS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1350, '福建省', '352202', '福安市', 'Fu,an Shi', 'FAS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1351, '福建省', '352203', '福鼎市', 'Fuding Shi', 'FDG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1352, '福建省', '352225', '霞浦县', 'Xiapu Xian', 'XPU');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1353, '福建省', '352227', '古田县', 'Gutian Xian', 'GTN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1354, '福建省', '352228', '屏南县', 'Pingnan Xian', 'PNX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1355, '福建省', '352229', '寿宁县', 'Shouning Xian', 'SNF');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1356, '福建省', '352230', '周宁县', 'Zhouning Xian', 'ZNX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1357, '福建省', '352231', '柘荣县', 'Zherong Xian', 'ZRG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1358, '江西省', '360000', '江西省', 'Jiangxi Sheng', 'JX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1359, '江西省', '360100', '南昌市', 'Nanchang Shi', 'KHN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1360, '江西省', '360101', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1361, '江西省', '360102', '东湖区', 'Donghu Qu', 'DHU');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1362, '江西省', '360103', '西湖区', 'Xihu Qu ', 'XHQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1363, '江西省', '360104', '青云谱区', 'Qingyunpu Qu', 'QYP');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1364, '江西省', '360105', '湾里区', 'Wanli Qu', 'WLI');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1365, '江西省', '360111', '郊区', 'Jiaoqu', 'JQN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1366, '江西省', '360121', '南昌县', 'Nanchang Xian', 'NCA');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1367, '江西省', '360122', '新建县', 'Xinjian Xian', 'XJN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1368, '江西省', '360123', '安义县', 'Anyi Xian', 'AYI');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1369, '江西省', '360124', '进贤县', 'Jinxian Xian', 'JXX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1370, '江西省', '360200', '景德镇市', 'Jingdezhen Shi', 'JDZ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1371, '江西省', '360201', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1372, '江西省', '360202', '昌江区', 'Changjiang Qu', 'CJG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1373, '江西省', '360203', '珠山区', 'Zhushan Qu', 'ZSJ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1374, '江西省', '360222', '浮梁县', 'Fuliang Xian', 'FLX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1375, '江西省', '360281', '乐平市', 'Leping Shi', 'LEP');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1376, '江西省', '360300', '萍乡市', 'Pingxiang Shi', 'PXS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1377, '江西省', '360301', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1378, '江西省', '360302', '安源区', 'Anyuan Qu', 'AYQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1379, '江西省', '360313', '湘东区', 'Xiangdong Qu', 'XDG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1380, '江西省', '360321', '莲花县', 'Lianhua Xian', 'LHG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1381, '江西省', '360322', '上栗县', 'Shangli Xian', 'SLI');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1382, '江西省', '360323', '芦溪县', 'Lixi Xian', 'LXP');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1383, '江西省', '360400', '九江市', 'Jiujiang Shi', 'JIU');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1384, '江西省', '360401', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1385, '江西省', '360402', '庐山区', 'Lushan Qu', 'LSV');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1386, '江西省', '360403', '浔阳区', 'Xunyang Qu', 'XYC');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1387, '江西省', '360421', '九江县', 'Jiujiang Xian', 'JUJ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1388, '江西省', '360423', '武宁县', 'Wuning Xian', 'WUN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1389, '江西省', '360424', '修水县', 'Xiushui Xian', 'XSG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1390, '江西省', '360425', '永修县', 'Yongxiu Xian', 'YOX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1391, '江西省', '360426', '德安县', 'De,an Xian', 'DEA');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1392, '江西省', '360427', '星子县', 'Xingzi Xian', 'XZI');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1393, '江西省', '360428', '都昌县', 'Duchang Xian', 'DUC');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1394, '江西省', '360429', '湖口县', 'Hukou Xian', 'HUK');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1395, '江西省', '360430', '彭泽县', 'Pengze Xian', 'PZE');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1396, '江西省', '360481', '瑞昌市', 'Ruichang Shi', 'RCG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1397, '江西省', '360500', '新余市', 'Xinyu Shi', 'XYU');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1398, '江西省', '360501', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1399, '江西省', '360502', '渝水区', 'Yushui Qu', 'YSR');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1400, '江西省', '360521', '分宜县', 'Fenyi Xian', 'FYI');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1401, '江西省', '360606', '鹰潭市', 'Yingtan Shi', 'YTS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1402, '江西省', '360601', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1403, '江西省', '360602', '月湖区', 'Yuehu Qu', 'YHY');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1404, '江西省', '360622', '余江县', 'Yujiang Xian', 'YUJ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1405, '江西省', '360681', '贵溪市', 'Guixi Shi', 'GXS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1406, '江西省', '360700', '赣州市', 'Ganzhou Shi', 'GZH');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1407, '江西省', '360701', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1408, '江西省', '360702', '章贡区', 'Zhanggong Qu', 'ZGG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1409, '江西省', '360721', '赣县', 'Gan Xian', 'GXN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1410, '江西省', '360722', '信丰县', 'Xinfeng Xian ', 'XNF');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1411, '江西省', '360723', '大余县', 'Dayu Xian', 'DYX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1412, '江西省', '360724', '上犹县', 'Shangyou Xian', 'SYO');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1413, '江西省', '360725', '崇义县', 'Chongyi Xian', 'CYX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1414, '江西省', '360726', '安远县', 'Anyuan Xian', 'AYN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1415, '江西省', '360727', '龙南县', 'Longnan Xian', 'LNX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1416, '江西省', '360728', '定南县', 'Dingnan Xian', 'DNN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1417, '江西省', '360729', '全南县', 'Quannan Xian', 'QNN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1418, '江西省', '360730', '宁都县', 'Ningdu Xian', 'NDU');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1419, '江西省', '360731', '于都县', 'Yudu Xian', 'YUD');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1420, '江西省', '360732', '兴国县', 'Xingguo Xian', 'XGG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1421, '江西省', '360733', '会昌县', 'Huichang Xian', 'HIC');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1422, '江西省', '360734', '寻乌县', 'Xunwu Xian', 'XNW');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1423, '江西省', '360735', '石城县', 'Shicheng Xian', 'SIC');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1424, '江西省', '360781', '瑞金市', 'Ruijin Shi', 'RJS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1425, '江西省', '360782', '南康市', 'Nankang Shi', 'NNK');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1426, '江西省', '362200', '宜春地区', 'Yichun Diqu ', 'YCD');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1427, '江西省', '362201', '宜春市', 'Yichun Shi', 'YCN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1428, '江西省', '362202', '丰城市', 'Fengcheng Shi', 'FCS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1429, '江西省', '362203', '樟树市', 'Zhangshu Shi', 'ZSS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1430, '江西省', '362204', '高安市', 'Gao,an Shi', 'GAS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1431, '江西省', '362226', '奉新县', 'Fengxin Xian', 'FGX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1432, '江西省', '362227', '万载县', 'Wanzai Xian', 'WZA');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1433, '江西省', '362228', '上高县', 'Shanggao Xian', 'SGO');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1434, '江西省', '362229', '宜丰县', 'Yifeng Xian', 'YFG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1435, '江西省', '362232', '靖安县', 'Jing,an Xian', 'JGA');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1436, '江西省', '362233', '铜鼓县', 'Tonggu Xian', 'TGU');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1437, '江西省', '362300', '上饶地区', 'Shangrao Diqu', 'SRD');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1438, '江西省', '362301', '上饶市', 'Shangrao Shi', 'SRS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1439, '江西省', '362302', '德兴市', 'Dexing Shi', 'DEX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1440, '江西省', '362321', '上饶县', 'Shangrao Xian ', 'SRX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1441, '江西省', '362322', '广丰县', 'Guangfeng Xian', 'GFG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1442, '江西省', '362323', '玉山县', 'Yushan Xian', 'YUS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1443, '江西省', '362324', '铅山县', 'Qianshan Xian', 'YSG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1444, '江西省', '362325', '横峰县', 'Hengfeng Xian', 'HFG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1445, '江西省', '362326', '弋阳县', 'Yiyang Xian', 'YYB');
commit;
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1446, '江西省', '362329', '余干县', 'Yugan Xian', 'YUG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1447, '江西省', '362330', '波阳县', 'Boyang Xian', 'BYG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1448, '江西省', '362331', '万年县', 'Wannian Xian', 'WNI');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1449, '江西省', '362334', '婺源县', 'Wuyuan Xian', 'WUY');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1450, '江西省', '362400', '吉安地区', 'Ji,an Diqu', 'JAD');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1451, '江西省', '362401', '吉安市', 'Ji,an Shi', 'JAS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1452, '江西省', '362402', '井冈山市', 'Jinggangshan Shi', 'JGS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1453, '江西省', '362421', '吉安县', 'Ji,an Xian', 'JAX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1454, '江西省', '362422', '吉水县', 'Jishui Xian', 'JSG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1455, '江西省', '362423', '峡江县', 'Xiajiang Xian', 'XJG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1456, '江西省', '362424', '新干县', 'Xingan Xian', 'XGA');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1457, '江西省', '362425', '永丰县', 'Yongfeng Xian', 'YFX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1458, '江西省', '362426', '泰和县', 'Taihe Xian', 'THE');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1459, '江西省', '362427', '遂川县', 'Suichuan Xian', 'SCN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1460, '江西省', '362428', '万安县', 'Wan,an Xian', 'WAX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1461, '江西省', '362429', '安福县', 'Anfu Xian', 'AFU');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1462, '江西省', '362430', '永新县', 'Yongxin Xian ', 'YXG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1463, '江西省', '362432', '宁冈县', 'Ninggang Xian', 'NGG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1464, '江西省', '362500', '抚州地区', 'Fuzhou Diqu', 'FZD');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1465, '江西省', '362502', '临川市', 'Linchuan Shi', 'LCR');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1466, '江西省', '362522', '南城县', 'Nancheng Xian', 'NCE');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1467, '江西省', '362523', '黎川县', 'Lichuan Xian', 'LCP');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1468, '江西省', '362524', '南丰县', 'Nanfeng Xian', 'NFG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1469, '江西省', '362525', '崇仁县', 'Chongren Xian', 'CRN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1470, '江西省', '362526', '乐安县', 'Le,an Xian', 'LEA');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1471, '江西省', '362527', '宜黄县', 'Yihuang Xian', 'YHX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1472, '江西省', '362528', '金溪县', 'Jinxi Xian', 'JXF');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1473, '江西省', '362529', '资溪县', 'Zixi Xian', 'ZXI');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1474, '江西省', '362531', '东乡县', 'Dongxiang Xian', 'DGX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1475, '江西省', '362532', '广昌县', 'Guangchang Xian', 'GCG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1476, '山东省', '370000', '山东省', 'Shandong Sheng ', 'SD');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1477, '山东省', '370100', '济南市', 'Jinan Shi', 'TNA');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1478, '山东省', '370101', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1479, '山东省', '370102', '历下区', 'Lixia Qu', 'LXQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1480, '山东省', '370103', '市中区', 'Shizhong Qu', 'SZQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1481, '山东省', '370104', '槐荫区', 'Huaiyin Qu', 'HYF');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1482, '山东省', '370105', '天桥区', 'Tianqiao Qu', 'TQQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1483, '山东省', '370112', '历城区', 'Licheng Qu', 'LCZ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1484, '山东省', '370123', '长清县', 'Changqing Xian', 'CQG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1485, '山东省', '370124', '平阴县', 'Pingyin Xian', 'PYL');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1486, '山东省', '370125', '济阳县', 'Jiyang Xian', 'JYL');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1487, '山东省', '370126', '商河县', 'Shanghe Xian', 'SGH');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1488, '山东省', '370181', '章丘市', 'Zhangqiu Shi', 'ZQS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1489, '山东省', '370200', '青岛市', 'Qingdao Shi', 'TAO');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1490, '山东省', '370201', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1491, '山东省', '370202', '市南区', 'Shinan Qu', 'SNQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1492, '山东省', '370203', '市北区', 'Shibei Qu', 'SBQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1493, '山东省', '370205', '四方区', 'Sifang Qu', 'SFQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1494, '山东省', '370211', '黄岛区', 'Huangdao Qu', 'HDO');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1495, '山东省', '370212', '崂山区', 'Laoshan Qu', 'LQD');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1496, '山东省', '370213', '李沧区', 'Licang Qu', 'LCT');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1497, '山东省', '370214', '城阳区', 'Chengyang Qu', 'CEY');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1498, '山东省', '370281', '胶州市', 'Jiaozhou Shi', 'JZS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1499, '山东省', '370282', '即墨市', 'Jimo Shi', 'JMO');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1500, '山东省', '370283', '平度市', 'Pingdu Shi', 'PDU');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1501, '山东省', '370284', '胶南市', 'Jiaonan Shi', 'JNS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1502, '山东省', '370285', '莱西市', 'Laixi Shi', 'LXE');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1503, '山东省', '370300', '淄博市', 'Zibo Shi', 'ZBO');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1504, '山东省', '370301', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1505, '山东省', '370302', '淄川区', 'Zichuan Qu', 'ZCQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1506, '山东省', '370303', '张店区', 'Zhangdian Qu', 'ZDQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1507, '山东省', '370304', '博山区', 'Boshan Qu', 'BSZ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1508, '山东省', '370305', '临淄区', 'Linzi Qu', 'LZQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1509, '山东省', '370306', '周村区', 'Zhoucun Qu', 'ZCN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1510, '山东省', '370321', '桓台县', 'Huantai Xian', 'HTL');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1511, '山东省', '370322', '高青县', 'Gaoqing Xian', 'GQG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1512, '山东省', '370323', '沂源县', 'Yiyuan Xian', 'YIY');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1513, '山东省', '370400', '枣庄市', 'Zaozhuang Shi', 'ZZG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1514, '山东省', '370401', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1515, '山东省', '370402', '市中区', 'Shizhong Qu', 'SZZ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1516, '山东省', '370403', '薛城区', 'Xuecheng Qu', 'XEC');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1517, '山东省', '370404', '峄城区', 'Yicheng Qu', 'YZZ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1518, '山东省', '370405', '台儿庄区', 'Tai,erzhuang Qu', 'TEZ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1519, '山东省', '370406', '山亭区', 'Shanting Qu', 'STG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1520, '山东省', '370481', '滕州市', 'Tengzhou Shi', 'TZO');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1521, '山东省', '370500', '东营市', 'Dongying Shi', 'DYG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1522, '山东省', '370501', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1523, '山东省', '370502', '东营区', 'Dongying Qu', 'DYQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1524, '山东省', '370503', '河口区', 'Hekou Qu', 'HKO');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1525, '山东省', '370521', '垦利县', 'Kenli Xian', 'KLI');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1526, '山东省', '370522', '利津县', 'Lijin Xian', 'LJN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1527, '山东省', '370523', '广饶县', 'Guangrao Xian ', 'GRO');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1528, '山东省', '370600', '烟台市', 'Yantai Shi', 'YNT');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1529, '山东省', '370601', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1530, '山东省', '370602', '芝罘区', 'Zhifu Qu', 'ZFQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1531, '山东省', '370611', '福山区', 'Fushan Qu', 'FUS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1532, '山东省', '370612', '牟平区', 'Muping Qu', 'MPQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1533, '山东省', '370613', '莱山区', 'Laishan Qu', 'LYT');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1534, '山东省', '370634', '长岛县', 'Changdao Xian', 'CDO');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1535, '山东省', '370681', '龙口市', 'Longkou Shi', 'LKU');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1536, '山东省', '370682', '莱阳市', 'Laiyang Shi', 'LYD');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1537, '山东省', '370683', '莱州市', 'Laizhou Shi', 'LZG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1538, '山东省', '370684', '蓬莱市', 'Penglai Shi', 'PLI');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1539, '山东省', '370685', '招远市', 'Zhaoyuan Shi', 'ZYL');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1540, '山东省', '370686', '栖霞市', 'Qixia Shi', 'QXS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1541, '山东省', '370687', '海阳市', 'Haiyang Shi', 'HYL');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1542, '山东省', '370700', '潍坊市', 'Weifang Shi', 'WEF');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1543, '山东省', '370701', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1544, '山东省', '370702', '潍城区', 'Weicheng Qu', 'WCG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1545, '山东省', '370703', '寒亭区', 'Hanting Qu', 'HNT');
commit;
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1546, '山东省', '370704', '坊子区', 'Fangzi Qu', 'FZQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1547, '山东省', '370705', '奎文区', 'Kuiwen Qu', 'KWN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1548, '山东省', '370724', '临朐县', 'Linqu Xian', 'LNQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1549, '山东省', '370725', '昌乐县', 'Changle Xian', 'CLX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1550, '山东省', '370781', '青州市', 'Qingzhou Shi', 'QGZ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1551, '山东省', '370782', '诸城市', 'Zhucheng Shi', 'ZCL');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1552, '山东省', '370783', '寿光市', 'Shouguang Shi', 'SGG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1553, '山东省', '370784', '安丘市', 'Anqiu Shi', 'AQU');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1554, '山东省', '370785', '高密市', 'Gaomi Shi', 'GMI');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1555, '山东省', '370786', '昌邑市', 'Changyi Shi', 'CYL');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1556, '山东省', '370800', '济宁市', 'Jining Shi', 'JNG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1557, '山东省', '370801', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1558, '山东省', '370802', '市中区', 'Shizhong Qu', 'SZU');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1559, '山东省', '370811', '任城区', 'Rencheng Qu', 'RCQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1560, '山东省', '370826', '微山县', 'Weishan Xian', 'WSA');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1561, '山东省', '370827', '鱼台县', 'Yutai Xian', 'YTL');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1562, '山东省', '370828', '金乡县', 'Jinxiang Xian', 'JXG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1563, '山东省', '370829', '嘉祥县', 'Jiaxiang Xian', 'JXP');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1564, '山东省', '370830', '汶上县', 'Wenshang Xian', 'WNS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1565, '山东省', '370831', '泗水县', 'Sishui Xian', 'SSH');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1566, '山东省', '370832', '梁山县', 'Liangshan Xian', 'LSN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1567, '山东省', '370881', '曲阜市', 'Qufu Shi', 'QFU');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1568, '山东省', '370882', '兖州市', 'Yanzhou Shi', 'YZL');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1569, '山东省', '370883', '邹城市', 'Zoucheng Shi', 'ZCG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1570, '山东省', '370900', '泰安市', 'Tai,an Shi', 'TAI');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1571, '山东省', '370901', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1572, '山东省', '370902', '泰山区', 'Taishan Qu', 'TSQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1573, '山东省', '370911', '郊区', 'Jiaoqu', 'JQT');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1574, '山东省', '370921', '宁阳县', 'Ningyang Xian', 'NGY');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1575, '山东省', '370923', '东平县', 'Dongping Xian', 'DPG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1576, '山东省', '370982', '新泰市', 'Xintai Shi', 'XTA');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1577, '山东省', '370983', '肥城市', 'Feicheng Shi', 'FEC');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1578, '山东省', '371000', '威海市', 'Weihai Shi', 'WEH');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1579, '山东省', '371001', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1580, '山东省', '371002', '环翠区', 'Huancui Qu', 'HNC');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1581, '山东省', '371081', '文登市', 'Wendeng Shi', 'WDS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1582, '山东省', '371082', '荣城市', 'Rongcheng Shi', 'RCS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1583, '山东省', '371083', '乳山市', 'Rushan Shi', 'RSN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1584, '山东省', '371100', '日照市', 'Rizhao Shi', 'RZH');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1585, '山东省', '371101', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1586, '山东省', '371102', '东港区', 'Donggang Qu', 'DGR');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1587, '山东省', '371121', '五莲县', 'Wulian Xian', 'WLN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1588, '山东省', '371122', '莒县', 'Ju Xian', 'JUX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1589, '山东省', '371200', '莱芜市', 'Laiwu Shi', 'LWS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1590, '山东省', '371201', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1591, '山东省', '371202', '莱城区', 'Laicheng Qu', 'LAC');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1592, '山东省', '371203', '钢城区', 'Gangcheng Qu', 'GCQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1593, '山东省', '371300', '临沂市', 'Linyi Shi', 'LYI');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1594, '山东省', '371301', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1595, '山东省', '371302', '兰山区', 'Lanshan Qu', 'LLS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1596, '山东省', '371311', '罗庄区', 'Luozhuang Qu', 'LZU');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1597, '山东省', '371312', '河东区', 'Hedong Qu', 'HDL');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1598, '山东省', '371321', '沂南县', 'Yinan Xian', 'YNN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1599, '山东省', '371322', '郯城县', 'Tancheng Xian', 'TCE');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1600, '山东省', '371323', '沂水县', 'Yishui Xian', 'YIS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1601, '山东省', '371324', '苍山县', 'Cangshan Xian', 'CSH');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1602, '山东省', '371325', '费县', 'Fei Xian', 'FEI');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1603, '山东省', '371326', '平邑县', 'Pingyi Xian', 'PYI');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1604, '山东省', '371327', '莒南县', 'Junan Xian', 'JNB');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1605, '山东省', '371328', '蒙阴县', 'Mengyin Xian', 'MYL');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1606, '山东省', '371329', '临沭县', 'Linshu Xian', 'LSP');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1607, '山东省', '371400', '德州市', 'Dezhou Shi', 'DZS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1608, '山东省', '371401', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1609, '山东省', '371402', '德城区', 'Decheng Qu', 'DCD');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1610, '山东省', '371421', '陵县', 'Ling Xian', 'LXL');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1611, '山东省', '371422', '宁津县', 'Ningjin Xian', 'NGJ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1612, '山东省', '371423', '庆云县', 'Qingyun Xian', 'QYL');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1613, '山东省', '371424', '临邑县', 'Linyi xian', 'LYM');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1614, '山东省', '371425', '齐河县', 'Qihe Xian', 'QIH');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1615, '山东省', '371426', '平原县', 'Pingyuan Xian', 'PYN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1616, '山东省', '371427', '夏津县', 'Xiajin Xian', 'XAJ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1617, '山东省', '371428', '武城县', 'Wucheng Xian', 'WUC');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1618, '山东省', '371481', '乐陵市', 'Leling Shi', 'LEL');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1619, '山东省', '371482', '禹城市', 'Yucheng Shi', 'YCL');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1620, '山东省', '371500', '聊城市', 'Liaocheng Shi', 'LCH');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1621, '山东省', '371501', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1622, '山东省', '371502', '东昌府区', 'Dongchangfu Qu', 'DCF');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1623, '山东省', '371521', '阳谷县', 'Yanggu Xian ', 'YGU');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1624, '山东省', '371522', '莘县', 'Shen Xian', 'SHN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1625, '山东省', '371523', '茌平县', 'Chiping Xian ', 'CPG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1626, '山东省', '371524', '东阿县', 'Dong,e Xian', 'DGE');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1627, '山东省', '371525', '冠县', 'Guan Xian', 'GXL');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1628, '山东省', '371526', '高唐县', 'Gaotang Xian', 'GTG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1629, '山东省', '371581', '临清市', 'Linqing Xian', 'LQS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1630, '山东省', '372300', '滨州地区', 'Binzhou Diqu ', 'BNZ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1631, '山东省', '372301', '滨州市', 'Binzhou Shi', 'BZH');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1632, '山东省', '372321', '惠民县', 'Huimin Xian', 'HMN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1633, '山东省', '372323', '阳信县', 'Yangxin Xian', 'YXN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1634, '山东省', '372324', '无棣县', 'Wudi Xian', 'WDI');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1635, '山东省', '372325', '沾化县', 'Zhanhua Xian', 'ZHU');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1636, '山东省', '372328', '博兴县', 'Boxing Xian', 'BOX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1637, '山东省', '372330', '邹平县', 'Zouping Xian', 'ZOP');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1638, '山东省', '372900', '荷泽地区', 'Heze Diqu', 'HZE');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1639, '山东省', '372901', '菏泽市', 'Heze Shi', 'HZS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1640, '山东省', '372922', '曹县', 'Cao Xian', 'CAO');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1641, '山东省', '372923', '定陶县', 'Dingtao Xian', 'DGT');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1642, '山东省', '372924', '成武县', 'Chengwu Xian', 'CWX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1643, '山东省', '372925', '单县', 'Shan Xian', 'SXN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1644, '山东省', '372926', '巨野县', 'Juye Xian', 'JYE');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1645, '山东省', '372928', '郓城县', 'Yuncheng Xian', 'YCR');
commit;
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1646, '山东省', '372929', '鄄城县', 'Juancheng Xian', 'JNC');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1647, '山东省', '372930', '东明县', 'Dongming Xian', 'DMG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1648, '河南省', '410000', '河南省', 'Henan Sheng', 'HA');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1649, '河南省', '410100', '郑州市', 'Zhengzhou Shi', 'CGO');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1650, '河南省', '410101', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1651, '河南省', '410102', '中原区', 'Zhongyuan Qu', 'ZYQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1652, '河南省', '410103', '二七区', 'Erqi Qu', 'EQQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1653, '河南省', '410104', '管城回族区', 'Guancheng Huizu Qu', 'GCH');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1654, '河南省', '410105', '金水区', 'Jinshui Qu', 'JSU');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1655, '河南省', '410106', '上街区', 'Shangjie Qu', 'SJE');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1656, '河南省', '410108', '邙山区', 'Mangshan Qu', 'MSQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1657, '河南省', '410122', '中牟县', 'Zhongmou Xian', 'ZMO');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1658, '河南省', '410181', '巩义市', 'Gongyi Shi', 'GYI');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1659, '河南省', '410182', '荥阳市', 'Xingyang Shi', 'XYK');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1660, '河南省', '410183', '新密市', 'Xinmi Shi', 'XMI');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1661, '河南省', '410184', '新郑市', 'Xinzheng Shi', 'XZG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1662, '河南省', '410185', '登丰市', 'Dengfeng Shi', 'DFY');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1663, '河南省', '410200', '开封市', 'Kaifeng Shi', 'KFS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1664, '河南省', '410201', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1665, '河南省', '410202', '龙亭区', 'Longting Qu', 'LTK');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1666, '河南省', '410203', '顺河回族区', 'Shunhe Huizu Qu', 'SHR');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1667, '河南省', '410204', '鼓楼区', 'Gulou Qu', 'GLK');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1668, '河南省', '410205', '南关区', 'Nanguan Qu', 'NGK');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1669, '河南省', '410211', '郊区', 'Jiaoqu', 'JQK');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1670, '河南省', '410221', '杞县', 'Qi Xian', 'QIX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1671, '河南省', '410222', '通许县', 'Tongxu Xian', 'TXY');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1672, '河南省', '410223', '尉氏县', 'Weishi Xian', 'WSI');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1673, '河南省', '410224', '开封县', 'Kaifeng Xian', 'KFX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1674, '河南省', '410225', '兰考县', 'Lankao Xian', 'LKA');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1675, '河南省', '410300', '洛阳市', 'Luoyang Shi', 'LYA');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1676, '河南省', '410301', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1677, '河南省', '410302', '老城区', 'Laocheng Qu', 'LLY');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1678, '河南省', '410303', '西工区', 'Xigong Qu', 'XGL');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1679, '河南省', '410304', '壥河回族区', 'Chanhe Huizu Qu', 'CHH');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1680, '河南省', '410305', '涧西区', 'Jianxi Qu', 'JXL');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1681, '河南省', '410306', '吉利区', 'Jili Qu', 'JLL');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1682, '河南省', '410311', '郊区', 'Jiaoqu', 'JQL');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1683, '河南省', '410322', '孟津县', 'Mengjin Xian', 'MGJ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1684, '河南省', '410323', '新安县', 'Xin,an Xian', 'XAX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1685, '河南省', '410324', '栾川县', 'Luanchuan Xian', 'LCK');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1686, '河南省', '410325', '嵩县', 'Song Xian', 'SON');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1687, '河南省', '410326', '汝阳县', 'Ruyang Xian', 'RUY');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1688, '河南省', '410327', '宜阳县', 'Yiyang Xian', 'YYY');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1689, '河南省', '410328', '洛宁县', 'Luoning Xian', 'LNI');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1690, '河南省', '410329', '伊川县', 'Yichuan Xian', 'YCZ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1691, '河南省', '410381', '偃师市', 'Yanshi Shi', 'YST');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1692, '河南省', '410400', '平顶山市', 'Pingdingshan Shi', 'PDS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1693, '河南省', '410401', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1694, '河南省', '410402', '新华区', 'Xinhua Qu', 'XHP');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1695, '河南省', '410403', '卫东区', 'Weidong Qu', 'WDG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1696, '河南省', '410404', '石龙区', 'Shilong Qu', 'SIL');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1697, '河南省', '410411', '湛河区', 'Zhanhe Qu', 'ZHQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1698, '河南省', '410421', '宝丰县', 'Baofeng Xian', 'BFG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1699, '河南省', '410422', '叶县', 'Ye Xian', 'YEX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1700, '河南省', '410423', '鲁山县', 'Lushan Xian', 'LUS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1701, '河南省', '410425', '郏县', 'Jia Xian', 'JXY');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1702, '河南省', '410481', '舞钢市', 'Wugang Shi', 'WGY');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1703, '河南省', '410482', '汝州市', 'Ruzhou Shi', 'RZO');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1704, '河南省', '410500', '安阳市', 'Anyang Shi', 'AYS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1705, '河南省', '410501', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1706, '河南省', '410502', '文峰区', 'Wenfeng Qu', 'WFQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1707, '河南省', '410503', '北关区', 'Beiguan Qu', 'BGQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1708, '河南省', '410504', '铁西区', 'Tiexi Qu', 'TXA');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1709, '河南省', '410511', '郊区', 'Jiaoqu', 'JQU');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1710, '河南省', '410522', '安阳县', 'Anyang Xian', 'AYX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1711, '河南省', '410523', '汤阴县', 'Tangyin Xian', 'TYI');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1712, '河南省', '410526', '滑县', 'Hua Xian', 'HUA');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1713, '河南省', '410527', '内黄县', 'Neihuang Xian', 'NHG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1714, '河南省', '410581', '林州市', 'Linzhou Shi', 'LZY');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1715, '河南省', '410600', '鹤壁市', 'Hebi Shi', 'HBS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1716, '河南省', '410601', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1717, '河南省', '410602', '鹤山区', 'Heshan Qu', 'HSF');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1718, '河南省', '410603', '山城区', 'Shancheng Qu', 'SCB');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1719, '河南省', '410611', '郊区', 'Jiaoqu', 'JHB');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1720, '河南省', '410621', '浚县', 'Xun Xian', 'XUX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1721, '河南省', '410622', '淇县', 'Qi Xian', 'QXY');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1722, '河南省', '410700', '新乡市', 'Xinxiang Shi', 'XXS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1723, '河南省', '410701', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1724, '河南省', '410702', '红旗区', 'Hongqi Qu', 'HQQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1725, '河南省', '410703', '新华区', 'Xinhua Qu', 'XHR');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1726, '河南省', '410704', '北站区', 'Beizhan Qu', 'BZQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1727, '河南省', '410711', '郊区', 'Jiaoqu', 'JQX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1728, '河南省', '410721', '新乡县', 'Xinxiang Xian', 'XXX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1729, '河南省', '410724', '获嘉县', 'Huojia Xian', 'HOJ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1730, '河南省', '410725', '原阳县', 'Yuanyang Xian', 'YYA');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1731, '河南省', '410726', '延津县', 'Yanjin Xian', 'YJN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1732, '河南省', '410727', '封丘县', 'Fengqiu Xian', 'FQU');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1733, '河南省', '410728', '长垣县', 'Changyuan Xian', 'CYU');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1734, '河南省', '410781', '卫辉市', 'Weihui Shi', 'WHS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1735, '河南省', '410782', '辉县市', 'Huixian Shi', 'HXS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1736, '河南省', '410800', '焦作市', 'Jiaozuo Shi', 'JZY');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1737, '河南省', '410801', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1738, '河南省', '410802', '解放区', 'Jiefang Qu', 'JFQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1739, '河南省', '410803', '中站区', 'Zhongzhan Qu', 'ZZQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1740, '河南省', '410804', '马村区', 'Macun Qu', 'MCQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1741, '河南省', '410811', '山阳区', 'Shanyang Qu', 'SYC');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1742, '河南省', '410821', '修武县', 'Xiuwu Xian', 'XUW');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1743, '河南省', '410822', '博爱县', 'Bo,ai Xian', 'BOA');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1744, '河南省', '410823', '武陟县', 'Wuzhi Xian', 'WZI');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1745, '河南省', '410825', '温县', 'Wen Xian', 'WEN');
commit;
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1746, '河南省', '410881', '济源市', 'Jiyuan Shi', 'JYY');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1747, '河南省', '410882', '沁阳市', 'Qinyang Shi', 'QYS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1748, '河南省', '410883', '孟州市', 'Mengzhou Shi', 'MZO');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1749, '河南省', '410900', '濮阳市', 'Puyang Shi', 'PYS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1750, '河南省', '410901', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1751, '河南省', '410902', '市区', 'Shiqu', 'SIQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1752, '河南省', '410922', '清丰县', 'Qingfeng Xian', 'QFG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1753, '河南省', '410923', '南乐县', 'Nanle Xian', 'NLE');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1754, '河南省', '410926', '范县', 'Fan Xian', 'FAX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1755, '河南省', '410927', '台前县', 'Taiqian Xian', 'TQN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1756, '河南省', '410928', '濮阳县', 'Puyang Xian', 'PUY');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1757, '河南省', '411000', '许昌市', 'Xuchang Shi', 'XCS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1758, '河南省', '411001', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1759, '河南省', '411002', '魏都区', 'Weidu Qu', 'WED');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1760, '河南省', '411023', '许昌县', 'Xuchang Xian', 'XUC');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1761, '河南省', '411024', '鄢陵县', 'Yanling Xian', 'YLY');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1762, '河南省', '411025', '襄城县', 'Xiangcheng Xian', 'XAC');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1763, '河南省', '411081', '禹州市', 'Yuzhou Shi', 'YUZ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1764, '河南省', '411082', '长葛市', 'Changge Shi', 'CGE');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1765, '河南省', '411100', '漯河市', 'Luohe Shi', 'LHS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1766, '河南省', '411101', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1767, '河南省', '411102', '源汇区', 'Yuanhui Qu', 'YHI');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1768, '河南省', '411121', '舞阳县', 'Wuyang Xian', 'WYG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1769, '河南省', '411122', '临颍县', 'Linying Xian', 'LNY');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1770, '河南省', '411123', '郾城县', 'Yancheng Xian', 'YNC');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1771, '河南省', '411200', '三门峡市', 'Sanmenxia Shi', 'SMX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1772, '河南省', '411201', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1773, '河南省', '411202', '湖滨区', 'Hubin Qu', 'HBI');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1774, '河南省', '411221', '渑池县', 'Mianchi Xian', 'MCI');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1775, '河南省', '411222', '陕县', 'Shan Xian', 'SHX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1776, '河南省', '411224', '卢氏县', 'Lushi Xian', 'LUU');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1777, '河南省', '411281', '义马市', 'Yima Shi', 'YMA');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1778, '河南省', '411282', '灵宝市', 'Lingbao Shi', 'LBS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1779, '河南省', '411300', '南阳市', 'Nanyang Shi', 'NYS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1780, '河南省', '411301', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1781, '河南省', '411302', '宛城区', 'Wancheng Qu', 'WCN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1782, '河南省', '411303', '卧龙区', 'Wolong Qu', 'WOL');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1783, '河南省', '411321', '南召县', 'Nanzhao Xian', 'NZO');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1784, '河南省', '411322', '方城县', 'Fangcheng Xian', 'FCX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1785, '河南省', '411323', '西峡县', 'Xixia Xian', 'XXY');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1786, '河南省', '411324', '镇平县', 'Zhenping Xian', 'ZPX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1787, '河南省', '411325', '内乡县', 'Neixiang Xian', 'NXG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1788, '河南省', '411326', '淅川县', 'Xichuan Xian', 'XCY');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1789, '河南省', '411327', '社旗县', 'Sheqi Xian', 'SEQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1790, '河南省', '411328', '唐河县', 'Tanghe Xian', 'TGH');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1791, '河南省', '411329', '新野县', 'Xinye Xian', 'XYE');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1792, '河南省', '411330', '桐柏县', 'Tongbai Xian', 'TBX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1793, '河南省', '411381', '邓州市', 'Dengzhou Shi', 'DGZ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1794, '河南省', '411400', '商丘市', 'Shangqiu Shi', 'SQS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1795, '河南省', '411401', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1796, '河南省', '411402', '梁园区', 'Liangyuan Qu', 'LYY');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1797, '河南省', '411403', '睢阳区', 'Suiyang Qu', 'SYA');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1798, '河南省', '411421', '民权县', 'Minquan Xian', 'MQY');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1799, '河南省', '411422', '睢县', 'Sui Xian', 'SUI');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1800, '河南省', '411423', '宁陵县', 'Ningling Xian', 'NGL');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1801, '河南省', '411424', '柘城县', 'Zhecheng Xian', 'ZHC');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1802, '河南省', '411425', '虞城县', 'Yucheng Xian', 'YUC');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1803, '河南省', '411426', '夏邑县', 'Xiayi Xian', 'XAY');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1804, '河南省', '411481', '永城市', 'Yongcheng Shi', 'YOC');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1805, '河南省', '411500', '信阳市', 'Xinyang Shi', 'XYG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1806, '河南省', '411501', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1807, '河南省', '411502', '浉河区', 'Shihe Qu', 'SHU');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1808, '河南省', '411503', '平桥区', 'Pingqiao Qu', 'PQQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1809, '河南省', '411521', '罗山县', 'Luoshan Xian', 'LSE');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1810, '河南省', '411522', '光山县', 'Guangshan Xian', 'GSX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1811, '河南省', '411523', '新县', 'Xin Xian', 'XXI');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1812, '河南省', '411524', '商城县', 'Shangcheng Xian', 'SCX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1813, '河南省', '411525', '固始县', 'Gushi Xian', 'GSI');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1814, '河南省', '411526', '潢川县', 'Huangchuan Xian', 'HCU');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1815, '河南省', '411527', '淮滨县', 'Huaibin Xian', 'HBN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1816, '河南省', '411528', '息县', 'Xi Xian', 'XIX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1817, '河南省', '412700', '周口地区', 'Zhoukou Diqu', 'ZKD');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1818, '河南省', '412701', '周口市', 'Zhoukou Shi', 'ZKS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1819, '河南省', '412702', '项城市', 'Xiangcheng Shi', 'XGC');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1820, '河南省', '412721', '扶沟县', 'Fugou Xian', 'FUG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1821, '河南省', '412722', '西华县', 'Xihua Xian', 'XIH');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1822, '河南省', '412723', '商水县', 'Shangshui Xian', 'SSU');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1823, '河南省', '412724', '太康县', 'Taikang Xian', 'TKG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1824, '河南省', '412725', '鹿邑县', 'Luyi Xian', 'LUY');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1825, '河南省', '412726', '郸城县', 'Dancheng Xian', 'DNC');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1826, '河南省', '412727', '淮阳县', 'Huaiyang Xian', 'HYG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1827, '河南省', '412728', '沈丘县', 'Shenqiu Xian', 'SQU');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1828, '河南省', '412800', '驻马店地区', 'Zhumadian Diqu', 'ZMQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1829, '河南省', '412801', '驻马店市', 'Zhumadian Shi', 'ZMD');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1830, '河南省', '412821', '确山县', 'Queshan Xian', 'QSA');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1831, '河南省', '412822', '泌阳县', 'Biyang Xian', 'BYY');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1832, '河南省', '412823', '遂平县', 'Suiping Xian', 'SUP');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1833, '河南省', '412824', '西平县', 'Xiping Xian', 'XIP');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1834, '河南省', '412825', '上蔡县', 'Shangcai Xian', 'SGC');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1835, '河南省', '412826', '汝南县', 'Runan Xian', 'RNN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1836, '河南省', '412827', '平舆县', 'Pingyu Xian', 'PYX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1837, '河南省', '412828', '新蔡县', 'Xincai Xian', 'XNC');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1838, '河南省', '412829', '正阳县', 'Zhengyang Xian', 'ZGY');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1839, '湖北省', '420000', '湖北省', 'Hubei Sheng', 'HB');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1840, '湖北省', '420100', '武汉市', 'Wuhan Shi', 'WUH');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1841, '湖北省', '420101', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1842, '湖北省', '420102', '江岸区', 'Jiang,an Qu', 'JAA');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1843, '湖北省', '420103', '江汉区', 'Jianghan Qu', 'JHN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1844, '湖北省', '420104', '硚口区', 'Qiaokou Qu', 'QKQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1845, '湖北省', '420105', '汉阳区', 'Hanyang Qu', 'HYA');
commit;
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1846, '湖北省', '420106', '武昌区', 'Wuchang Qu', 'WCQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1847, '湖北省', '420107', '青山区', 'Qingshan Qu', 'QSN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1848, '湖北省', '420111', '洪山区', 'Hongshan Qu', 'HSQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1849, '湖北省', '420112', '东西湖区', 'Dongxihu Qu', 'DXH');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1850, '湖北省', '420113', '汉南区', 'Hannan Qu', 'HNQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1851, '湖北省', '420114', '蔡甸区', 'Caidian Qu', 'CDN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1852, '湖北省', '420115', '江夏区', 'Jiangxia Qu', 'JXQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1853, '湖北省', '420116', '黄陂区', 'Huangpi Qu', 'HPI');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1854, '湖北省', '420117', '新洲区', 'Xinzhou Qu', 'XNZ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1855, '湖北省', '420200', '黄石市', 'Huangshi Shi', 'HIS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1856, '湖北省', '420201', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1857, '湖北省', '420202', '黄石港区', 'Huangshigang Qu', 'HSG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1858, '湖北省', '420203', '石灰窑区', 'Shihuiyao Qu', 'SHY');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1859, '湖北省', '420204', '下陆区', 'Xialu Qu', 'XAL');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1860, '湖北省', '420205', '铁山区', 'Tieshan Qu', 'TSH');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1861, '湖北省', '420222', '阳新县', 'Yangxin Xian', 'YXE');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1862, '湖北省', '420281', '大冶市', 'Daye Shi', 'DYE');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1863, '湖北省', '420300', '十堰市', 'Shiyan Shi', 'SYE');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1864, '湖北省', '420301', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1865, '湖北省', '420302', '茅箭区', 'Maojian Qu', 'MJN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1866, '湖北省', '420303', '张湾区', 'Zhangwan Qu', 'ZWQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1867, '湖北省', '420321', '郧县', 'Yun Xian', 'YUN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1868, '湖北省', '420322', '郧西县', 'Yunxi Xian', 'YNX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1869, '湖北省', '420323', '竹山县', 'Zhushan Xian', 'ZHS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1870, '湖北省', '420324', '竹溪县', 'Zhuxi Xian', 'ZXX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1871, '湖北省', '420325', '房县', 'Fang Xian', 'FAG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1872, '湖北省', '420381', '丹江口市', 'Danjiangkou Shi', 'DJK');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1873, '湖北省', '420500', '宜昌市', 'Yichang Shi', 'YCO');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1874, '湖北省', '420501', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1875, '湖北省', '420502', '西陵区', 'Xiling Qu', 'XLQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1876, '湖北省', '420503', '伍家岗区', 'Wujiagang Qu', 'WJG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1877, '湖北省', '420504', '点军区', 'Dianjun Qu', 'DJN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2626, '四川省', '513124', '汉源县', 'Hanyuan Xian', 'HAY');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2627, '四川省', '513125', '石棉县', 'Shimian Xian', 'SIM');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2628, '四川省', '513126', '天全县', 'Tianquan Xian', 'TQU');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2629, '四川省', '513127', '芦山县', 'Lushan Xian', 'LSC');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2630, '四川省', '513128', '宝兴县', 'Baoxing Xian', 'BXC');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2631, '四川省', '513200', '阿坝藏族羌族自治州', 'Aba(Ngawa) Zangzu Qiangzu Zizhizhou', 'ABA');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2632, '四川省', '513221', '汶川县', 'Wenchuan Xian', 'WNC');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2633, '四川省', '513222', '理县', 'Li Xian', 'LXC');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2634, '四川省', '513223', '茂县', 'Mao Xian', 'MAO');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2635, '四川省', '513224', '松潘县', 'Songpan Xian', 'SOP');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2636, '四川省', '513225', '九寨沟县', 'Jiuzhaigou Xian', 'JZG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2637, '四川省', '513226', '金川县', 'Jinchuan Xian', 'JCH');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2638, '四川省', '513227', '小金县', 'Xiaojin Xian', 'XJX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2639, '四川省', '513228', '黑水县', 'Heishui Xian', 'HIS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2640, '四川省', '513229', '马尔康县', 'Barkam Xian', 'BAK');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2641, '四川省', '513230', '壤塘县', 'Zamtang Xian', 'ZAM');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2642, '四川省', '513231', '阿坝县', 'Aba(Ngawa) Xian', 'ABX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2643, '四川省', '513232', '若尔盖县', 'ZoigeXian', 'ZOI');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2644, '四川省', '513233', '红原县', 'Hongyuan Xian', 'HOY');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2645, '四川省', '513300', '甘孜藏族自治州', 'Garze Zangzu Zizhizhou', 'GAZ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2646, '四川省', '513321', '康定县', 'Kangding(Dardo) Xian', 'KDX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2647, '四川省', '513322', '泸定县', 'Luding(Jagsamka) Xian', 'LUD');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2648, '四川省', '513323', '丹巴县', 'Danba(Rongzhag) Xian', 'DBA');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2649, '四川省', '513324', '九龙县', 'Jiulong(Gyaisi) Xian', 'JLC');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2650, '四川省', '513325', '雅江县', 'Yajiang(Nyagquka) Xian', 'YAJ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2651, '四川省', '513326', '道孚县', 'Dawu Xian', 'DAW');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2652, '四川省', '513327', '炉霍县', 'Luhuo(Zhaggo) Xian', 'LUH');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2653, '四川省', '513328', '甘孜县', 'Garze Xian', 'GRZ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2654, '四川省', '513329', '新龙县', 'Xinlong(Nyagrong) Xian', 'XLG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2655, '四川省', '513330', '德格县', 'DegeXian', 'DEG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2656, '四川省', '513331', '白玉县', 'Baiyu Xian', 'BYC');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2657, '四川省', '513332', '石渠县', 'Serxv Xian', 'SER');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2658, '四川省', '513333', '色达县', 'Sertar Xian', 'STX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2659, '四川省', '513334', '理塘县', 'Litang Xian', 'LIT');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2660, '四川省', '513335', '巴塘县', 'Batang Xian', 'BTC');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2661, '四川省', '513336', '乡城县', 'Xiangcheng(Qagcheng) Xian', 'XCC');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2662, '四川省', '513337', '稻城县', 'Daocheng(Dabba) Xian', 'DCX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2663, '四川省', '513338', '得荣县', 'Derong Xian', 'DER');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2664, '四川省', '513400', '凉山彝族自治州', 'Liangshan Yizu Zizhizhou', 'LSY');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2665, '四川省', '513401', '西昌市', 'Xichang Shi', 'XCA');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2666, '四川省', '513422', '木里藏族自治县', 'Muli Zangzu Zizhixian', 'MLI');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2667, '四川省', '513423', '盐源县', 'Yanyuan Xian', 'YYU');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2668, '四川省', '513424', '德昌县', 'Dechang Xian', 'DEC');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2669, '四川省', '513425', '会理县', 'Huili Xian', 'HLI');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2670, '四川省', '513426', '会东县', 'Huidong Xian', 'HDG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2671, '四川省', '513427', '宁南县', 'Ningnan Xian', 'NIN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2672, '四川省', '513428', '普格县', 'Puge Xian', 'PGE');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2673, '四川省', '513429', '布拖县', 'Butuo Xian', 'BTO');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2674, '四川省', '513430', '金阳县', 'Jinyang Xian', 'JYW');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2675, '四川省', '513431', '昭觉县', 'Zhaojue Xian', 'ZJE');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2676, '四川省', '513432', '喜德县', 'Xide Xian', 'XDE');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2677, '四川省', '513433', '冕宁县', 'Mianning Xian', 'MNG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2678, '四川省', '513434', '越西县', 'Yuexi Xian', 'YXC');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2679, '四川省', '513435', '甘洛县', 'Ganluo Xian', 'GLO');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2680, '四川省', '513436', '美姑县', 'Meigu Xian', 'MEG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2681, '四川省', '513437', '雷波县', 'Leibo Xian', 'LBX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2682, '四川省', '513700', '巴中地区', 'Bazhong Diqu', 'BZD');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2683, '四川省', '513701', '巴中市', 'Bazhong Shi', 'BZS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2684, '四川省', '513721', '通江县', 'Tongjiang Xian', 'TGJ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2685, '四川省', '513722', '南江县', 'Nanjiang Xian', 'NJC');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2686, '四川省', '513723', '平昌县', 'Pingchang Xian', 'PCG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2687, '四川省', '513800', '眉山地区', 'Meishan Diqu', 'MSD');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2688, '四川省', '513821', '眉山县', 'Meishan Xian', 'MSX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2689, '四川省', '513822', '仁寿县', 'Renshou Xian', 'RSO');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2690, '四川省', '513823', '彭山县', 'Pengshan Xian', 'PGS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2691, '四川省', '513824', '洪雅县', 'Hongya Xian', 'HGY');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2692, '四川省', '513825', '丹棱县', 'Danling Xian', 'DLG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2693, '四川省', '513826', '青神县', 'Qingshen Xian', 'QSC');
commit;
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2694, '四川省', '513900', '资阳地区', 'Ziyang Diqu', 'ZYA');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2695, '四川省', '513901', '资阳市', 'Ziyang Shi', 'ZYS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2696, '四川省', '513902', '简阳市', 'Jianyang Shi', 'JYC');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2697, '四川省', '513921', '安岳县', 'Anyue Xian', 'AYU');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2698, '四川省', '513922', '乐至县', 'Lezhi Xian', 'LZC');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2699, '贵州省', '520000', '贵州省', 'Guizhou Sheng', 'GZ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2700, '贵州省', '520100', '贵阳市', 'Guiyang Shi', 'KWE');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2701, '贵州省', '520101', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2702, '贵州省', '520102', '南明区', 'Nanming Qu', 'NMQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2703, '贵州省', '520103', '云岩区', 'Yunyan Qu', 'YYQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2704, '贵州省', '520111', '花溪区', 'Huaxi Qu', 'HXI');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2705, '贵州省', '520112', '乌当区', 'Wudang Qu', 'WDQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2706, '贵州省', '520113', '白云区', 'Baiyun Qu', 'BYU');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2707, '贵州省', '520121', '开阳县', 'Kaiyang Xian', 'KYG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2708, '贵州省', '520122', '息烽县', 'Xifeng Xian', 'XFX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2709, '贵州省', '520123', '修文县', 'Xiuwen Xian', 'XWX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2710, '贵州省', '520181', '清镇市', 'Qingzhen Shi', 'QZN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2711, '贵州省', '520200', '六盘水市', 'Liupanshui Shi', 'LPS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2712, '贵州省', '520201', '钟山区', 'Zhongshan Qu', 'ZSQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2713, '贵州省', '520202', '盘县特区', 'Panxian Tequ', 'PXT');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2714, '贵州省', '520203', '六枝特区', 'Liuzhi Tequ', 'LZT');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2715, '贵州省', '520221', '水城县', 'Shuicheng Xian', 'SUC');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2716, '贵州省', '520300', '遵义市', 'Zunyi Shi', 'ZNY');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2717, '贵州省', '520301', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2718, '贵州省', '520302', '红花岗区', 'Honghuagang Qu', 'HHG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2719, '贵州省', '520321', '遵义县', 'Zunyi Xian', 'ZYI');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2720, '贵州省', '520322', '桐梓县', 'Tongzi Xian', 'TZI');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2721, '贵州省', '520323', '绥阳县', 'Suiyang Xian', 'SUY');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2722, '贵州省', '520324', '正阳县', 'Zhengyang Xian', 'ZAX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2723, '贵州省', '520325', '道真仡佬族苗族自治县', 'Daozhen Gelaozu Miaozu Zizhixian', 'DZN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2724, '贵州省', '520326', '务川仡佬族苗族自治县', 'Wuchuan Gelaozu Miaozu Zizhixian', 'WCU');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2725, '贵州省', '520327', '凤冈县', 'Fenggang Xian', 'FGG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2726, '贵州省', '520328', '湄潭县', 'Meitan Xian', 'MTN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2727, '贵州省', '520329', '余庆县', 'Yuqing Xian', 'YUQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2728, '贵州省', '520330', '习水县', 'Xishui Xian', 'XSI');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2729, '贵州省', '520381', '赤水市', 'Chishui Shi', 'CSS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2730, '贵州省', '520382', '仁怀市', 'Renhuai Shi', 'RHS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2731, '贵州省', '522200', '铜仁地区', 'Tongren Diqu', 'TRD');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2732, '贵州省', '522201', '铜仁市', 'Tongren Shi', 'TRS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2733, '贵州省', '522222', '江口县', 'Jiangkou Xian', 'JGK');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2734, '贵州省', '522223', '玉屏侗族自治县', 'Yuping Dongzu Zizhixian', 'YPG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2735, '贵州省', '522224', '石阡县', 'Shiqian Xian', 'SQI');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2736, '贵州省', '522225', '思南县', 'Sinan Xian', 'SNA');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2737, '贵州省', '522226', '印江土家族苗族自治县', 'Yinjiang Tujiazu Miaozu Zizhixian', 'YJY');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2738, '贵州省', '522227', '德江县', 'Dejiang Xian', 'DEJ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2739, '贵州省', '522228', '沿河土家族自治县', 'Yanhe Tujiazu Zizhixian', 'YHE');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2740, '贵州省', '522229', '松桃苗族自治县', 'Songtao Miaozu Zizhixian', 'STM');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2741, '贵州省', '522230', '万山特区', 'Wanshan Tequ', 'WAS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2742, '贵州省', '522300', '黔西南布依族苗族自治州', 'Qianxinan Buyeizu Zizhizhou', 'QXZ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2743, '贵州省', '522301', '兴义市', 'Xingyi Shi', 'XYI');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2744, '贵州省', '522322', '兴仁县', 'Xingren Xian', 'XRN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2745, '贵州省', '522323', '普安县', 'Pu,an Xian', 'PUA');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2746, '贵州省', '522324', '晴隆县', 'Qinglong Xian', 'QLG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2747, '贵州省', '522325', '贞丰县', 'Zhenfeng Xian', 'ZFG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2748, '贵州省', '522326', '望谟县', 'Wangmo Xian', 'WMO');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2749, '贵州省', '522327', '册亨县', 'Ceheng Xian', 'CEH');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2750, '贵州省', '522328', '安龙县', 'Anlong Xian', 'ALG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2751, '贵州省', '522400', '毕节地区', 'Bijie Diqu', 'BJD');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2752, '贵州省', '522401', '毕节市', 'Bijie Shi', 'BJE');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2753, '贵州省', '522422', '大方县', 'Dafang Xian', 'DAF');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2754, '贵州省', '522423', '黔西县', 'Qianxi Xian', 'QNX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2755, '贵州省', '522424', '金沙县', 'Jinsha Xian', 'JSX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2756, '贵州省', '522425', '织金县', 'Zhijin Xian', 'ZJN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2757, '贵州省', '522426', '纳雍县', 'Nayong Xian', 'NYG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2758, '贵州省', '522427', '威宁彝族回族苗族自治县', 'Weining Yizu Huizu Miaozu Zizhixian', 'WNG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2759, '贵州省', '522428', '赫章县', 'Hezhang Xian', 'HZA');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2760, '贵州省', '522500', '安顺地区', 'Anshun Diqu ', 'ASD');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2761, '贵州省', '522501', '安顺市', 'Anshun Xian', 'ASS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2762, '贵州省', '522526', '平坝县', 'Pingba Xian', 'PBA');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2763, '贵州省', '522527', '普定县', 'Puding Xian', 'PUD');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2764, '贵州省', '522528', '关岭布依族苗族自治县', 'Guanling Buyeizu Miaozu Zizhixian', 'GNL');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2765, '贵州省', '522529', '镇宁布依族苗族自治县', 'Zhenning Buyeizu Miaozu Zizhixian', 'ZNN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2766, '贵州省', '522530', '紫云苗族布依族自治县', 'Ziyun Miaozu Buyeizu Zizhixian', 'ZYF');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2767, '贵州省', '522600', '黔东南苗族侗族自治州', 'Qiandongnan Miaozu Dongzu Zizhizhou', 'QND');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2768, '贵州省', '522601', '凯里市', 'Kaili Shi', 'KLS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2769, '贵州省', '522622', '黄平县', 'Huangping Xian', 'HPN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2770, '贵州省', '522623', '施秉县', 'Shibing Xian', 'SBG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2771, '贵州省', '522624', '三穗县', 'Sansui Xian', 'SAS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2772, '贵州省', '522625', '镇远县', 'Zhenyuan Xian', 'ZYX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2773, '贵州省', '522626', '岑巩县', 'Cengong Xian', 'CGX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2774, '贵州省', '522627', '天柱县', 'Tianzhu Xian', 'TZU');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2775, '贵州省', '522628', '锦屏县', 'Jinping Xian', 'JPX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2776, '贵州省', '522629', '剑河县', 'Jianhe Xian', 'JHE');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2777, '贵州省', '522630', '台江县', 'Taijiang Xian', 'TJX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2778, '贵州省', '522631', '黎平县', 'Liping Xian', 'LIP');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2779, '贵州省', '522632', '榕江县', 'Rongjiang Xian', 'RJG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2780, '贵州省', '522633', '从江县', 'Congjiang Xian', 'COJ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2781, '贵州省', '522634', '雷山县', 'Leishan Xian', 'LSA');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2782, '贵州省', '522635', '麻江县', 'Majiang Xian', 'MAJ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2783, '贵州省', '522636', '丹寨县', 'Danzhai Xian', 'DZH');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2784, '贵州省', '522700', '黔南布依族苗族自治州', 'Qiannan Buyeizu Miaozu Zizhizhou', 'QNZ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2785, '贵州省', '522701', '都匀市', 'Duyun Shi', 'DUY');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2786, '贵州省', '522702', '福泉市', 'Fuquan Shi', 'FQN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2787, '贵州省', '522722', '荔波县', 'Libo Xian', 'LBO');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2788, '贵州省', '522723', '贵定县', 'Guiding Xian', 'GDG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2789, '贵州省', '522725', '瓮安县', 'Weng,an Xian', 'WGA');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2790, '贵州省', '522726', '独山县', 'Dushan Xian', 'DSX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2791, '贵州省', '522727', '平塘县', 'Pingtang Xian', 'PTG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2792, '贵州省', '522728', '罗甸县', 'Luodian Xian', 'LOD');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2793, '贵州省', '522729', '长顺县', 'Changshun Xian', 'CSU');
commit;
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2794, '贵州省', '522730', '龙里县', 'Longli Xian', 'LLI');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2795, '贵州省', '522731', '惠水县', 'Huishui Xian', 'HUS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2796, '贵州省', '522732', '三都水族自治县', 'Sandu Suizu Zizhixian', 'SDU');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2797, '云南省', '530000', '云南省', 'Yunnan Sheng', 'YN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2798, '云南省', '530100', '昆明市', 'Kunming Shi', 'KMG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2799, '云南省', '530101', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2800, '云南省', '530102', '五华区', 'Wuhua Qu', 'WHA');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2801, '云南省', '530103', '盘龙区', 'Panlong Qu', 'PLQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2802, '云南省', '530111', '官渡区', 'Guandu Qu', 'GDU');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2803, '云南省', '530112', '西山区', 'Xishan Qu', 'XSN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2804, '云南省', '530113', '东川区', 'Dongchuan Qu', 'DCU');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2805, '云南省', '530121', '呈贡县', 'Chenggong Xian', 'CGD');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2806, '云南省', '530122', '晋宁县', 'Jinning Xian', 'JND');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2807, '云南省', '530124', '富民县', 'Fumin Xian', 'FMN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2808, '云南省', '530125', '宜良县', 'Yiliang Xian', 'YIL');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2809, '云南省', '530126', '石林彝族自治县', 'Shilin Yizu Zizhixian', 'SLY');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2810, '云南省', '530127', '嵩明县', 'Songming Xian', 'SMI');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2811, '云南省', '530128', '禄劝彝族苗族自治县', 'Luchuan Yizu Miaozu Zizhixian', 'LUC');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2812, '云南省', '530129', '寻甸回族彝族自治县', 'Xundian Huizu Yizu Zizhixian', 'XDN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2813, '云南省', '530181', '安宁市', 'Anning Shi', 'ANG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2814, '云南省', '530300', '曲靖市', 'Qujing Shi', 'QJS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2815, '云南省', '530301', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2816, '云南省', '530302', '麒麟区', 'Qilin Xian', 'QLQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2817, '云南省', '530321', '马龙县', 'Malong Xian', 'MLO');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2818, '云南省', '530322', '陆良县', 'Luliang Xian', 'LLX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2819, '云南省', '530323', '师宗县', 'Shizong Xian', 'SZD');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2820, '云南省', '530324', '罗平县', 'Luoping Xian', 'LPX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2821, '云南省', '530325', '富源县', 'Fuyuan Xian', 'FYD');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2822, '云南省', '530326', '会泽县', 'Huize Xian', 'HUZ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2823, '云南省', '530328', '沾益县', 'Zhanyi Xian', 'ZYD');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2824, '云南省', '530381', '宣威市', 'Xuanwei Shi', 'XWS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2825, '云南省', '530400', '玉溪市', 'Yuxi Shi', 'YXS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2826, '云南省', '530401', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2827, '云南省', '530402', '红塔区', 'Hongta Qu', 'HTA');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2828, '云南省', '530421', '江川县', 'Jiangchuan Xian', 'JGC');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2829, '云南省', '530422', '澄江县', 'Chengjiang Xian', 'CGJ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2830, '云南省', '530423', '通海县', 'Tonghai Xian', 'THI');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2831, '云南省', '530424', '华宁县', 'Huaning Xian', 'HND');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2832, '云南省', '530425', '易门县', 'Yimen Xian', 'YMD');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2833, '云南省', '530426', '峨山彝族自治县', 'Eshan Yizu Zizhixian', 'ESN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2834, '云南省', '530427', '新平彝族傣族自治县', 'Xinping Yizu Daizu Zizhixian', 'XNP');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2835, '云南省', '530428', '元江哈尼族彝族傣族自治县', 'Yuanjiang Hanizu Yizu Daizu Zizhixian', 'YJA');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2836, '云南省', '532100', '昭通地区', 'Zhaotong Diqu', 'ZTD');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2837, '云南省', '532101', '昭通市', 'Zhaotong Shi', 'ZTS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2838, '云南省', '532122', '鲁甸县', 'Ludian Xian', 'LDX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2839, '云南省', '532123', '巧家县', 'Qiaojia Xian', 'QJA');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2840, '云南省', '532124', '盐津县', 'Yanjin Xian', 'YJD');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2841, '云南省', '532125', '大关县', 'Daguan Xian', 'DGN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2842, '云南省', '532126', '永善县', 'Yongshan Xian', 'YSB');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2843, '云南省', '532127', '绥江县', 'Suijiang Xian', 'SUJ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2844, '云南省', '532128', '镇雄县', 'Zhenxiong Xian', 'ZEX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2845, '云南省', '532129', '彝良县', 'Yiliang Xian', 'YLG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2846, '云南省', '532130', '威信县', 'Weixin Xian', 'WIX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2847, '云南省', '532131', '水富县', 'Shuifu Xian ', 'SFD');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2848, '云南省', '532300', '楚雄彝族自治州', 'Chuxiong Yizu Zizhizhou', 'CXD');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2849, '云南省', '532301', '楚雄市', 'Chuxiong Shi', 'CXS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2850, '云南省', '532322', '双柏县', 'Shuangbai Xian', 'SBA');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2851, '云南省', '532323', '牟定县', 'Mouding Xian', 'MDI');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2852, '云南省', '532324', '南华县', 'Nanhua Xian', 'NHA');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2853, '云南省', '532325', '姚安县', 'Yao,an Xian', 'YOA');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2854, '云南省', '532326', '大姚县', 'Dayao Xian', 'DYO');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2855, '云南省', '532327', '永仁县', 'Yongren Xian', 'YRN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2856, '云南省', '532328', '元谋县', 'Yuanmou Xian', 'YMO');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2857, '云南省', '532329', '武定县', 'Wuding Xian', 'WDX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2858, '云南省', '532331', '禄丰县', 'Lufeng Xian', 'LFX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2859, '云南省', '532500', '红河哈尼族彝族自治州', 'Honghe Hanizu Yizu Zizhizhou', 'HHZ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2860, '云南省', '532501', '个旧市', 'Gejiu Shi', 'GJU');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2861, '云南省', '532502', '开远市', 'Kaiyuan Shi', 'KYD');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2862, '云南省', '532522', '蒙自县', 'Mengzi Xian', 'MZI');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2863, '云南省', '532523', '屏边苗族自治县', 'Pingbian Miaozu Zizhixian', 'PBN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2864, '云南省', '532524', '建水县', 'Jianshui Xian', 'JSD');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2865, '云南省', '532525', '石屏县', 'Shiping Xian', 'SPG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2866, '云南省', '532526', '弥勒县', 'Mile Xian', 'MIL');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2867, '云南省', '532527', '泸西县', 'Luxi Xian', 'LXD');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2868, '云南省', '532528', '元阳县', 'Yuanyang Xian', 'YYD');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2869, '云南省', '532529', '红河县', 'Honghe Xian', 'HHX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2870, '云南省', '532530', '金平苗族瑶族傣族自治县', 'Jinping Miaozu Yaozu Daizu Zizhixian', 'JNP');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2871, '云南省', '532531', '绿春县', 'Lvchun Xian', 'LCX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2872, '云南省', '532532', '河口瑶族自治县', 'Hekou Yaozu Zizhixian', 'HKM');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2873, '云南省', '532600', '文山壮族苗族自治州', 'Wenshan Zhuangzu Miaozu Zizhizhou', 'WSZ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2874, '云南省', '532621', '文山县', 'Wenshan Xian', 'WES');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2875, '云南省', '532622', '砚山县', 'Yanshan Xian', 'YSD');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2876, '云南省', '532623', '西畴县', 'Xichou Xian', 'XIC');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2877, '云南省', '532624', '麻栗坡县', 'Malipo Xian', 'MLP');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2878, '云南省', '532625', '马关县', 'Maguan Xian', 'MGN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2879, '云南省', '532626', '丘北县', 'Qiubei Xian', 'QBE');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2880, '云南省', '532627', '广南县', 'Guangnan Xian', 'GGN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2881, '云南省', '532628', '富宁县', 'Funing Xian', 'FND');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2882, '云南省', '532700', '思茅地区', 'Simao Diqu ', 'SMD');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2883, '云南省', '532701', '思茅市', 'Simao Shi', 'SYM');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2884, '云南省', '532722', '普洱哈尼族彝族自治县', 'Pu,er Hanizu Yizu Zizhixian', 'PER');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2885, '云南省', '532723', '墨江哈尼族自治县', 'Mojiang Hanizu Zizhixian', 'MJG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2886, '云南省', '532724', '景东彝族自治县', 'Jingdong Yizu Zizhixian', 'JDD');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2887, '云南省', '532725', '景谷傣族彝族自治县', 'Jinggu Daizu Yizu Zizhixian', 'JGD');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2888, '云南省', '532726', '镇沅彝族哈尼族拉祜族自治县', 'Zhenyuan Yizu Hanizu Lahuzu Zizhixian', 'ZYY');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2889, '云南省', '532727', '江城哈尼族彝族自治县', 'Jiangcheng Hanizu Yizu Zizhixian', 'JCE');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2890, '云南省', '532728', '孟连傣族拉祜族佤族自治县', 'Menglian Daizu Lahuzu Vazu Zizixian', 'MLN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2891, '云南省', '532729', '澜沧拉祜族自治县', 'Lancang Lahuzu Zizhixian', 'LCA');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2892, '云南省', '532730', '西盟佤族自治县', 'Ximeng Vazu Zizhixian', 'XMG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2893, '云南省', '532800', '西双版纳傣族自治州', 'Xishuangbanna Daizu Zizhizhou', 'XSB');
commit;
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2894, '云南省', '532801', '景洪市', 'Jinghong Shi', 'JHG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2895, '云南省', '532822', '勐海县', 'Menghai Xian', 'MHI');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2896, '云南省', '532823', '勐腊县', 'Mengla Xian', 'MLA');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2897, '云南省', '532900', '大理白族自治州', 'Dali Baizu Zizhizhou', 'DLZ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2898, '云南省', '532901', '大理市', 'Dali Shi', 'DLS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2899, '云南省', '532922', '漾濞彝族自治县', 'Yangbi Yizu Zizhixian', 'YGB');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2900, '云南省', '532923', '祥云县', 'Xiangyun Xian', 'XYD');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2901, '云南省', '532924', '宾川县', 'Binchuan Xian', 'BCD');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2902, '云南省', '532925', '弥渡县', 'Midu Xian', 'MDU');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2903, '云南省', '532926', '南涧彝族自治县', 'Nanjian Yizu Zizhixian', 'NNJ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2904, '云南省', '532927', '巍山彝族回族自治县', 'Weishan Yizu Huizu Zizhixian', 'WSY');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2905, '云南省', '532928', '永平县', 'Yongping Xian', 'YPX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2906, '云南省', '532929', '云龙县', 'Yunlong Xian', 'YLO');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2907, '云南省', '532930', '洱源县', 'Eryuan Xian', 'EYN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2908, '云南省', '532931', '剑川县', 'Jianchuan Xian', 'JIC');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2909, '云南省', '532932', '鹤庆县', 'Heqing Xian', 'HQG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2910, '云南省', '533000', '保山地区', 'Baoshan Diqu', 'BSD');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2911, '云南省', '533001', '保山市', 'Baoshan Shi', 'BOS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2912, '云南省', '533022', '施甸县', 'Shidian Xian', 'SDD');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2913, '云南省', '533023', '腾冲县', 'Tengchong Xian', 'TCO');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2914, '云南省', '533024', '龙陵县', 'Longling Xian', 'LGL');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2915, '云南省', '533025', '昌宁县', 'Changning Xian', 'CND');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2916, '云南省', '533100', '德宏傣族景颇族自治州', 'Dehong Daizu Jingpozu Zizhizhou', 'DHG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2917, '云南省', '533101', '畹町市', 'Wanding Shi', 'WAN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2918, '云南省', '533102', '瑞丽市', 'Ruili Shi', 'RUI');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2919, '云南省', '533103', '潞西市', 'Luxi Shi', 'LXS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2920, '云南省', '533122', '梁河县', 'Lianghe Xian', 'LHD');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2921, '云南省', '533123', '盈江县', 'Yingjiang Xian', 'YGJ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2922, '云南省', '533124', '陇川县', 'Longchuan Xian', 'LCN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2923, '云南省', '533200', '丽江地区', 'Lijiang Diqu', 'LJD');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2924, '云南省', '533221', '丽江纳西族自治县', 'Lijing Naxizu Zizhixian', 'LIJ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2925, '云南省', '533222', '永胜县', 'Yongsheng Xian', 'YOS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2926, '云南省', '533223', '华坪县', 'Huaping Xian', 'HAP');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2927, '云南省', '533224', '宁蒗彝族自治县', 'Ninglang Yizu Zizhixian', 'NLG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2928, '云南省', '533300', '怒江傈僳族自治州', 'Nujiang Lisuzu Zizhizhou', 'NUJ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2929, '云南省', '533321', '泸水县', 'Lushui Xian', 'LSX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2930, '云南省', '533323', '福贡县', 'Fugong Xian', 'FGO');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2931, '云南省', '533324', '贡山独龙族怒族自治县', 'Gongshan Dulongzu Nuzu Zizhixian', 'GSN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2932, '云南省', '533325', '兰坪白族普米族自治县', 'Lanping Baizu Pumizu Zizhixian', 'LPG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2933, '云南省', '533400', '迪庆藏族自治州', 'Deqen Zangzu Zizhizhou', 'DEZ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2934, '云南省', '533421', '中甸县', 'Zhongdian Xian', 'ZDX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2935, '云南省', '533422', '德钦县', 'Deqen Xian', 'DQN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2936, '云南省', '533423', '维西傈僳族自治县', 'Weixi Lisuzu Zizhixian', 'WXI');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2937, '云南省', '533500', '临沧地区', 'Lincang Diqu', 'LCD');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2938, '云南省', '533521', '临沧县', 'Lincang Xian', 'LCI');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2939, '云南省', '533522', '凤庆县', 'Fengqing Xian', 'FQX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2940, '云南省', '533523', '云县', 'Yun Xian', 'YXP');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2941, '云南省', '533524', '永德县', 'Yongde Xian', 'YDX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2942, '云南省', '533525', '镇康县', 'Zhenkang Xian', 'ZKG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2943, '云南省', '533526', '双江拉祜族佤族布朗族傣族自治县', 'Shuangjiang Lahuzu Vazu Bulangzu Daizu Zizhixian', 'SGJ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2944, '云南省', '533527', '耿马傣族佤族自治县', 'Gengma Daizu Vazu Zizhixian', 'GMA');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2945, '云南省', '533528', '沧源佤族自治县', 'Cangyuan Vazu Zizhixian', 'CYN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2946, '西藏自治区', '540000', '西藏自治区', 'Xizang Zizhiqu', 'XZ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2947, '西藏自治区', '540100', '拉萨市', 'Lhasa Shi', 'LXA');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2948, '西藏自治区', '540101', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2949, '西藏自治区', '540102', '城关区', 'Chengguang Qu', 'CGN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2950, '西藏自治区', '540121', '林周县', 'Lhvnzhub Xian', 'LZB');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2951, '西藏自治区', '540122', '当雄县', 'Damxung Xian', 'DAM');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2952, '西藏自治区', '540123', '尼木县', 'Nyemo Xian', 'NYE');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2953, '西藏自治区', '540124', '曲水县', 'Qvxv Xian', 'QUX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2954, '西藏自治区', '540125', '堆龙德庆县', 'Doilungdeqen Xian', 'DOI');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2955, '西藏自治区', '540126', '达孜县', 'Dagze Xian', 'DAG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2956, '西藏自治区', '540127', '墨竹工卡县', 'Maizhokunggar Xian', 'MAI');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2957, '西藏自治区', '542100', '昌都地区', 'Qamdo Diqu', 'QAD');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2958, '西藏自治区', '542121', '昌都县', 'Qamdo Xian', 'QAX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2959, '西藏自治区', '542122', '江达县', 'Jomda Xian', 'JOM');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2960, '西藏自治区', '542123', '贡觉县', 'Konjo Xian', 'KON');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2961, '西藏自治区', '542124', '类乌齐县', 'Riwoqe Xian', 'RIW');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2962, '西藏自治区', '542125', '丁青县', 'Dengqen Xian', 'DEN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2963, '西藏自治区', '542126', '察雅县', 'Chagyab Xian', 'CHA');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2964, '西藏自治区', '542127', '八宿县', 'Baxoi Xian', 'BAX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2965, '西藏自治区', '542128', '左贡县', 'Zogang Xian', 'ZOX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2966, '西藏自治区', '542129', '芒康县', 'Mangkam Xian', 'MAN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2967, '西藏自治区', '542132', '洛隆县', 'Lhorong Xian', 'LHO');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2968, '西藏自治区', '542133', '边坝县', 'Banbar Xian', 'BAN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2969, '西藏自治区', '542134', '盐井县', 'Yanjing(Cakal,ko) Xian', 'YJZ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2970, '西藏自治区', '542135', '碧土县', 'Pvtog Xian', 'PUG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2971, '西藏自治区', '542136', '妥坝县', 'Toba Xian', 'TOB');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2972, '西藏自治区', '542137', '生达县', 'Sinda Xian', 'SIN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2973, '西藏自治区', '542200', '山南地区', 'Shannan Diqu', 'SND');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2974, '西藏自治区', '542221', '乃东县', 'Nedong Xian', 'NED');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2975, '西藏自治区', '542222', '扎囊县', 'Chanang(Chatang) Xian', 'CNG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2976, '西藏自治区', '542223', '贡嘎县', 'Gonggar Xian', 'GON');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2977, '西藏自治区', '542224', '桑日县', 'Sangri Xian', 'SRI');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2978, '西藏自治区', '542225', '琼结县', 'Qonggyai Xian', 'QON');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2979, '西藏自治区', '542226', '曲松县', 'Qusum Xian', 'QUS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2980, '西藏自治区', '542227', '措美县', 'Comai Xian', 'COM');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2981, '西藏自治区', '542228', '洛扎县', 'Lhozhag Xian', 'LHX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2982, '西藏自治区', '542229', '加查县', 'Gyaca Xian', 'GYA');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2983, '西藏自治区', '542231', '隆子县', 'Lhvnze Xian', 'LHZ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2984, '西藏自治区', '542232', '错那县', 'Cona Xian', 'CON');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2985, '西藏自治区', '542233', '浪卡子县', 'Nagarze Xian', 'NAX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2986, '西藏自治区', '542300', '日喀则地区', 'Xigaze Diqu', 'XID');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2987, '西藏自治区', '542301', '日喀则市', 'Xigaze Shi', 'XIG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2988, '西藏自治区', '542322', '南木林县', 'Namling Xian', 'NAM');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2989, '西藏自治区', '542323', '江孜县', 'Gyangze Xian', 'GYZ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2990, '西藏自治区', '542324', '定日县', 'Tingri Xian', 'TIN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2991, '西藏自治区', '542325', '萨迦县', 'Sa,gya Xian', 'SGX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2992, '西藏自治区', '542326', '拉孜县', 'Lhaze Xian', 'LAZ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2993, '西藏自治区', '542327', '昂仁县', 'Ngamring Xian', 'NGA');
commit;
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2994, '西藏自治区', '542328', '谢通门县', 'Xaitongmoin Xian', 'XTM');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2995, '西藏自治区', '542329', '白朗县', 'Bainang Xian', 'BAI');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2996, '西藏自治区', '542330', '仁布县', 'Rinbung Xian', 'RIN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2997, '西藏自治区', '542331', '康马县', 'Kangmar Xian', 'KAN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2998, '西藏自治区', '542332', '定结县', 'Dinggye Xian', 'DIN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2999, '西藏自治区', '542333', '仲巴县', 'Zhongba Xian', 'ZHB');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3000, '西藏自治区', '542334', '亚东县', 'Yadong(Chomo) Xian', 'YDZ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3001, '西藏自治区', '542335', '吉隆县', 'Gyirong Xian', 'GIR');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3002, '西藏自治区', '542336', '聂拉木县', 'Nyalam Xian', 'NYA');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3003, '西藏自治区', '542337', '萨嘎县', 'Saga Xian', 'SAG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3004, '西藏自治区', '542338', '岗巴县', 'Gamba Xian', 'GAM');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3005, '西藏自治区', '542400', '那曲地区', 'Nagqu Diqu', 'NAD');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3006, '西藏自治区', '542421', '那曲县', 'Nagqu Xian', 'NAG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3007, '西藏自治区', '542422', '嘉黎县', 'Lhari Xian', 'LHR');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3008, '西藏自治区', '542423', '比如县', 'Biru Xian', 'BRU');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3009, '西藏自治区', '542424', '聂荣县', 'Nyainrong Xian', 'NRO');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3010, '西藏自治区', '542425', '安多县', 'Amdo Xian', 'AMD');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3011, '西藏自治区', '542426', '申扎县', 'Xainza Xian', 'XZX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3012, '西藏自治区', '542427', '索县', 'Sog Xian', 'SOG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3013, '西藏自治区', '542428', '班戈县', 'Bangoin Xian', 'BGX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3014, '西藏自治区', '542429', '巴青县', 'Baqen Xian', 'BQE');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3015, '西藏自治区', '542430', '尼玛县', 'Nyima Xian', 'NYX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3016, '西藏自治区', '542500', '阿里地区', 'Ngari Diqu', 'NGD');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3017, '西藏自治区', '542521', '普兰县', 'Burang Xian', 'BUR');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3018, '西藏自治区', '542522', '札达县', 'Zanda Xian', 'ZAN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3019, '西藏自治区', '542523', '噶尔县', 'Gar Xian', 'GAR');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3020, '西藏自治区', '542524', '日土县', 'Rutog Xian', 'RUT');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3021, '西藏自治区', '542525', '革吉县', 'Ge,gyai Xian', 'GEG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3022, '西藏自治区', '542526', '改则县', 'Gerze Xian', 'GER');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3023, '西藏自治区', '542527', '措勤县', 'Coqen Xian', 'COQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3024, '西藏自治区', '542528', '隆格尔县', 'Lunggar Xian', 'LUN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3025, '西藏自治区', '542600', '林芝地区', 'Nyingchi Diqu', 'NYD');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3026, '西藏自治区', '542621', '林芝县', 'Nyingchi Xian', 'NYI');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3027, '西藏自治区', '542622', '工布江达县', 'Gongbo,gyamda Xian', 'GOX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3028, '西藏自治区', '542623', '米林县', 'Mainling Xian', 'MAX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3029, '西藏自治区', '542624', '墨脱县', 'Metog Xian', 'MET');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3030, '西藏自治区', '542625', '波密县', 'Bomi(Bowo) Xian', 'BMI');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3031, '西藏自治区', '542626', '察隅县', 'Zayv Xian', 'ZAY');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3032, '西藏自治区', '542627', '朗县', 'Nang Xian', 'NGX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3033, '陕西省', '610000', '陕西省', 'Shanxi Sheng ', 'SN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3034, '陕西省', '610100', '西安市', 'Xi,an Shi', 'SIA');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3035, '陕西省', '610101', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3036, '陕西省', '610102', '新城区', 'Xincheng Qu', 'XCK');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3037, '陕西省', '610103', '碑林区', 'Beilin Qu', 'BLQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3038, '陕西省', '610104', '莲湖区', 'Lianhu Qu', 'LHU');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3039, '陕西省', '610111', '灞桥区', 'Baqiao Qu', 'BQQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3040, '陕西省', '610112', '未央区', 'Weiyang Qu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3041, '陕西省', '610113', '雁塔区', 'Yanta Qu', 'YTA');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3042, '陕西省', '610114', '阎良区', 'Yanliang Qu', 'YLQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3043, '陕西省', '610115', '临潼区', 'Lintong Qu', 'LTG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3044, '陕西省', '610121', '长安县', 'Chang,an Xian', 'CAX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3045, '陕西省', '610122', '蓝田县', 'Lantian Xian', 'LNT');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3046, '陕西省', '610124', '周至县', 'Zhouzhi Xian', 'ZOZ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3047, '陕西省', '610125', '户县', 'Hu Xian', 'HUX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3048, '陕西省', '610126', '高陵县', 'Gaoling Xian', 'GLS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3049, '陕西省', '610200', '铜川市', 'Tongchuan Shi', 'TCN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3050, '陕西省', '610201', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2033, '湖南省', '430682', '临湘市', 'Linxiang Shi', 'LXY');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2034, '湖南省', '430700', '常德市', 'Changde Shi', 'CDE');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2035, '湖南省', '430701', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2036, '湖南省', '430702', '武陵区', 'Wuling Qu', 'WLQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2037, '湖南省', '430703', '鼎城区', 'Dingcheng Qu', 'DCE');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2038, '湖南省', '430721', '安乡县', 'Anxiang Xian', 'AXG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2039, '湖南省', '430722', '汉寿县', 'Hanshou Xian', 'HSO');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2040, '湖南省', '430723', '澧县', 'Li Xian', 'LXX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2041, '湖南省', '430724', '临澧县', 'Linli Xian', 'LNL');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2042, '湖南省', '430725', '桃源县', 'Taoyuan Xian', 'TOY');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2043, '湖南省', '430726', '石门县', 'Shimen Xian', 'SHM');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2044, '湖南省', '430781', '津市市', 'Jinshi Shi', 'JSS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2045, '湖南省', '430800', '张家界市', 'Zhangjiajie Shi', 'ZJJ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2046, '湖南省', '430801', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2047, '湖南省', '430802', '永定区', 'Yongding Qu', 'YDQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2048, '湖南省', '430811', '武陵源区', 'Wulingyuan Qu', 'WLY');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2049, '湖南省', '430821', '慈利县', 'Cili Xian', 'CLI');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2050, '湖南省', '430822', '桑植县', 'Sangzhi Xian', 'SZT');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2051, '湖南省', '430900', '益阳市', 'Yiyang Shi', 'YYS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2052, '湖南省', '430901', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2053, '湖南省', '430902', '资阳区', 'Ziyang Qu', 'ZYC');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2054, '湖南省', '430903', '赫山区', 'Heshan Qu', 'HSY');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2055, '湖南省', '430921', '南县', 'Nan Xian', 'NXN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2056, '湖南省', '430922', '桃江县', 'Taojiang Xian', 'TJG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2057, '湖南省', '430923', '安化县', 'Anhua Xian', 'ANH');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2058, '湖南省', '430981', '沅江市', 'Yuanjiang Shi', 'YJS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2059, '湖南省', '431000', '郴州市', 'Chenzhou Shi', 'CNZ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2060, '湖南省', '431001', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2061, '湖南省', '431002', '北湖区', 'Beihu Qu', 'BHQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2062, '湖南省', '430003', '苏仙区', 'Suxian Qu', 'SUX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2063, '湖南省', '431021', '桂阳县', 'Guiyang Xian', 'GYX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2064, '湖南省', '431022', '宜章县', 'yizhang Xian', 'YZA');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2065, '湖南省', '431023', '永兴县', 'Yongxing Xian', 'YXX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2066, '湖南省', '431024', '嘉禾县', 'Jiahe Xian', 'JAH');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2067, '湖南省', '431025', '临武县', 'Linwu Xian', 'LWX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2068, '湖南省', '431026', '汝城县', 'Rucheng Xian', 'RCE');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2069, '湖南省', '431027', '桂东县', 'Guidong Xian', 'GDO');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2070, '湖南省', '431028', '安仁县', 'Anren Xian', 'ARN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2071, '湖南省', '431081', '资兴市', 'Zixing Shi', 'ZXG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2072, '湖南省', '431100', '永州市', 'Yongzhou Shi', 'YZS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2073, '湖南省', '431101', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2074, '湖南省', '431102', '芝山区', 'Zhishan Qu', 'ZSY');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2075, '湖南省', '431103', '冷水滩区', 'Lengshuitan Qu', 'LST');
commit;
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2076, '湖南省', '431121', '祁阳县', 'Qiyang Xian', 'QJY');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2077, '湖南省', '431122', '东安县', 'Dong,an Xian', 'DOA');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2078, '湖南省', '431123', '双牌县', 'Shuangpai Xian', 'SPA');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2079, '湖南省', '431124', '道县', 'Dao Xian', 'DAO');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2080, '湖南省', '431125', '江永县', 'Jiangyong Xian', 'JYD');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2081, '湖南省', '431126', '宁远县', 'Ningyuan Xian', 'NYN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2082, '湖南省', '431127', '蓝山县', 'Lanshan Xian', 'LNS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2083, '湖南省', '431128', '新田县', 'Xintian Xian', 'XTN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2084, '湖南省', '431129', '江华瑶族自治县', 'Jianghua Yaozu Zizhixian', 'JHX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2085, '湖南省', '431200', '怀化市', 'Huaihua Shi', 'HHS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2086, '湖南省', '431201', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2087, '湖南省', '431202', '鹤城区', 'Hecheng Qu', 'HCG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2088, '湖南省', '431221', '中方县', 'Zhongfang Xian', 'ZFX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2089, '湖南省', '431222', '沅陵县', 'Yuanling Xian', 'YNL');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2090, '湖南省', '431223', '辰溪县', 'Chenxi Xian', 'CXX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2091, '湖南省', '431224', '溆浦县', 'Xupu Xian', 'XUP');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2092, '湖南省', '431225', '会同县', 'Huitong Xian', 'HTG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2093, '湖南省', '431226', '麻阳苗族自治县', 'Mayang Miaozu Zizhixian', 'MYX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2094, '湖南省', '431227', '新晃侗族自治县', 'Xinhuang Dongzu Zizhixian', 'XHD');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2095, '湖南省', '431228', '芷江侗族自治县', 'Zhijiang Dongzu Zizhixian', 'ZJX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2096, '湖南省', '431229', '靖州苗族侗族自治县', 'Jingzhou Miaozu Dongzu Zizhixian', 'JZO');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2097, '湖南省', '431230', '通道侗族自治县', 'Tongdao Dongzu Zizhixian', 'TDD');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2098, '湖南省', '431281', '洪江市', 'Hongjiang Shi', 'HGJ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2099, '湖南省', '432500', '娄底地区', 'Loudi Diqu', 'LDD');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2100, '湖南省', '432501', '娄底市', 'Loudi Shi', 'LDI');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2101, '湖南省', '432502', '冷水江市', 'Lengshuijiang Shi', 'LSJ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2102, '湖南省', '432503', '涟源市', 'Lianyuan Shi', 'LYU');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2103, '湖南省', '432522', '双峰县', 'Shuangfeng Xian', 'SFX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2104, '湖南省', '432524', '新化县', 'Xinhua Xian', 'XNH');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2105, '湖南省', '433100', '湘西土家族苗族自治州', 'Xiangxi Tujiazu Miaozu Zizhizhou ', 'XXZ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2106, '湖南省', '433101', '吉首市', 'Jishou Shi', 'JSO');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2107, '湖南省', '433122', '泸溪县', 'Luxi Xian', 'LXW');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2108, '湖南省', '433123', '凤凰县', 'Fenghuang Xian', 'FHX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2109, '湖南省', '433124', '花垣县', 'Huayuan Xian', 'HYH');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2110, '湖南省', '433125', '保靖县', 'Baojing Xian', 'BJG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2111, '湖南省', '433126', '古丈县', 'Guzhang Xian', 'GZG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2112, '湖南省', '433127', '永顺县', 'Yongshun Xian', 'YSF');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2113, '湖南省', '433130', '龙山县', 'Longshan Xian', 'LSR');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2114, '广东省', '440000', '广东省', 'Guangdong Sheng', 'GD');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2115, '广东省', '440404', '金湾区', 'Jinwan Qu', 'JW Q');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2116, '广东省', '440100', '广州市', 'Guangzhou Shi', 'CAN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2117, '广东省', '440101', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2118, '广东省', '440102', '东山区', 'Dongshan Qu', 'DSG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2119, '广东省', '440103', '荔湾区', 'Liwan Qu', 'LWQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2120, '广东省', '440104', '越秀区', 'Yuexiu Qu', 'YXU');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2121, '广东省', '440105', '海珠区', 'Haizhu Qu', 'HZU');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2122, '广东省', '440106', '天河区', 'Tianhe Qu', 'THQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2123, '广东省', '440107', '芳村区', 'Fangcun Qu', 'FCN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2124, '广东省', '440111', '白云区', 'Baiyun Qu', 'BYN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2125, '广东省', '440112', '黄埔区', 'Huangpu Qu', 'HPU');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2126, '广东省', '440113', '番禺区', 'Panyu Qu', 'PNY');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2127, '广东省', '440114', '花都区', 'Huadu Qu', 'HDU');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2128, '广东省', '440183', '增城市', 'Zengcheng Shi', 'ZEC');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2129, '广东省', '440184', '从化市', 'Conghua Shi', 'CNH');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2130, '广东省', '440200', '韶关市', 'Shaoguan Shi', 'HSC');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2131, '广东省', '440201', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2132, '广东省', '440202', '北江区', 'Beijiang Qu', 'BJA');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2133, '广东省', '440203', '武江区', 'Wujiang Qu', 'WJQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2134, '广东省', '440204', '浈江区', 'Zhenjiang Qu', 'ZJQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2135, '广东省', '440221', '曲江县', 'Qujiang Xian', 'QUJ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2136, '广东省', '440222', '始兴县', 'Shixing Xian', 'SXX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2137, '广东省', '440224', '仁化县', 'Renhua Xian', 'RHA');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2138, '广东省', '440229', '翁源县', 'Wengyuan Xian', 'WYN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2139, '广东省', '440232', '乳源瑶族自治县', 'Ruyuan Yaozu Zizhixian', 'RYN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2140, '广东省', '440233', '新丰县', 'Xinfeng Xian', 'XFY');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2141, '广东省', '440281', '乐昌市', 'Lechang Shi', 'LEC');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2142, '广东省', '440282', '南雄市', 'Nanxiong Shi', 'NXS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2143, '广东省', '440300', '深圳市', 'Shenzhen Shi', 'SZX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2144, '广东省', '440301', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2145, '广东省', '440303', '罗湖区', 'Luohu Qu', 'LHQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2146, '广东省', '440304', '福田区', 'Futian Qu', 'FTN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2147, '广东省', '440305', '南山区', 'Nanshan Qu', 'NSN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2148, '广东省', '440306', '宝安区', 'Bao,an Qu', 'BAQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2149, '广东省', '440307', '龙岗区', 'Longgang Qu', 'LGG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2150, '广东省', '440308', '盐田区', 'Yan Tian Qu', 'YTQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2151, '广东省', '440400', '珠海市', 'Zhuhai Shi', 'ZUH');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2152, '广东省', '440401', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2153, '广东省', '440402', '香洲区', 'Xiangzhou Qu', 'XZQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2154, '广东省', '440403', '斗门区', 'Doumen Qu', 'DOU');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2155, '广东省', '440500', '汕头市', 'Shantou Shi', 'SWA');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2156, '广东省', '440501', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2157, '广东省', '440514', '潮南区', 'Chaonan Qu', 'CN Q');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2158, '广东省', '440507', '龙湖区', 'Longhu Qu', 'LHH');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2159, '广东省', '440511', '金平区', 'Jinping Qu', 'JPQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2160, '广东省', '440903', '茂港区', 'Maogang Qu', 'MGQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2161, '广东省', '440523', '南澳县', 'Nan,ao Xian', 'NAN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2162, '广东省', '440513', '潮阳区', 'Chaoyang  Qu', 'CHY');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2163, '广东省', '440515', '澄海区', 'Chenghai QU', 'CHS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2164, '广东省', '440600', '佛山市', 'Foshan Shi', 'FOS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2165, '广东省', '440601', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2166, '广东省', '440604', '禅城区', 'Chancheng Qu', 'CC Q');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2167, '广东省', '440606', '顺德区', 'Shunde Shi', 'SUD');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2168, '广东省', '440605', '南海区', 'Nanhai Shi', 'NAH');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2169, '广东省', '440607', '三水区', 'Sanshui Shi', 'SJQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2170, '广东省', '440608', '高明区', 'Gaoming Shi', 'GOM');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2171, '广东省', '440700', '江门市', 'Jiangmen Shi', 'JMN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2172, '广东省', '440701', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2173, '广东省', '440703', '蓬江区', 'Pengjiang Qu', 'PJJ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2174, '广东省', '440704', '江海区', 'Jianghai Qu', 'JHI');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2175, '广东省', '440781', '台山市', 'Taishan Shi', 'TSS');
commit;
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2176, '广东省', '440705', '新会区', 'Xinhui Shi', 'XIN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2177, '广东省', '440783', '开平市', 'Kaiping Shi', 'KPS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2178, '广东省', '440784', '鹤山市', 'Heshan Shi', 'HES');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2179, '广东省', '440785', '恩平市', 'Enping Shi', 'ENP');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2180, '广东省', '440800', '湛江市', 'Zhanjiang Shi', 'ZHA');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2181, '广东省', '440801', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2182, '广东省', '440802', '赤坎区', 'Chikan Qu', 'CKQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2183, '广东省', '440803', '霞山区', 'Xiashan Qu', 'XAS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2184, '广东省', '440804', '坡头区', 'Potou Qu', 'PTU');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2185, '广东省', '440811', '麻章区', 'Mazhang Qu', 'MZQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2186, '广东省', '440823', '遂溪县', 'Suixi Xian', 'SXI');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2187, '广东省', '440825', '徐闻县', 'Xuwen Xian', 'XWN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2188, '广东省', '440881', '廉江市', 'Lianjiang Shi', 'LJS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2189, '广东省', '440882', '雷州市', 'Leizhou Shi', 'LEZ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2190, '广东省', '440883', '吴川市', 'Wuchuan Shi', 'WCS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2191, '广东省', '440900', '茂名市', 'Maoming Shi', 'MMI');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2192, '广东省', '440901', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2193, '广东省', '440902', '茂南区', 'Maonan Qu', 'MNQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2194, '广东省', '440923', '电白县', 'Dianbai Xian', 'DBI');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2195, '广东省', '440981', '高州市', 'Gaozhou Shi', 'GZO');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2196, '广东省', '440982', '化州市', 'Huazhou Shi', 'HZY');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2197, '广东省', '440983', '信宜市', 'Xinyi Shi', 'XYY');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2198, '广东省', '441200', '肇庆市', 'Zhaoqing Shi', 'ZQG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2199, '广东省', '441201', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2200, '广东省', '441202', '端州区', 'Duanzhou Qu', 'DZQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2201, '广东省', '441203', '鼎湖区', 'Dinghu Qu', 'DGH');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2202, '广东省', '441223', '广宁县', 'Guangning Xian', 'GNG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2203, '广东省', '441224', '怀集县', 'Huaiji Xian', 'HJX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2204, '广东省', '441225', '封开县', 'Fengkai Xian', 'FKX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2205, '广东省', '441226', '德庆县', 'Deqing Xian', 'DQY');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2206, '广东省', '441283', '高要市', 'Gaoyao Xian', 'GYY');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2207, '广东省', '441284', '四会市', 'Sihui Shi', 'SHI');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2208, '广东省', '441300', '惠州市', 'Huizhou Shi', 'HUI');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2209, '广东省', '441301', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2210, '广东省', '441302', '惠城区', 'Huicheng Qu', 'HCQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2211, '广东省', '441322', '博罗县', 'Boluo Xian', 'BOL');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2212, '广东省', '441323', '惠东县', 'Huidong Xian', 'HID');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2213, '广东省', '441324', '龙门县', 'Longmen Xian', 'LMN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2214, '广东省', '441303', '惠阳区', 'Huiyang Shi', 'HUY');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2215, '广东省', '441400', '梅州市', 'Meizhou Shi', 'MXZ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2216, '广东省', '441401', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2217, '广东省', '441402', '梅江区', 'Meijiang Qu', 'MJQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2218, '广东省', '441421', '梅县', 'Mei Xian', 'MEX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2219, '广东省', '441422', '大埔县', 'Dabu Xian', 'DBX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2220, '广东省', '441423', '丰顺县', 'Fengshun Xian', 'FES');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2221, '广东省', '441424', '五华县', 'Wuhua Xian', 'WHY');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2222, '广东省', '441426', '平远县', 'Pingyuan Xian', 'PYY');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2223, '广东省', '441427', '蕉岭县', 'Jiaoling Xian', 'JOL');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2224, '广东省', '441481', '兴宁市', 'Xingning Shi', 'XNG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2225, '广东省', '441500', '汕尾市', 'Shanwei Shi', 'SWE');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2226, '广东省', '441501', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2227, '广东省', '441502', '城区', 'Chengqu', 'CQS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2228, '广东省', '441521', '海丰县', 'Haifeng Xian', 'HIF');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2229, '广东省', '441523', '陆河县', 'Luhe Xian', 'LHY');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2230, '广东省', '441581', '陆丰市', 'Lufeng Shi', 'LUF');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2231, '广东省', '441600', '河源市', 'Heyuan Shi', 'HEY');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2232, '广东省', '441601', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2233, '广东省', '441602', '源城区', 'Yuancheng Qu', 'YCQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2234, '广东省', '441621', '紫金县', 'Zijin Xian', 'ZJY');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2235, '广东省', '441622', '龙川县', 'Longchuan Xian', 'LCY');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2236, '广东省', '441623', '连平县', 'Lianping Xian', 'LNP');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2237, '广东省', '441624', '和平县', 'Heping Xian', 'HPY');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2238, '广东省', '441625', '东源县', 'Dongyuan Xian', 'DYN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2239, '广东省', '441700', '阳江市', 'Yangjiang Shi', 'YJI');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2240, '广东省', '441701', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2241, '广东省', '441702', '江城区', 'Jiangcheng Qu', 'JCQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2242, '广东省', '441721', '阳西县', 'Yangxi Xian', 'YXY');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2243, '广东省', '441723', '阳东县', 'Yangdong Xian', 'YGD');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2244, '广东省', '441781', '阳春市', 'Yangchun Shi', 'YCU');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2245, '广东省', '441800', '清远市', 'Qingyuan Shi', 'QYN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2246, '广东省', '441801', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2247, '广东省', '441802', '清城区', 'Qingcheng Qu', 'QCQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2248, '广东省', '441821', '佛冈县', 'Fogang Xian', 'FGY');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2249, '广东省', '441823', '阳山县', 'Yangshan Xian', 'YSN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2250, '广东省', '441825', '连山壮族瑶族自治县', 'Lianshan Zhuangzu Yaozu Zizhixian', 'LSZ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2251, '广东省', '441826', '连山瑶族自治县', 'Lianshan Yaozu Zizhixian', 'LNN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2252, '广东省', '441827', '清新县', 'Qingxin Xian', 'QGX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2253, '广东省', '441881', '英德市', 'Yingde Shi', 'YDS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2254, '广东省', '441882', '连州市', 'Lianzhou Shi', 'LZO');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2255, '广东省', '441900', '东莞市', 'Dongguan Shi', 'DGG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2256, '广东省', '442000', '中山市', 'Zhongshan Shi', 'ZSN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2257, '广东省', '445100', '潮州市', 'Chaozhou Shi', 'CZY');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2258, '广东省', '445101', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2259, '广东省', '445102', '湘桥区', 'Xiangqiao Qu', 'XQO');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2260, '广东省', '445121', '潮安县', 'Chao,an Xian', 'CAY');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2261, '广东省', '445122', '饶平县', 'Raoping Xian', 'RPG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2262, '广东省', '445200', '揭阳市', 'Jieyang Shi', 'JIY');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2263, '广东省', '445201', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2264, '广东省', '445202', '榕城区', 'Rongcheng Qu', 'RCH');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2265, '广东省', '445221', '揭东县', 'Jiedong Xian', 'JDX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2266, '广东省', '445222', '揭西县', 'Jiexi Xian', 'JEX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2267, '广东省', '445224', '惠来县', 'Huilai Xian', 'HLY');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2268, '广东省', '445281', '普宁市', 'Puning Shi', 'PNG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2269, '广东省', '445300', '云浮市', 'Yunfu Shi', 'YFS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2270, '广东省', '445301', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2271, '广东省', '445302', '云城区', 'Yuncheng Qu', 'YYF');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2272, '广东省', '445321', '新兴县', 'Xinxing Xian', 'XNX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2273, '广东省', '445322', '郁南县', 'Yunan Xian', 'YNK');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2274, '广东省', '445323', '云安县', 'Yun,an Xian', 'YUA');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2275, '广东省', '445381', '罗定市', 'Luoding Shi', 'LUO');
commit;
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2276, '广东省', '440512', '濠江区', 'Haojiang Qu', 'HJ Q');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2277, '广西壮族自治区', '450000', '广西壮族自治区', 'Guangxi Zhuangzu Zizhiqu', 'GX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2278, '广西壮族自治区', '450100', '南宁市', 'Nanning Shi', 'NNG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2279, '广西壮族自治区', '450101', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2280, '广西壮族自治区', '450102', '兴宁区', 'Xingning Qu', 'XNE');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2281, '广西壮族自治区', '450103', '新城区', 'Xincheng Qu', 'XCE');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2282, '广西壮族自治区', '450104', '城北区', 'Chengbei Qu', 'CBN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2283, '广西壮族自治区', '450105', '江南区', 'Jiangnan Qu', 'JNA');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2284, '广西壮族自治区', '450106', '永新区', 'Yongxin Qu', 'YXQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2285, '广西壮族自治区', '450111', '市郊区', 'Shijiao Qu', 'SJO');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2286, '广西壮族自治区', '450121', '邕宁县', 'Yongning Xian', 'YNG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2287, '广西壮族自治区', '450122', '武鸣县', 'Wuming Xian', 'WMG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2288, '广西壮族自治区', '450200', '柳州市', 'Liuzhou Shi', 'LZH');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2289, '广西壮族自治区', '450201', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2290, '广西壮族自治区', '450202', '城中区', 'Chengzhong Qu', 'CZG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2291, '广西壮族自治区', '450203', '鱼峰区', 'Yufeng Qu', 'YFQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2292, '广西壮族自治区', '450204', '柳南区', 'Liunan Qu', 'LNU');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2293, '广西壮族自治区', '450205', '柳北区', 'Liubei Qu', 'LBE');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2294, '广西壮族自治区', '450211', '市郊区', 'Shijiao Qu', 'SJL');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2295, '广西壮族自治区', '450221', '柳江县', 'Liujiang Xian', 'LUJ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2296, '广西壮族自治区', '450222', '柳城县', 'Liucheng Xian', 'LCB');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2297, '广西壮族自治区', '450300', '桂林市', 'Guilin Shi', 'KWL');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2298, '广西壮族自治区', '450301', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2299, '广西壮族自治区', '450302', '秀峰区', 'Xiufeng Qu', 'XUF');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2300, '广西壮族自治区', '450303', '叠彩区', 'Diecai Qu', 'DCA');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2301, '广西壮族自治区', '450304', '象山区', 'Xiangshan Qu', 'XSK');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2302, '广西壮族自治区', '450305', '七星区', 'Qixing Qu', 'QXG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2303, '广西壮族自治区', '450311', '雁山区', 'Yanshan Qu', 'YSA');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2304, '广西壮族自治区', '450321', '阳朔县', 'Yangshuo Xian', 'YSO');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2305, '广西壮族自治区', '450322', '临桂县', 'Lingui Xian', 'LGI');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2306, '广西壮族自治区', '450323', '灵川县', 'Lingchuan Xian', 'LCU');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2307, '广西壮族自治区', '450324', '全州县', 'Quanzhou Xian', 'QZO');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2308, '广西壮族自治区', '450325', '兴安县', 'Xing,an Xian', 'XAG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2309, '广西壮族自治区', '450326', '永福县', 'Yongfu Xian', 'YFU');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2310, '广西壮族自治区', '450327', '灌阳县', 'Guanyang Xian', 'GNY');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2311, '广西壮族自治区', '450328', '龙胜各族自治县', 'Longsheng Gezu Zizhixian', 'LSG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2312, '广西壮族自治区', '450329', '资源县', 'Ziyuan Xian', 'ZYU');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2313, '广西壮族自治区', '450330', '平乐县', 'Pingle Xian', 'PLE');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2314, '广西壮族自治区', '450331', '荔浦县', 'Lipu Xian', 'LPU');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2315, '广西壮族自治区', '450332', '恭城瑶族自治县', 'Gongcheng Yaozu Zizhixian', 'GGC');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2316, '广西壮族自治区', '450400', '梧州市', 'Wuzhou Shi', 'WUZ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2317, '广西壮族自治区', '450401', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2318, '广西壮族自治区', '450403', '万秀区', 'Wanxiu Qu', 'WXQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2319, '广西壮族自治区', '450404', '蝶山区', 'Dieshan Qu', 'DES');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2320, '广西壮族自治区', '450411', '市郊区', 'Shijiao Qu', 'SWZ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2321, '广西壮族自治区', '450421', '苍梧县', 'Cangwu Xian', 'CAW');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2322, '广西壮族自治区', '450422', '腾县', 'Teng Xian', 'TEG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2323, '广西壮族自治区', '450423', '蒙山县', 'Mengshan Xian', 'MSA');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2324, '广西壮族自治区', '450481', '岑溪市', 'Cenxi Shi', 'CEX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2325, '广西壮族自治区', '450500', '北海市', 'Beihai Shi', 'BHY');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2326, '广西壮族自治区', '450501', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2327, '广西壮族自治区', '450502', '海城区', 'Haicheng Qu', 'HCB');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2328, '广西壮族自治区', '450503', '银海区', 'Yinhai Qu', 'YHB');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2329, '广西壮族自治区', '450512', '铁山港区', 'Tieshangangqu ', 'TSG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2330, '广西壮族自治区', '450521', '合浦县', 'Hepu Xian', 'HPX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2331, '广西壮族自治区', '450600', '防城港市', 'Fangchenggang Shi', 'FAN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2332, '广西壮族自治区', '450601', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2333, '广西壮族自治区', '450602', '港口区', 'Gangkou Qu', 'GKQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2334, '广西壮族自治区', '450603', '防城区', 'Fangcheng Qu', 'FCQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2335, '广西壮族自治区', '450621', '上思县', 'Shangsi Xian', 'SGS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2336, '广西壮族自治区', '450681', '东兴市', 'Dongxing Shi', 'DOX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2337, '广西壮族自治区', '450700', '钦州市', 'Qinzhou Shi', 'QZH');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2338, '广西壮族自治区', '450701', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2339, '广西壮族自治区', '450702', '钦南区', 'Qinnan Qu', 'QNQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2340, '广西壮族自治区', '450703', '钦北区', 'Qinbei Qu', 'QBQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2341, '广西壮族自治区', '450721', '灵山县', 'Lingshan Xian', 'LSB');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2342, '广西壮族自治区', '450722', '浦北县', 'Pubei Xian', 'PBE');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2343, '广西壮族自治区', '450800', '贵港市', 'Guigang Shi', 'GUG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2344, '广西壮族自治区', '450801', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2345, '广西壮族自治区', '450802', '港北区', 'Gangbei Qu', 'GBE');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2346, '广西壮族自治区', '450803', '港南区', 'Gangnan Qu', 'GNQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2347, '广西壮族自治区', '450821', '平南县', 'Pingnan Xian', 'PNN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2348, '广西壮族自治区', '450881', '桂平市', 'Guiping Shi', 'GPS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2349, '广西壮族自治区', '450900', '玉林市', 'Yulin Shi', 'YUL');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2350, '广西壮族自治区', '450901', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2351, '广西壮族自治区', '450902', '玉州区', 'Yuzhou Qu', 'YZO');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2352, '广西壮族自治区', '450921', '容县', 'Rong Xian', 'ROG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2353, '广西壮族自治区', '450922', '陆川县', 'Luchuan Xian', 'LCJ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2354, '广西壮族自治区', '450923', '博白县', 'Bobai Xian', 'BBA');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2355, '广西壮族自治区', '450924', '兴业县', 'Xingye Xian', 'XGY');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2356, '广西壮族自治区', '450981', '北流市', 'Beiliu Shi', 'BLS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2357, '广西壮族自治区', '452100', '南宁地区', 'Nanning Diqu', 'NND');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2358, '广西壮族自治区', '452101', '凭祥市', 'Pingxiang Shi', 'PIN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2359, '广西壮族自治区', '452122', '横县', 'Heng Xian', 'HEN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2360, '广西壮族自治区', '452123', '宾阳县', 'Binyang Xian', 'BYX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2361, '广西壮族自治区', '452124', '上林县', 'Shanglin Xian', 'SLX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2362, '广西壮族自治区', '452126', '隆安县', 'Long,an Xian', 'LGA');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2363, '广西壮族自治区', '452127', '马山县', 'Mashan Xian', 'MSH');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2364, '广西壮族自治区', '452128', '扶绥县', 'Fusui Xian', 'FSU');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2365, '广西壮族自治区', '452129', '崇左县', 'Chongzuo Xian', 'CZU');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2366, '广西壮族自治区', '452130', '大新县', 'Daxin Xian', 'DXN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2367, '广西壮族自治区', '452131', '天等县', 'Tiandeng Xian', 'TDG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2368, '广西壮族自治区', '452132', '宁明县', 'Ningming Xian', 'NMG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2369, '广西壮族自治区', '452133', '龙州县', 'Longzhou Xian', 'LZX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2370, '广西壮族自治区', '452200', '柳州地区', 'Liuzhou Diqu', 'LZD');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2371, '广西壮族自治区', '452201', '合山市', 'Heshan Shi', 'HSS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2372, '广西壮族自治区', '452223', '鹿寨县', 'Luzhai Xian', 'LZA');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2373, '广西壮族自治区', '452224', '象州县', 'Xiangzhou Xian', 'XGZ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2374, '广西壮族自治区', '452225', '武宣县', 'Wuxuan Xian', 'WXN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2375, '广西壮族自治区', '452226', '来宾县', 'Laibin Xian', 'LBN');
commit;
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2376, '广西壮族自治区', '452227', '融安县', 'Rong,an Xian', 'RAN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2377, '广西壮族自治区', '452228', '三江侗族自治县', 'Sanjiang Dongzu Zizhixian', 'SJG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2378, '广西壮族自治区', '452229', '融水苗族自治县', 'Rongshui Miaozu Zizhixian', 'RSI');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2379, '广西壮族自治区', '452230', '金秀瑶族自治县', 'Jinxiu Yaozu Zizhixian', 'JXU');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2380, '广西壮族自治区', '452231', '忻城县', 'Xincheng Xian', 'XCH');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2381, '广西壮族自治区', '452400', '贺州地区', 'Hezhou Diqu', 'HZD');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2382, '广西壮族自治区', '452402', '贺州市', 'Hezhou Shi', 'HZB');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2383, '广西壮族自治区', '452424', '昭平县', 'Zhaoping Xian', 'ZPG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2384, '广西壮族自治区', '452427', '钟山县', 'Zhongshan Xian', 'ZSG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2385, '广西壮族自治区', '452428', '富川瑶族自治县', 'Fuchuan Yaozu Zizhixian', 'FUC');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2386, '广西壮族自治区', '452600', '百色地区', 'Baise Diqu', 'BSE');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2387, '广西壮族自治区', '452601', '百色市', 'Baise Shi', 'BSS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2388, '广西壮族自治区', '452622', '田阳县', 'Tianyang Xian', 'TYG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2389, '广西壮族自治区', '452623', '田东县', 'Tiandong Xian', 'TDO');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2390, '广西壮族自治区', '452624', '平果县', 'Pingguo Xian', 'PGX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2391, '广西壮族自治区', '452625', '德保县', 'Debao Xian', 'DEB');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2392, '广西壮族自治区', '452626', '靖西县', 'Jingxi Xian', 'JGX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2393, '广西壮族自治区', '452627', '那坡县', 'Napo Xian', 'NPO');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2394, '广西壮族自治区', '452628', '凌云县', 'Lingyun Xian', 'LYN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2395, '广西壮族自治区', '452629', '乐业县', 'Leye Xian', 'LYE');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2396, '广西壮族自治区', '452630', '田林县', 'Tianlin Xian', 'TLN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2397, '广西壮族自治区', '452631', '隆林各族自治县', 'Longlin Gezu Zizhixian', 'LLN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2398, '广西壮族自治区', '452632', '西林县', 'Xilin Xian', 'XLX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2399, '广西壮族自治区', '452700', '河池地区', 'Hechi Diqu', 'HCD');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2400, '广西壮族自治区', '452701', '河池市', 'Hechi Shi', 'HCS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2401, '广西壮族自治区', '452702', '宜州市', 'Yizhou Shi', 'YIZ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2402, '广西壮族自治区', '452723', '罗城仫佬族自治县', 'Luocheng Mulaozu Zizhixian', 'LOC');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2403, '广西壮族自治区', '452724', '环江毛南族自治县', 'Huanjiang Maonanzu Zizhixian', 'HNJ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2404, '广西壮族自治区', '452725', '南丹县', 'Nandan Xian', 'NDN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2405, '广西壮族自治区', '452726', '天峨县', 'Tian,e Xian', 'TEX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2406, '广西壮族自治区', '452727', '凤山县', 'Fengshan Xian', 'FSA');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2407, '广西壮族自治区', '452728', '东兰县', 'Donglan Xian', 'DLN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2408, '广西壮族自治区', '452729', '巴马瑶族自治县', 'Bama Yaozu Zizhixian', 'BMA');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2409, '广西壮族自治区', '452730', '都安瑶族自治县', 'Du,an Yaozu Zizhixian', 'DUA');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2410, '广西壮族自治区', '452731', '大化瑶族自治县', 'Dahua Yaozu Zizhixian', 'DAH');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2411, '海南省', '460000', '海南省', 'Hainan Sheng', 'HI');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2412, '海南省', '460107', '琼山区', 'QiongShan Qu', 'QS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2413, '海南省', '460108', '美兰区', 'MeiLan Qu', 'ML');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2414, '海南省', '460100', '海口市', 'Haikou Shi', 'HAK');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2415, '海南省', '460101', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2416, '海南省', '460106', '龙华区', 'LongHua Qu', 'LH');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2417, '海南省', '460105', '秀英区', 'Xiuying Qu', 'XYH');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2418, '海南省', '460200', '三亚市', 'Sanya Shi', 'SYX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2419, '海南省', '460201', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2420, '海南省', '460001', '通什市', 'Tongshi Shi', 'TOS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2421, '海南省', '460002', '琼海市', 'Qionghai Shi', 'QHA');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2422, '海南省', '460003', '儋州市', 'Danzhou Shi', 'DNZ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2423, '海南省', '460004', '琼山市', 'Qiongshan Shi', 'QSS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2424, '海南省', '460005', '文昌市', 'Wenchang Shi', 'WEC');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2425, '海南省', '460006', '万宁市', 'Wanning Shi', 'WNN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2426, '海南省', '460007', '东方市', 'Dongfang Shi', 'DFG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2427, '海南省', '460025', '定安县', 'Ding,an Xian', 'DIA');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2428, '海南省', '460026', '屯昌县', 'Tunchang Xian', 'TCG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2429, '海南省', '460027', '澄迈县', 'Chengmai Xian', 'CMA');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2430, '海南省', '460028', '临高县', 'Lingao Xian', 'LGO');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2431, '海南省', '460030', '白沙黎族自治县', 'Baisha Lizu Zizhixian', 'BSX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2432, '海南省', '460031', '昌江黎族自治县', 'Changjiang Lizu Zizhixian', 'CJX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2433, '海南省', '460033', '乐东黎族自治县', 'Ledong Lizu Zizhixian', 'LED');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2434, '海南省', '460034', '陵水黎族自治县', 'Lingshui Lizu Zizhixian', 'LSL');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2435, '海南省', '460035', '保亭黎族苗族自治县', 'Baoting Lizu Miaozu Zizhixian', 'BTG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2436, '海南省', '460036', '琼中黎族苗族自治县', 'Qiongzhong Lizu Miaozu Zizhixian', 'QZG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2437, '海南省', '460037', '西沙群岛', 'Xisha Qundao', 'XSD');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2438, '海南省', '460038', '南沙群岛', 'Nansha Qundao', 'NSA');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2439, '海南省', '460039', '中沙群岛的岛礁及其海域', 'Zhongsha Qundao de Daojiao Jiqi Haiyu', 'ZSA');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2440, '重庆市', '500000', '重庆市', 'Chongqing Shi', 'CQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2441, '重庆市', '500100', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2442, '重庆市', '500101', '万州区', 'Wanzhou Qu', 'WZO ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2443, '重庆市', '500102', '涪陵区', 'Fuling Qu', 'FLG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2444, '重庆市', '500103', '渝中区', 'Yuzhong Qu', 'YZQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2445, '重庆市', '500104', '大渡口区', 'Dadukou Qu', 'DDK');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2446, '重庆市', '500105', '江北区', 'Jiangbei Qu', 'JBE');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2447, '重庆市', '500106', '沙坪坝区', 'Shapingba Qu', 'SPB');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2448, '重庆市', '500107', '九龙坡区', 'Jiulongpo Qu', 'JLP');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2449, '重庆市', '500108', '南岸区', 'Nan,an Qu', 'NAQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2450, '重庆市', '500109', '北碚区', 'Beibei Qu', 'BBE');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2451, '重庆市', '500110', '万盛区', 'Wansheng Qu', 'WSQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2452, '重庆市', '500111', '双桥区', 'Shuangqiao Qu', 'SQQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2453, '重庆市', '500112', '渝北区', 'Yubei Qu', 'YBE');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2454, '重庆市', '500113', '巴南区', 'Banan Qu', 'BNN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2455, '重庆市', '500200', '县', 'Xian', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2456, '重庆市', '500221', '长寿县', 'Chaoshou Xian', 'CSO');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2457, '重庆市', '500222', '綦江县', 'Qijiang Xian', 'QJG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2458, '重庆市', '500223', '潼南县', 'Tongnan Xian', 'TNN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2459, '重庆市', '500224', '铜梁县', 'Tongliang Xian', 'TGL');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2460, '重庆市', '500225', '大足县', 'Dazu Xian', 'DZX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2461, '重庆市', '500226', '荣昌县', 'Rongchang Xian', 'RGC');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2462, '重庆市', '500227', '璧山县', 'Bishan Xian', 'BSY');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2463, '重庆市', '500228', '梁平县', 'Liangping Xian', 'LGP');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2464, '重庆市', '500229', '城口县', 'Chengkou Xian', 'CKO');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2465, '重庆市', '500230', '丰都县', 'Fengdu Xian', 'FDU');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2466, '重庆市', '500231', '垫江县', 'Dianjiang Xian', 'DJG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2467, '重庆市', '500232', '武隆县', 'Wulong Xian', 'WLG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2468, '重庆市', '500233', '忠县', 'Zhong Xian', 'ZHX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2469, '重庆市', '500234', '开县', 'Kai Xian', 'KAI');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2470, '重庆市', '500235', '云阳县', 'Yunyang Xian', 'YNY');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2471, '重庆市', '500236', '奉节县', 'Fengjie Xian', 'FJE');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2472, '重庆市', '500237', '巫山县', 'Wushan Xian', 'WSN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2473, '重庆市', '500238', '巫溪县', 'Wuxi Xian', 'WXX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2474, '重庆市', '500239', '黔江土家族苗族自治县', 'Qianjiang Tujiazu Zizhixian', 'QJX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2475, '重庆市', '500240', '石柱土家族自治县', 'Shizhu Tujiazu Zizhixian', 'SZY');
commit;
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2476, '重庆市', '500241', '秀山土家族苗族自治县', 'Xiushan Tujiazu Miaozu Zizhixian', 'XUS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2477, '重庆市', '500242', '酉阳土家族苗族自治县', 'Youyang Tujiazu Miaozu Zizhixian', 'YUY');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2478, '重庆市', '500243', '彭水苗族土家族自治县', 'Pengshui Miaozu Tujiazu Zizhixian', 'PSU');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2479, '重庆市', '500300', '市', 'Shi', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2480, '重庆市', '500381', '江津市', 'Jiangjin Shi', 'JJY');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2481, '重庆市', '500382', '合川市', 'Hechuan Shi', 'HEC');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2482, '重庆市', '500383', '永川市', 'Yongchuan Shi', 'YCP');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2483, '重庆市', '500384', '南川市', 'Nanchuan Shi', 'NCU');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2484, '四川省', '510000', '四川省', 'Sichuan Sheng', 'SC');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2485, '四川省', '510100', '成都市', 'Chengdu Shi', 'CTU');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2486, '四川省', '510101', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2487, '四川省', '510104', '锦江区', 'Jinjiang Qu', 'JJQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2488, '四川省', '510105', '青羊区', 'Qingyang Qu', 'QYQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2489, '四川省', '510106', '金牛区', 'Jinniu Qu', 'JNU');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2490, '四川省', '510107', '武侯区', 'Wuhou Qu', 'WHQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2491, '四川省', '510108', '成华区', 'Chenghua Qu', 'CHQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2492, '四川省', '510112', '龙泉驿区', 'Longquanyi Qu', 'LQY');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2493, '四川省', '510113', '青白江区', 'Qingbaijiang Qu', 'QBJ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2494, '四川省', '510121', '金堂县', 'Jintang Xian', 'JNT');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2495, '四川省', '510122', '双流县', 'Shuangliu Xian', 'SLU');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2496, '四川省', '510123', '温江县', 'Wenjiang Xian', 'WNJ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2497, '四川省', '510124', '郫县', 'Pi Xian', 'PIX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2498, '四川省', '510125', '新都县', 'Xindu Xian', 'XDU');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2499, '四川省', '510129', '大邑县', 'Dayi Xian', 'DYI');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2500, '四川省', '510131', '蒲江县', 'Pujiang Xian', 'PJX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2501, '四川省', '510132', '新津县', 'Xinjin Xian', 'XJC');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2502, '四川省', '510181', '都江堰市', 'Dujiangyan Shi', 'DJY');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2503, '四川省', '510182', '彭州市', 'Pengzhou Shi', 'PZS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2504, '四川省', '510183', '邛崃市', 'Qionglai Shi', 'QLA');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2505, '四川省', '510184', '崇州市', 'Chongzhou Shi', 'CZO');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2506, '四川省', '510300', '自贡市', 'Zigong Shi', 'ZGS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2507, '四川省', '510301', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2508, '四川省', '510302', '自流井区', 'Ziliujing Qu', 'ZLJ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2509, '四川省', '510303', '恭井区', 'Gongjing Qu', 'GJQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2510, '四川省', '510304', '大安区', 'Da,an Qu', 'DAQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2511, '四川省', '510311', '沿滩区', 'Yantan Qu', 'YTN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2512, '四川省', '510321', '荣县', 'Rong Xian', 'RGX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2513, '四川省', '510322', '富顺县', 'Fushun Xian', 'FSH');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2514, '四川省', '510400', '攀枝花市', 'Panzhihua Shi', 'PZH');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2515, '四川省', '510401', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2516, '四川省', '510402', '东区', 'Dong Qu', 'DQP');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2517, '四川省', '510403', '西区', 'Xi Qu', 'XIQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2518, '四川省', '510411', '仁和区', 'Renhe Qu', 'RHQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2519, '四川省', '510421', '米易县', 'Miyi Xian', 'MIY');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2520, '四川省', '510422', '盐边县', 'Yanbian Xian', 'YBN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2521, '四川省', '510500', '泸州市', 'Luzhou Shi', 'LUZ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2522, '四川省', '510501', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2523, '四川省', '510502', '江阳区', 'Jiangyang Qu', 'JYB');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2524, '四川省', '510503', '纳溪区', 'Naxi Qu', 'NXI');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2525, '四川省', '510504', '龙马潭区', 'Longmatan Qu', 'LMT');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2526, '四川省', '510521', '泸县', 'Lu Xian', 'LUX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2527, '四川省', '510522', '合江县', 'Hejiang Xian', 'HEJ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2528, '四川省', '510524', '叙永县', 'Xuyong Xian', 'XYO');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2529, '四川省', '510525', '古蔺县', 'Gulin Xian', 'GUL');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2530, '四川省', '510600', '德阳市', 'Deyang Shi', 'DEY');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2531, '四川省', '510601', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2532, '四川省', '510603', '旌阳区', 'Jingyang Qu', 'JYF');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2533, '四川省', '510623', '中江县', 'Zhongjiang Xian', 'ZGJ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2534, '四川省', '510626', '罗江县', 'Luojiang Xian', 'LOJ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2535, '四川省', '510681', '广汉市', 'Guanghan Shi', 'GHN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2536, '四川省', '510682', '什邡市', 'Shifang Shi', 'SFS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2537, '四川省', '510683', '绵竹市', 'Jinzhou Shi', 'MZU');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2538, '四川省', '510700', '绵阳市', 'Mianyang Shi', 'MYG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2539, '四川省', '510701', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2540, '四川省', '510703', '涪城区', 'Fucheng Qu', 'FCM');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2541, '四川省', '510704', '游仙区', 'Youxian Qu', 'YXM');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2542, '四川省', '510722', '三台县', 'Santai Xian', 'SNT');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2543, '四川省', '510723', '盐亭县', 'Yanting Xian', 'YTC');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2544, '四川省', '510724', '安县', 'An Xian', 'AXN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2545, '四川省', '510725', '梓潼县', 'Zitong Xian', 'ZTG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2546, '四川省', '510726', '北川县', 'Beichuan Xian', 'BCN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2547, '四川省', '510727', '平武县', 'Pingwu Xian', 'PWU');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2548, '四川省', '510781', '江油市', 'Jiangyou Shi', 'JYO');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2549, '四川省', '510800', '广元市', 'Guangyuan Shi', 'GYC');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2550, '四川省', '510801', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2551, '四川省', '510802', '市中区', 'Shizhong Qu', 'SZG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2552, '四川省', '510811', '元坝区', 'Yuanba Qu', 'YBQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2553, '四川省', '510812', '朝天区', 'Chaotian Qu', 'CTN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2554, '四川省', '510821', '旺苍县', 'Wangcang Xian', 'WGC');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2555, '四川省', '510822', '青川县', 'Qingchuan Xian', 'QCX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2556, '四川省', '510823', '剑阁县', 'Jiange Xian', 'JGE');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2557, '四川省', '510824', '苍溪县', 'Cangxi Xian', 'CXC');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2558, '四川省', '510900', '遂宁市', 'Suining Shi', 'SNS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2559, '四川省', '510901', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2560, '四川省', '510902', '市中区', 'Shizhong Qu', 'SZB');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2561, '四川省', '510921', '蓬溪县', 'Pengxi Xian', 'PXI');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2562, '四川省', '510922', '射洪县', 'Shehong Xian', 'SHE');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2563, '四川省', '510923', '大英县', 'Daying Xian', 'DAY');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2564, '四川省', '511000', '内江市', 'Neijiang Shi', 'NJS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2565, '四川省', '511001', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2566, '四川省', '511002', '市中区', 'Shizhong Qu', 'SZM');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2567, '四川省', '511011', '东兴区', 'Dongxing Qu', 'DXQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2568, '四川省', '511024', '威远县', 'Weiyuan Xian', 'WYU');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2569, '四川省', '511025', '资中县', 'Zizhong Xian', 'ZZC');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2570, '四川省', '511028', '隆昌县', 'Longchang Xian', 'LCC');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2571, '四川省', '511100', '乐山市', 'Leshan Shi', 'LES');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2572, '四川省', '511101', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2573, '四川省', '511102', '市中区', 'Shizhong Qu', 'SZP');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2574, '四川省', '511111', '沙湾区', 'Shawan Qu', 'SWN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2575, '四川省', '511112', '五通桥区', 'Wutongqiao Qu', 'WTQ');
commit;
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2576, '四川省', '511113', '金口河区', 'Jinkouhe Qu', 'JKH');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2577, '四川省', '511123', '犍为县', 'Qianwei Xian', 'QWE');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2578, '四川省', '511124', '井研县', 'Jingyan Xian', 'JYA');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2579, '四川省', '511126', '夹江县', 'Jiajiang Xian', 'JJC');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2580, '四川省', '511129', '沐川县', 'Muchuan Xian', 'MCH');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2581, '四川省', '511132', '峨边彝族自治县', 'Ebian Yizu Zizhixian', 'EBN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2582, '四川省', '511133', '马边彝族自治县', 'Mabian Yizu Zizhixian', 'MBN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2583, '四川省', '511181', '峨眉山市', 'Emeishan Shi', 'EMS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2584, '四川省', '511300', '南充市', 'Nanchong Shi', 'NCO');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2585, '四川省', '511301', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2586, '四川省', '511302', '顺庆区', 'Shunqing Xian', 'SQG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2587, '四川省', '511303', '高坪区', 'Gaoping Qu', 'GPQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2588, '四川省', '511304', '嘉陵区', 'Jialing Qu', 'JLG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2589, '四川省', '511321', '南部县', 'Nanbu Xian', 'NBU');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2590, '四川省', '511322', '营山县', 'Yingshan Xian', 'YGS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2591, '四川省', '511323', '蓬安县', 'Peng,an Xian', 'PGA');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2592, '四川省', '511324', '仪陇县', 'Yilong Xian', 'YLC');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2593, '四川省', '511325', '西充县', 'Xichong Xian', 'XCO');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2594, '四川省', '511381', '阆中市', 'Langzhong Shi', 'LZJ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2595, '四川省', '511500', '宜宾市', 'Yibin Shi', 'YBS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2596, '四川省', '511501', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2597, '四川省', '511502', '翠屏区', 'Cuiping Qu', 'CPQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2598, '四川省', '511521', '宜宾县', 'Yibin Xian', 'YBX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2599, '四川省', '511522', '南溪县', 'Nanxi Xian', 'NNX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2600, '四川省', '511523', '江安县', 'Jiang,an Xian', 'JAC');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2601, '四川省', '511524', '长宁县', 'Changning Xian', 'CNX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2602, '四川省', '511525', '高县', 'Gao Xian', 'GAO');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2603, '四川省', '511526', '珙县', 'Gong Xian', 'GOG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2604, '四川省', '511527', '筠连县', 'Junlian Xian', 'JNL');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2605, '四川省', '511528', '兴文县', 'Xingwen Xian', 'XWC');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2606, '四川省', '511529', '屏山县', 'Pingshan Xian', 'PSC');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2607, '四川省', '511600', '广安市', 'Guang,an Shi', 'GAC');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2608, '四川省', '511601', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2609, '四川省', '511602', '广安区', 'Guang,an Qu', 'GAQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2610, '四川省', '511621', '岳池县', 'Yuechi Xian', 'YCC');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2611, '四川省', '511622', '武胜县', 'Wusheng Xian', 'WSG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2612, '四川省', '511623', '邻水县', 'Linshui Xian', 'LSH');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2613, '四川省', '511681', '华蓥市', 'Huaying Shi', 'HYC');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2614, '四川省', '513000', '达川地区', 'Dachuan Diqu', 'DCC');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2615, '四川省', '513001', '达川市', 'Dachuan Shi', 'DCS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2616, '四川省', '513002', '万源市', 'Wanyuan Shi', 'WYS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2617, '四川省', '513021', '达县', 'Da Xian', 'DAX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2618, '四川省', '513022', '宣汉县', 'Xuanhan Xian', 'XHC');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2619, '四川省', '513023', '开江县', 'Kaijiang Xian', 'KJG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2620, '四川省', '513029', '大竹县', 'Dazhu Xian', 'DZU');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2621, '四川省', '513030', '渠县', 'Qu Xian', 'QXC');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2622, '四川省', '513100', '雅安地区', 'Ya,an Diqu', 'YAD');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2623, '四川省', '513101', '雅安市', 'Ya,an Shi', 'YAS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2624, '四川省', '513122', '名山县', 'Mingshan Xian', 'MGS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2625, '四川省', '513123', '荥经县', 'Yingjing Xian', 'YJC');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3051, '陕西省', '610202', '城区', 'Chengqu', 'CQT');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3052, '陕西省', '610203', '郊区', 'Jiaoqu', 'JTC');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3053, '陕西省', '610221', '耀县', 'Yao Xian', 'YAO');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3054, '陕西省', '610222', '宜君县', 'Yijun Xian', 'YJU');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3055, '陕西省', '610300', '宝鸡市', 'Baoji Shi', 'BJI');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3056, '陕西省', '610301', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3057, '陕西省', '610302', '渭滨区', 'Weibin Qu', 'WBQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3058, '陕西省', '610303', '金台区', 'Jintai Qu', 'JTQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3059, '陕西省', '610321', '宝鸡县', 'Baoji Xian', 'BJX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3060, '陕西省', '610322', '凤翔县', 'Fengxiang Xian', 'FXG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3061, '陕西省', '610323', '岐山县', 'Qishan Xian', 'QIS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3062, '陕西省', '610324', '扶风县', 'Fufeng Xian', 'FFG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3063, '陕西省', '610326', '眉县', 'Mei Xian', 'MEI');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3064, '陕西省', '610327', '陇县', 'Long Xian', 'LON');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3065, '陕西省', '610328', '千阳县', 'Qianyang Xian', 'QNY');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3066, '陕西省', '610329', '麟游县', 'Linyou Xian', 'LYP');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3067, '陕西省', '610330', '凤县', 'Feng Xian', 'FEG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3068, '陕西省', '610331', '太白县', 'Taibai Xian', 'TBA');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3069, '陕西省', '610400', '咸阳市', 'Xianyang Shi', 'XYS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3070, '陕西省', '610401', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3071, '陕西省', '610402', '秦都区', 'Qindu Qu', 'QDU');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3072, '陕西省', '610403', '杨陵区', 'Yangling Qu', 'YGL');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3073, '陕西省', '610404', '渭城区', 'Weicheng Qu', 'WIC');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3074, '陕西省', '610422', '三原县', 'Sanyuan Xian', 'SYN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3075, '陕西省', '610423', '泾阳县', 'Jingyang Xian', 'JGY');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3076, '陕西省', '610424', '乾县', 'Qian Xian', 'QIA');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3077, '陕西省', '610425', '礼泉县', 'Liquan Xian', 'LIQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3078, '陕西省', '610426', '永寿县', 'Yongshou Xian', 'YSH');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3079, '陕西省', '610427', '彬县', 'Bin Xian', 'BIX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3080, '陕西省', '610428', '长武县', 'Changwu Xian', 'CWU');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3081, '陕西省', '610429', '旬邑县', 'Xunyi Xian', 'XNY');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3082, '陕西省', '610430', '淳化县', 'Chunhua Xian', 'CHU');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3083, '陕西省', '610431', '武功县', 'Wugong Xian', 'WGG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3084, '陕西省', '610481', '兴平市', 'Xingping Shi', 'XPG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3085, '陕西省', '610500', '渭南市', 'Weinan Shi', 'WNA');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3086, '陕西省', '610501', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3087, '陕西省', '610502', '临渭区', 'Linwei Qu', 'LWE');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3088, '陕西省', '610521', '华县', 'Hua Xian', 'HXN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3089, '陕西省', '610522', '潼关县', 'Tongguan Xian', 'TGN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3090, '陕西省', '610523', '大荔县', 'Dali Xian', 'DAL');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3091, '陕西省', '610524', '合阳县', 'Heyang Xian', 'HYK');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3092, '陕西省', '610525', '澄城县', 'Chengcheng Xian', 'CCG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3093, '陕西省', '610526', '蒲城县', 'Pucheng Xian', 'PUC');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3094, '陕西省', '610527', '白水县', 'Baishui Xian', 'BSU');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3095, '陕西省', '610528', '富平县', 'Fuping Xian', 'FPX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3096, '陕西省', '610581', '韩城市', 'Hancheng Shi', 'HCE');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3097, '陕西省', '610582', '华阴市', 'Huayin Shi', 'HYI');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3098, '陕西省', '610600', '延安市', 'Yan,an Shi', 'YNA');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3099, '陕西省', '610601', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3100, '陕西省', '610602', '宝塔区', 'Baota Qu', 'BTA');
commit;
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3101, '陕西省', '610621', '延长县', 'Yanchang Xian', 'YCA');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3102, '陕西省', '610622', '延川县', 'Yanchuan Xian', 'YCT');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3103, '陕西省', '610623', '子长县', 'Zichang Xian', 'ZCA');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3104, '陕西省', '610624', '安塞县', 'Ansai Xian', 'ANS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3105, '陕西省', '610625', '志丹县', 'Zhidan Xian', 'ZDN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3106, '陕西省', '610626', '吴旗县', 'Wuqi Xian', 'WQI');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3107, '陕西省', '610627', '甘泉县', 'Ganquan Xian', 'GQN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3108, '陕西省', '610628', '富县', 'Fu Xian', 'FUX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3109, '陕西省', '610629', '洛川县', 'Luochuan Xian', 'LCW');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3110, '陕西省', '610630', '宜川县', 'Yichuan Xian', 'YIC');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3111, '陕西省', '610631', '黄龙县', 'Huanglong Xian', 'HGL');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3112, '陕西省', '610632', '黄陵县', 'Huangling Xian', 'HLG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3113, '陕西省', '610700', '汉中市', 'Hanzhong Shi', 'HZJ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3114, '陕西省', '610701', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3115, '陕西省', '610702', '汉台区', 'Hantai Qu', 'HTQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3116, '陕西省', '610721', '南郑县', 'Nanzheng Xian', 'NZG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3117, '陕西省', '610722', '城固县', 'Chenggu Xian', 'CGU');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3118, '陕西省', '610723', '洋县', 'Yang Xian', 'YGX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3119, '陕西省', '610724', '西乡县', 'Xixiang Xian', 'XXA');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3120, '陕西省', '610725', '勉县', 'Mian Xian', 'MIA');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3121, '陕西省', '610726', '宁强县', 'Ningqiang Xian', 'NQG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3122, '陕西省', '610727', '略阳县', 'Lueyang Xian', 'LYC');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3123, '陕西省', '610728', '镇巴县', 'Zhenba Xian', 'ZBA');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3124, '陕西省', '610729', '留坝县', 'Liuba Xian', 'LBA');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3125, '陕西省', '610730', '佛坪县', 'Foping Xian', 'FPG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3126, '陕西省', '612400', '安康地区', 'Ankang Diqu', 'AKG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3127, '陕西省', '612401', '安康市', 'Ankang Shi', 'ANK');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3128, '陕西省', '612422', '汉阴县', 'Hanyin Xian', 'HYY');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3129, '陕西省', '612423', '石泉县', 'Shiquan Xian', 'SQN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3130, '陕西省', '612424', '宁陕县', 'Ningshan Xian', 'NGS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3131, '陕西省', '612425', '紫阳县', 'Ziyang Xian', 'ZYG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3132, '陕西省', '612426', '岚皋县', 'Langao Xian', 'LNG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3133, '陕西省', '612427', '平利县', 'Pingli Xian', 'PLX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3134, '陕西省', '612428', '镇坪县', 'Zhenping Xian', 'ZNP');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3135, '陕西省', '612429', '旬阳县', 'Xunyang Xian', 'XYX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3136, '陕西省', '612430', '白河县', 'Baihe Xian', 'BHE');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3137, '陕西省', '612500', '商洛地区', 'Shangluo Diqu', 'SLD');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3138, '陕西省', '612501', '商州市', 'Shangzhou Shi', 'SZO');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3139, '陕西省', '612522', '洛南县', 'Luonan Xian', 'LNK');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3140, '陕西省', '612523', '丹凤县', 'Danfeng Xian', 'DNF');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3141, '陕西省', '612524', '商南县', 'Shangnan Xian', 'SNN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3142, '陕西省', '612525', '山阳县', 'Shanyang Xian', 'SNY');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3143, '陕西省', '612526', '镇安县', 'Zhen,an Xian', 'ZNA');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3144, '陕西省', '612527', '柞水县', 'Zhashui Xian', 'ZSU');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3145, '陕西省', '612700', '榆林地区', 'Yulin Diqu', 'YLD');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3146, '陕西省', '612701', '榆林市', 'Yulin Shi', 'YLN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3147, '陕西省', '612722', '神木县', 'Shenmu Xian', 'SMU');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3148, '陕西省', '612723', '府谷县', 'Fugu Xian', 'FGU');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3149, '陕西省', '612724', '横山县', 'Hengshan Xian', 'HAS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3150, '陕西省', '612725', '靖边县', 'Jingbian Xian', 'JBN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3151, '陕西省', '612726', '定边县', 'Dingbian Xian', 'DBN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3152, '陕西省', '612727', '绥德县', 'Suide Xian', 'SDE');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3153, '陕西省', '612728', '米脂县', 'Mizhi Xian', 'MZH');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3154, '陕西省', '612729', '佳县', 'Jia Xian', 'JXN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3155, '陕西省', '612730', '吴堡县', 'Wubu Xian', 'WBU');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3156, '陕西省', '612731', '清涧县', 'Qingjian Xian', 'QJN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3157, '陕西省', '612732', '子洲县', 'Zizhou Xian', 'ZZH');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3158, '甘肃省', '620000', '甘肃省', 'Gansu Sheng', 'GS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3159, '甘肃省', '620100', '兰州市', 'Lanzhou Shi', 'LHW');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3160, '甘肃省', '620101', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3161, '甘肃省', '620102', '城关区', 'Chengguan Qu', 'CLZ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3162, '甘肃省', '620103', '七里河区', 'Qilihe Qu', 'QLH');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3163, '甘肃省', '620104', '西固区', 'Xigu Qu', 'XGU');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3164, '甘肃省', '620105', '安宁区', 'Anning Qu', 'ANQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3165, '甘肃省', '620111', '红古区', 'Honggu Qu', 'HOG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3166, '甘肃省', '620121', '永登县', 'Yongdeng Xian', 'YDG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3167, '甘肃省', '620122', '皋兰县', 'Gaolan Xian', 'GAL');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3168, '甘肃省', '620123', '榆中县', 'Yuzhong Xian', 'YZX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3169, '甘肃省', '620200', '嘉峪关市', 'Jiayuguan Shi', 'JYG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3170, '甘肃省', '620201', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3171, '甘肃省', '620300', '金昌市', 'Jinchang Shi', 'JCS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3172, '甘肃省', '620301', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3173, '甘肃省', '620302', '金川区', 'Jinchuan Qu', 'JCU');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3174, '甘肃省', '620321', '永昌县', 'Yongchang Xian', 'YCF');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3175, '甘肃省', '620400', '白银市', 'Baiyin Shi', 'BYS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3176, '甘肃省', '620401', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3177, '甘肃省', '620402', '白银区', 'Baiyin Qu', 'BYB');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3178, '甘肃省', '620403', '平川区', 'Pingchuan Qu', 'PCQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3179, '甘肃省', '620421', '靖远县', 'Jingyuan Xian', 'JYH');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3180, '甘肃省', '620422', '会宁县', 'Huining xian', 'HNI');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3181, '甘肃省', '620423', '景泰县', 'Jingtai Xian', 'JGT');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3182, '甘肃省', '620500', '天水市', 'Tianshui Shi', 'TSU');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3183, '甘肃省', '620501', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3184, '甘肃省', '620502', '秦城区', 'Qincheng Qu', 'QCG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3185, '甘肃省', '620503', '北道区', 'Beidao Qu', 'BDQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3186, '甘肃省', '620521', '清水县', 'Qingshui Xian', 'QSG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3187, '甘肃省', '620522', '秦安县', 'Qin,an Xian', 'QNA');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3188, '甘肃省', '620523', '甘谷县', 'Gangu Xian', 'GGU');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3189, '甘肃省', '620524', '武山县', 'Wushan Xian', 'WSX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3190, '甘肃省', '620525', '张家川回族自治县', 'Zhangjiachuan Huizu Zizhixian', 'ZJC');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3191, '甘肃省', '622100', '酒泉地区', 'Jiuquan Diqu', 'JQD');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3192, '甘肃省', '622101', '玉门市', 'Yumen Shi', 'YMS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3193, '甘肃省', '622102', '酒泉市', 'Jiuquan Shi', 'JQG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3194, '甘肃省', '622103', '敦煌市', 'Dunhuang Shi', 'DNH');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3195, '甘肃省', '622123', '金塔县', 'Jinta Xian', 'JTA');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3196, '甘肃省', '622124', '肃北蒙古族自治县', 'Subei Monguzu Zizhixian', 'SBE');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3197, '甘肃省', '622125', '阿克塞哈萨克族自治县', 'Aksay Kazakzu Zizhixian', 'AKX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3198, '甘肃省', '622126', '安西县', 'Anxi Xian', 'AXI');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3199, '甘肃省', '622200', '张掖地区', 'Zhangye Diqu ', 'ZYJ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3200, '甘肃省', '622201', '张掖市', 'Zhangye Shi', 'ZYE');
commit;
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3201, '甘肃省', '622222', '肃南裕固族自治县', 'Sunan Yugurzu Zizhixian', 'SUN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3202, '甘肃省', '622223', '民乐县', 'Minle Xian', 'MLE');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3203, '甘肃省', '622224', '临泽县', 'Linze Xian', 'LZE');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3204, '甘肃省', '622225', '高台县', 'Gaotai Xian', 'GAT');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3205, '甘肃省', '622226', '山丹县', 'Shandan Xian', 'SDN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3206, '甘肃省', '622300', '武威地区', 'Wuwei Diqu ', 'WWD');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3207, '甘肃省', '622301', '武威市', 'Wuwei Shi', 'WWS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3208, '甘肃省', '622322', '民勤县', 'Minqin Xian', 'MQN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3209, '甘肃省', '622323', '古浪县', 'Gulang Xian', 'GLG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3210, '甘肃省', '622326', '天祝藏族自治县', 'Tianzhu Zangzu Zizhixian', 'TZG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3211, '甘肃省', '622400', '定西地区', 'Dingxi Diqu', 'DXD');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3212, '甘肃省', '622421', '定西县', 'Dingxi Xian', 'DXI');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3213, '甘肃省', '622424', '通渭县', 'Tongwei Xian', 'TWE');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3214, '甘肃省', '622425', '陇西县', 'Longxi Xian', 'LXK');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3215, '甘肃省', '622426', '渭源县', 'Weiyuan Xian', 'WIY');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3216, '甘肃省', '622427', '临洮县', 'Lintao Xian', 'LTO');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3217, '甘肃省', '622428', '漳县', 'Zhang Xian', 'ZGX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3218, '甘肃省', '622429', '岷县', 'Min Xian', 'MIN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3219, '甘肃省', '622600', '陇南地区', 'Longnan Diqu', 'LND');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3220, '甘肃省', '622621', '武都县', 'Wudu Xian', 'WUD');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3221, '甘肃省', '622623', '宕昌县', 'Dangchang Xian', 'DGC');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3222, '甘肃省', '622624', '成县', 'Cheng Xian', 'CHG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3223, '甘肃省', '622625', '康县', 'Kang Xian', 'KNG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3224, '甘肃省', '622626', '文县', 'Wen Xian', 'WEG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3225, '甘肃省', '622627', '西和县', 'Xihe Xian', 'XHE');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3226, '甘肃省', '622628', '礼县', 'Li Xian', 'LXG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3227, '甘肃省', '622629', '两当县', 'Liangdang Xian', 'LDG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3228, '甘肃省', '622630', '徽县', 'Hui Xian', 'HIX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3229, '甘肃省', '622700', '平凉地区', 'Pingliang Diqu', 'PLG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3230, '甘肃省', '622701', '平凉市', 'Pingliang Shi', 'PLS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3231, '甘肃省', '622722', '泾川县', 'Jingchuan Xian', 'JCN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3232, '甘肃省', '622723', '灵台县', 'Lingtai Xian', 'LGT');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3233, '甘肃省', '622724', '崇信县', 'Chongxin Xian', 'COX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3234, '甘肃省', '622725', '华亭县', 'Huating Xian', 'HTI');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3235, '甘肃省', '622726', '庄浪县', 'Zhuanglang Xian', 'ZLG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3236, '甘肃省', '622727', '静宁县', 'Jingning Xian', 'JNI');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3237, '甘肃省', '622800', '庆阳地区', 'Qingyang Diqu', 'QYD');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3238, '甘肃省', '622801', '西峰市', 'Xifeng Shi', 'XFS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3239, '甘肃省', '622821', '庆阳市', 'Qingyang Shi', 'QYG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3240, '甘肃省', '622822', '环县', 'Huan Xian', 'HUN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3241, '甘肃省', '622823', '华池县', 'Huachi Xian', 'HCI');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3242, '甘肃省', '622824', '合水县', 'Heshui Xian', 'HSX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3243, '甘肃省', '622825', '正宁县', 'Zhengning Xian', 'ZGN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3244, '甘肃省', '622826', '宁县', 'Ning Xian', 'NIG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3245, '甘肃省', '622827', '镇原县', 'Zhenyuan Xian', 'ZYN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3246, '甘肃省', '622900', '临夏回族自治州', 'Linxia Huizu Zizhizhou ', 'LXH');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3247, '甘肃省', '622901', '临夏市', 'Linxia Shi', 'LXR');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3248, '甘肃省', '622921', '临夏县', 'Linxia Xian', 'LXF');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3249, '甘肃省', '622922', '康乐县', 'Kangle Xian', 'KLE');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3250, '甘肃省', '622923', '永靖县', 'Yongjing Xian', 'YJG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3251, '甘肃省', '622924', '广河县', 'Guanghe Xian', 'GHX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3252, '甘肃省', '622925', '和政县', 'Hezheng Xian', 'HZG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3253, '甘肃省', '622926', '东乡族自治县', 'Dongxiangzu Zizhixian', 'DXZ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3254, '甘肃省', '622927', '积石山保安族东乡族撒拉族自治县', 'Jishishan Bonanzu Dongxiangzu Salarzu Zizhixian', 'JSN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3255, '甘肃省', '623000', '甘南藏族自治州', 'Gannan Zangzu Zizhizhou', 'GNZ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3256, '甘肃省', '623001', '合作市', 'Hezuo Shi', 'HEZ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3257, '甘肃省', '623021', '临潭县', 'Lintan Xian', 'LTN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3258, '甘肃省', '623022', '卓尼县', 'Jone', 'JON');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3259, '甘肃省', '623023', '舟曲县', 'Zhugqu Xian', 'ZQU');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3260, '甘肃省', '623024', '迭部县', 'Tewo Xian', 'TEW');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3261, '甘肃省', '623025', '玛曲县', 'Maqu Xian', 'MQU');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3262, '甘肃省', '623026', '碌曲县', 'Luqu Xian', 'LQU');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3263, '甘肃省', '623027', '夏河县', 'Xiahe Xian', 'XHN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3264, '青海省', '630000', '青海省', 'Qinghai Sheng', 'QH');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3265, '青海省', '630100', '西宁市', 'Xining Shi', 'XNN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3266, '青海省', '630101', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3267, '青海省', '630102', '城东区', 'Chengdong Qu', 'CDQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3268, '青海省', '630103', '城中区', 'Chengzhong Qu', 'CZQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3269, '青海省', '630104', '城西区', 'Chengxi Qu', 'CXQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3270, '青海省', '630105', '城北区', 'Chengbei Qu', 'CBE');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3271, '青海省', '630121', '大通回族土族自治县', 'Datong Huizu Tuzu Zizhixian', 'DAT');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3272, '青海省', '632100', '海东地区', 'Haidong Diqu', 'HDD');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3273, '青海省', '632121', '平安县', 'Ping,an Xian', 'PAN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3274, '青海省', '632122', '民和回族土族自治县', 'Minhe Huizu Tuzu Zizhixian', 'MHE');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3275, '青海省', '632123', '乐都县', 'Ledu Xian', 'LDU');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3276, '青海省', '632124', '湟中县', 'Huangzhong Xian', 'HZX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3277, '青海省', '632125', '湟源县', 'Huangyuan Xian', 'HYU');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3278, '青海省', '632126', '互助土族自治县', 'Huzhu Tuzu Zizhixian', 'HZT');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3279, '青海省', '632127', '化隆回族自治县', 'Hualong Huizu Zizhixian', 'HLO');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3280, '青海省', '632128', '循化撒拉族自治县', 'Xunhua Salazu Zizhixian', 'XUH');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3281, '青海省', '632200', '海北藏族自治州', 'Haibei Zangzu Zizhizhou', 'HBZ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3282, '青海省', '632221', '门源回族自治县', 'Menyuan Huizu Zizhixian', 'MYU');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3283, '青海省', '632222', '祁连县', 'Qilian Xian', 'QLN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3284, '青海省', '632223', '海晏县', 'Haiyan Xian', 'HIY');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3285, '青海省', '632224', '刚察县', 'Gangca Xian', 'GAN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3286, '青海省', '632300', '黄南藏族自治州', 'Huangnan Zangzu Zizhizhou', 'HNZ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3287, '青海省', '632321', '同仁县', 'Tongren Xian', 'TRN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3288, '青海省', '632322', '尖扎县', 'Jainca Xian', 'JAI');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3289, '青海省', '632323', '泽库县', 'Zekog Xian', 'ZEK');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3290, '青海省', '632324', '河南蒙古族自治县', 'Henan Mongolzu Zizhixian', 'HNM');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3291, '青海省', '632500', '海南藏族自治州', 'Hainan Zangzu Zizhizhou', 'HNN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3292, '青海省', '632521', '共和县', 'Gonghe Xian', 'GHE');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3293, '青海省', '632522', '同德县', 'Tongde Xian', 'TDX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3294, '青海省', '632523', '贵德县', 'Guide Xian', 'GID');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3295, '青海省', '632524', '兴海县', 'Xinghai Xian', 'XHA');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3296, '青海省', '632525', '贵南县', 'Guinan Xian', 'GNN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3297, '青海省', '632600', '果洛藏族自治州', 'Golog Zangzu Zizhizhou', 'GOL');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3298, '青海省', '632621', '玛沁县', 'Maqen Xian', 'MAQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3299, '青海省', '632622', '班玛县', 'Baima Xian', 'BMX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3300, '青海省', '632623', '甘德县', 'Gade Xian', 'GAD');
commit;
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3301, '青海省', '632624', '达日县', 'Tarlag Xian', 'TAR');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3302, '青海省', '632625', '久治县', 'Jigzhi Xian', 'JUZ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3303, '青海省', '632626', '玛多县', 'Madoi Xian', 'MAD');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3304, '青海省', '632700', '玉树藏族自治州', 'Yushu Zangzu Zizhizhou', 'YSZ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3305, '青海省', '632721', '玉树县', 'Yushu Xian', 'YSK');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3306, '青海省', '632722', '杂多县', 'Zadoi Xian', 'ZAD');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3307, '青海省', '632723', '称多县', 'Chindu Xian', 'CHI');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3308, '青海省', '632724', '治多县', 'Zhidoi Xian', 'ZHI');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3309, '青海省', '632725', '囊谦县', 'Nangqen Xian', 'NQN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3310, '青海省', '632726', '曲麻莱县', 'Qumarleb Xian', 'QUM');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3311, '青海省', '632800', '海西蒙古族藏族自治州', 'Haixi Mongolzu Zangzu Zizhizhou', 'HXZ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3312, '青海省', '632801', '格尔木市', 'Golmud Shi', 'GOS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3313, '青海省', '632802', '德令哈市', 'Delhi Shi', 'DEL');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3314, '青海省', '632821', '乌兰县', 'Ulan Xian', 'ULA');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3315, '青海省', '632822', '都兰县', 'Dulan Xian', 'DUL');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3316, '青海省', '632823', '天峻县', 'Tianjun Xian', 'TJN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3317, '宁夏回族自治区', '640000', '宁夏回族自治区', 'Ningxia Huizu Zizhiqu', 'NX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3318, '宁夏回族自治区', '640100', '银川市', 'Yinchuan Shi', 'INC');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3319, '宁夏回族自治区', '640101', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3320, '宁夏回族自治区', '640102', '城区', 'Chengqu', 'CQY');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3321, '宁夏回族自治区', '640103', '新城区', 'Xincheng Qu', 'XCU');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3322, '宁夏回族自治区', '640111', '郊区', 'Jiaoqu', 'JQC');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3323, '宁夏回族自治区', '640121', '永宁县', 'Yongning Xian', 'YGN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3324, '宁夏回族自治区', '640122', '贺兰县', 'Helan Xian', 'HLN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3325, '宁夏回族自治区', '640200', '石嘴山市', 'Shizuishan Shi', 'SZS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3326, '宁夏回族自治区', '640201', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3327, '宁夏回族自治区', '640202', '大武口区', 'Dawukou Qu', 'DWK');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3328, '宁夏回族自治区', '640203', '石嘴山区', 'Shizuishan Qu', 'SZA');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3329, '宁夏回族自治区', '640204', '石炭井区', 'Shitanjing Qu', 'STJ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3330, '宁夏回族自治区', '640221', '平罗县', 'Pingluo Xian', 'PLO');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3331, '宁夏回族自治区', '640222', '陶乐县', 'Taole Xian', 'TLE');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3332, '宁夏回族自治区', '640223', '惠农县', 'Huinong Xian', 'HNO');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3333, '宁夏回族自治区', '640300', '吴忠市', 'Wuzhong Shi', 'WZS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3334, '宁夏回族自治区', '640301', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3335, '宁夏回族自治区', '640302', '利通区', 'Litong Qu', 'LTW');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3336, '宁夏回族自治区', '640321', '中卫县', 'Zhongwei Xian', 'ZWE');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3337, '宁夏回族自治区', '640322', '中宁县', 'Zhongning Xian', 'ZNG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3338, '宁夏回族自治区', '640323', '盐池县', 'Yanchi Xian', 'YCY');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3339, '宁夏回族自治区', '640324', '同心县', 'Tongxin Xian', 'TGX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3340, '宁夏回族自治区', '640381', '青铜峡市', 'Qingtongxia Xian', 'QTX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3341, '宁夏回族自治区', '640382', '灵武市', 'Lingwu Shi', 'LWU');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3342, '宁夏回族自治区', '642200', '固原地区', 'Guyuan Diqu', 'GYD');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3343, '宁夏回族自治区', '642221', '固原县', 'Guyuan Xian', 'GYN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3344, '宁夏回族自治区', '642222', '海原县', 'Haiyuan Xian', 'HYB');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3345, '宁夏回族自治区', '642223', '西吉县', 'Xiji Xian', 'XJI');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3346, '宁夏回族自治区', '642224', '隆德县', 'Longde Xian', 'LDE');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3347, '宁夏回族自治区', '642225', '泾源县', 'Jingyuan Xian', 'JYK');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3348, '宁夏回族自治区', '642226', '彭阳县', 'Pengyang Xian', 'PEY');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3349, '新疆维吾尔自治区', '650000', '新疆维吾尔自治区', 'Xinjiang Uygur Zizhiqu', 'XJ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3350, '新疆维吾尔自治区', '650100', '乌鲁木齐市', 'Urumqi Shi', 'URC');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3351, '新疆维吾尔自治区', '650101', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3352, '新疆维吾尔自治区', '650102', '天山区', 'Tianshan Qu', 'TSL');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3353, '新疆维吾尔自治区', '650103', '沙依巴克区', 'Saybag Qu', 'SAY');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3354, '新疆维吾尔自治区', '650104', '新市区', 'Xinshi Qu', 'XSU');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3355, '新疆维吾尔自治区', '650105', '水磨沟区', 'Shuimogou Qu', 'SMG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3356, '新疆维吾尔自治区', '650106', '头屯河区', 'Toutunhe Qu', 'TTH');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3357, '新疆维吾尔自治区', '650107', '南山矿区', 'Nanshan Kuangqu', 'NSK');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3358, '新疆维吾尔自治区', '650108', '东山区', 'Dongshan Qu', 'DSU');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3359, '新疆维吾尔自治区', '650121', '乌鲁木齐县', 'Urumqi Xian', 'URX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3360, '新疆维吾尔自治区', '650200', '克拉玛依市', 'Karamay Shi', 'KAR');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3361, '新疆维吾尔自治区', '650201', '市辖区', 'Shixiaqu', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3362, '新疆维吾尔自治区', '650202', '独山子区', 'Dushanzi Qu', 'DSZ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3363, '新疆维吾尔自治区', '650203', '克拉玛依区', 'Karamay Qu', 'KRQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3364, '新疆维吾尔自治区', '650204', '白碱滩区', 'Baijiantan Qu', 'BJT');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3365, '新疆维吾尔自治区', '650205', '乌尔禾区', 'Orku Qu', 'ORK');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3366, '新疆维吾尔自治区', '652100', '吐鲁番地区', 'Turpan Diqu', 'TUD');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3367, '新疆维吾尔自治区', '652101', '吐鲁番市', 'Turpan Shi', 'TUR');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3368, '新疆维吾尔自治区', '652122', '鄯善县', 'Shanshan(piqan) Xian', 'SSX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3369, '新疆维吾尔自治区', '652123', '托克逊县', 'Toksun Xian', 'TOK');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3370, '新疆维吾尔自治区', '652200', '哈密地区', 'Hami(kumul) Diqu', 'HMD');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3371, '新疆维吾尔自治区', '652201', '哈密市', 'Hami(kumul) Shi', 'HAM');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3372, '新疆维吾尔自治区', '652222', '巴里坤哈萨克自治县', 'Barkol Kazak Zizhixian', 'BAR');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3373, '新疆维吾尔自治区', '652223', '伊吾县', 'Yiwu(Araturuk) Xian', 'YWX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3374, '新疆维吾尔自治区', '652300', '昌吉回族自治州', 'Changji Huizu Zizhizhou', 'CJZ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3375, '新疆维吾尔自治区', '652301', '昌吉市', 'Changji Shi', 'CJS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3376, '新疆维吾尔自治区', '652302', '阜康市', 'Fukang Shi', 'FKG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3377, '新疆维吾尔自治区', '652303', '米泉市', 'Miquan Shi', 'MQS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3378, '新疆维吾尔自治区', '652323', '呼图壁县', 'Hutubi Xian', 'HTB');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3379, '新疆维吾尔自治区', '652324', '玛纳斯县', 'Manas Xian', 'MAS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3380, '新疆维吾尔自治区', '652325', '奇台县', 'Qitai Xian', 'QTA');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3381, '新疆维吾尔自治区', '652327', '吉木萨尔县', 'Jimsar Xian', 'JIM');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3382, '新疆维吾尔自治区', '652328', '木垒哈萨克自治县', 'Mori Kazak Zizhixian', 'MOR');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3383, '新疆维吾尔自治区', '652700', '博尔塔拉蒙古自治州', 'Bortala Monglo Zizhizhou', 'BOR');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3384, '新疆维吾尔自治区', '652701', '博乐市', 'Bole(Bortala) Shi', 'BLE');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3385, '新疆维吾尔自治区', '652722', '精河县', 'Jinghe(Jing) Xian', 'JGH');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3386, '新疆维吾尔自治区', '652723', '温泉县', 'Wenquan(Arixang) Xian', 'WNQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3387, '新疆维吾尔自治区', '652800', '巴音郭楞蒙古族自治州', 'Bayingolin Mongol Zizhizhou', 'BAG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3388, '新疆维吾尔自治区', '652801', '库尔勒市', 'Korla Shi', 'KOR');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3389, '新疆维吾尔自治区', '652822', '轮台县', 'Luntai(Bugur) Xian', 'LTX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3390, '新疆维吾尔自治区', '652823', '尉犁县', 'Yuli(Lopnur) Xian', 'YLI');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3391, '新疆维吾尔自治区', '652824', '若羌县', 'Ruoqiang(Qakilik) Xian', 'RQG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3392, '新疆维吾尔自治区', '652825', '且末县', 'Qiemo(Qarqan) Xian', 'QMO');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3393, '新疆维吾尔自治区', '652826', '焉耆回族自治县', 'Yanqi Huizu Zizhixian', 'YQI');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3394, '新疆维吾尔自治区', '652827', '和静县', 'Hejing Xian', 'HJG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3395, '新疆维吾尔自治区', '652828', '和硕县', 'Hoxud Xian', 'HOX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3396, '新疆维吾尔自治区', '652829', '博湖县', 'Bohu(Bagrax) Xian', 'BHU');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3397, '新疆维吾尔自治区', '652900', '阿克苏地区', 'Aksu Diqu', 'AKD');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3398, '新疆维吾尔自治区', '652901', '阿克苏市', 'Aksu Shi', 'AKS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3399, '新疆维吾尔自治区', '652922', '温宿县', 'Wensu Xian', 'WSU');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3400, '新疆维吾尔自治区', '652923', '库车县', 'Kuqa Xian', 'KUQ');
commit;
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3401, '新疆维吾尔自治区', '652924', '沙雅县', 'Xayar Xian', 'XYR');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3402, '新疆维吾尔自治区', '652925', '新和县', 'Xinhe(Toksu) Xian', 'XHT');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3403, '新疆维吾尔自治区', '652926', '拜城县', 'Baicheng(Bay) Xian', 'BCG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3404, '新疆维吾尔自治区', '652927', '乌什县', 'Wushi(Uqturpan) Xian', 'WSH');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3405, '新疆维吾尔自治区', '652928', '阿瓦提县', 'Awat Xian', 'AWA');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3406, '新疆维吾尔自治区', '652929', '柯坪县', 'Kalpin Xian', 'KAL');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3407, '新疆维吾尔自治区', '653000', '克孜勒苏柯尔克孜自治州', 'Kizilsu Kirgiz Zizhizhou', 'KIZ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3408, '新疆维吾尔自治区', '653001', '阿图什市', 'Artux Shi', 'ART');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3409, '新疆维吾尔自治区', '653022', '阿克陶县', 'Akto Xian', 'AKT');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3410, '新疆维吾尔自治区', '653023', '阿合奇县', 'Akqi Xian', 'AKQ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3411, '新疆维吾尔自治区', '653024', '乌恰县', 'Wuqia(Ulugqat) Xian', 'WQA');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3412, '新疆维吾尔自治区', '653100', '喀什地区', 'Kashi(Kaxgar) Diqu', 'KSI');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3413, '新疆维吾尔自治区', '653101', '喀什市', 'Kashi (Kaxgar) Shi', 'KHG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3414, '新疆维吾尔自治区', '653121', '疏附县', 'Shufu Xian', 'SFU');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3415, '新疆维吾尔自治区', '653122', '疏勒县', 'Shule Xian', 'SHL');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3416, '新疆维吾尔自治区', '653123', '英吉沙县', 'Yengisar Xian', 'YEN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3417, '新疆维吾尔自治区', '653124', '泽普县', 'Zepu(Poskam) Xian', 'ZEP');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3418, '新疆维吾尔自治区', '653125', '莎车县', 'Shache(Yarkant) Xian', 'SHC');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3419, '新疆维吾尔自治区', '653126', '叶城县', 'Yecheng(Kargilik) Xian', 'YEC');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3420, '新疆维吾尔自治区', '653127', '麦盖提县', 'Markit Xian', 'MAR');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3421, '新疆维吾尔自治区', '653128', '岳普湖县', 'Yopurga Xian', 'YOP');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3422, '新疆维吾尔自治区', '653129', '伽师县', 'Jiashi(Payzawat) Xian', 'JSI');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3423, '新疆维吾尔自治区', '653130', '巴楚县', 'Bachu(Maralbexi) Xian', 'BCX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3424, '新疆维吾尔自治区', '653131', '塔什库尔干塔吉克自治县', 'Taxkorgan Tajik Zizhixian', 'TXK');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3425, '新疆维吾尔自治区', '653200', '和田地区', 'Hotan Diqu', 'HOD');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3426, '新疆维吾尔自治区', '653201', '和田市', 'Hotan Shi', 'HTS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3427, '新疆维吾尔自治区', '653221', '和田县', 'Hotan Xian', 'HOT');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3428, '新疆维吾尔自治区', '653222', '墨玉县', 'Moyu(Karakax) Xian', 'MOY');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3429, '新疆维吾尔自治区', '653223', '皮山县', 'Pishan(Guma) Xian', 'PSA');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3430, '新疆维吾尔自治区', '653224', '洛浦县', 'Lop Xian', 'LOP');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3431, '新疆维吾尔自治区', '653225', '策勒县', 'Qira Xian', 'QIR');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3432, '新疆维吾尔自治区', '653226', '于田县', 'Yutian(Keriya) Xian', 'YUT');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3433, '新疆维吾尔自治区', '653227', '民丰县', 'Minfeng(Niya) Xian', 'MFG');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3434, '新疆维吾尔自治区', '654000', '伊犁哈萨克自治州', 'Ili Kazak Zizhizhou', 'ILD');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3435, '新疆维吾尔自治区', '654001', '奎屯市', 'Kuytun Shi', 'KUY');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3436, '新疆维吾尔自治区', '654100', '伊犁地区', 'Ili Diqu', 'ILI');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3437, '新疆维吾尔自治区', '654101', '伊宁市', 'Yining(Gulja) Shi', 'YIN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3438, '新疆维吾尔自治区', '654121', '伊宁县', 'Yining(Gulja) Xian', 'YNI');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3439, '新疆维吾尔自治区', '654122', '察布查尔锡伯自治县', 'Qapqal Xibe Zizhixian', 'QAP');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3440, '新疆维吾尔自治区', '654123', '霍城县', 'Huocheng Xin', 'HCX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3441, '新疆维吾尔自治区', '654124', '巩留县', 'Gongliu(Tokkuztara) Xian', 'GLX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3442, '新疆维吾尔自治区', '654125', '新源县', 'Xinyuan(Kunes) Xian', 'XYT');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3443, '新疆维吾尔自治区', '654126', '昭苏县', 'Zhaosu(Mongolkure) Xian', 'ZSX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3444, '新疆维吾尔自治区', '654127', '特克斯县', 'Tekes Xian', 'TEK');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3445, '新疆维吾尔自治区', '654128', '尼勒克县', 'Nilka Xian', 'NIL');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3446, '新疆维吾尔自治区', '654200', '塔城地区', 'Tacheng(Qoqek) Diqu', 'TCD');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3447, '新疆维吾尔自治区', '654201', '塔城市', 'Tacheng(Qoqek) Shi', 'TCS');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3448, '新疆维吾尔自治区', '654202', '乌苏市', 'Usu Shi', 'USU');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3449, '新疆维吾尔自治区', '654221', '额敏县', 'Emin(Dorbiljin) Xian', 'EMN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3450, '新疆维吾尔自治区', '654223', '沙湾县', 'Shawan Xian', 'SWX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3451, '新疆维吾尔自治区', '654224', '托里县', 'Toli Xian', 'TLI');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3452, '新疆维吾尔自治区', '654225', '裕民县', 'Yumin(Qagantokay) Xian', 'YMN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3453, '新疆维吾尔自治区', '654226', '和布克塞尔蒙古自治县', 'Hoboksar Mongol Zizhixian', 'HOB');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3454, '新疆维吾尔自治区', '654300', '阿勒泰地区', 'Altay Diqu', 'ALD');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3455, '新疆维吾尔自治区', '654301', '阿勒泰市', 'Altay Shi', 'ALT');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3456, '新疆维吾尔自治区', '654321', '布尔津县', 'Burqin Xian', 'BUX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3457, '新疆维吾尔自治区', '654322', '富蕴县', 'Fuyun(Koktokay) Xian', 'FYN');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3458, '新疆维吾尔自治区', '654323', '福海县', 'Fuhai(Burultokay) Xian', 'FHI');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3459, '新疆维吾尔自治区', '654324', '哈巴河县', 'Habahe(Kaba) Xian', 'HBH');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3460, '新疆维吾尔自治区', '654325', '青河县', 'Qinghe(Qinggil) Xian', 'QHX');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3461, '新疆维吾尔自治区', '654326', '吉木乃县', 'Jeminay Xian', 'JEM');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3462, '新疆维吾尔自治区', '659000', '直辖行政单位', 'Zhixia Xingzhengdanwei', null);
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3463, '新疆维吾尔自治区', '659001', '石河子市', 'Shihezi Shi', 'SHZ');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3464, '台湾省', '710000', '台湾省', 'Taiwan Sheng', 'TW');
insert into ALL_AREA (ID, PROVINCE_NAME, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3465, '香港特别行政区', '810000', '香港特别行政区', 'Hongkong Tebiexingzhengqu', 'HK');
commit;
insert into PROVINCE (ID, CODE, NAME, PINYIN, SIMPLE_CODE)
values (1, '110000', '北京市', 'Beijing Shi', 'BJ');
insert into PROVINCE (ID, CODE, NAME, PINYIN, SIMPLE_CODE)
values (2, '120000', '天津市', 'Tianjin Shi', 'TJ');
insert into PROVINCE (ID, CODE, NAME, PINYIN, SIMPLE_CODE)
values (3, '130000', '河北省', 'Hebei Sheng', 'HE');
insert into PROVINCE (ID, CODE, NAME, PINYIN, SIMPLE_CODE)
values (8, '230000', '黑龙江省', 'Heilongjiang Sheng', 'HL');
insert into PROVINCE (ID, CODE, NAME, PINYIN, SIMPLE_CODE)
values (4, '140000', '山西省', 'Shanxi Sheng ', 'SX');
insert into PROVINCE (ID, CODE, NAME, PINYIN, SIMPLE_CODE)
values (5, '150000', '内蒙古自治区', 'Nei Mongol Zizhiqu', 'NM');
insert into PROVINCE (ID, CODE, NAME, PINYIN, SIMPLE_CODE)
values (6, '210000', '辽宁省', 'Liaoning Sheng', 'LN');
insert into PROVINCE (ID, CODE, NAME, PINYIN, SIMPLE_CODE)
values (7, '220000', '吉林省', 'Jilin Sheng', 'JL');
insert into PROVINCE (ID, CODE, NAME, PINYIN, SIMPLE_CODE)
values (18, '430000', '湖南省', 'Hunan Sheng', 'HN');
insert into PROVINCE (ID, CODE, NAME, PINYIN, SIMPLE_CODE)
values (9, '310000', '上海市', 'Shanghai Shi', 'SH');
insert into PROVINCE (ID, CODE, NAME, PINYIN, SIMPLE_CODE)
values (10, '320000', '江苏省', 'Jiangsu Sheng', 'JS');
insert into PROVINCE (ID, CODE, NAME, PINYIN, SIMPLE_CODE)
values (11, '330000', '浙江省', 'Zhejiang Sheng', 'ZJ');
insert into PROVINCE (ID, CODE, NAME, PINYIN, SIMPLE_CODE)
values (12, '340000', '安徽省', 'Anhui Sheng', 'AH');
insert into PROVINCE (ID, CODE, NAME, PINYIN, SIMPLE_CODE)
values (13, '350000', '福建省', 'Fujian Sheng ', 'FJ');
insert into PROVINCE (ID, CODE, NAME, PINYIN, SIMPLE_CODE)
values (14, '360000', '江西省', 'Jiangxi Sheng', 'JX');
insert into PROVINCE (ID, CODE, NAME, PINYIN, SIMPLE_CODE)
values (15, '370000', '山东省', 'Shandong Sheng ', 'SD');
insert into PROVINCE (ID, CODE, NAME, PINYIN, SIMPLE_CODE)
values (16, '410000', '河南省', 'Henan Sheng', 'HA');
insert into PROVINCE (ID, CODE, NAME, PINYIN, SIMPLE_CODE)
values (17, '420000', '湖北省', 'Hubei Sheng', 'HB');
insert into PROVINCE (ID, CODE, NAME, PINYIN, SIMPLE_CODE)
values (24, '520000', '贵州省', 'Guizhou Sheng', 'GZ');
insert into PROVINCE (ID, CODE, NAME, PINYIN, SIMPLE_CODE)
values (25, '530000', '云南省', 'Yunnan Sheng', 'YN');
insert into PROVINCE (ID, CODE, NAME, PINYIN, SIMPLE_CODE)
values (26, '540000', '西藏自治区', 'Xizang Zizhiqu', 'XZ');
insert into PROVINCE (ID, CODE, NAME, PINYIN, SIMPLE_CODE)
values (27, '610000', '陕西省', 'Shanxi Sheng ', 'SN');
insert into PROVINCE (ID, CODE, NAME, PINYIN, SIMPLE_CODE)
values (19, '440000', '广东省', 'Guangdong Sheng', 'GD');
insert into PROVINCE (ID, CODE, NAME, PINYIN, SIMPLE_CODE)
values (20, '450000', '广西壮族自治区', 'Guangxi Zhuangzu Zizhiqu', 'GX');
insert into PROVINCE (ID, CODE, NAME, PINYIN, SIMPLE_CODE)
values (21, '460000', '海南省', 'Hainan Sheng', 'HI');
insert into PROVINCE (ID, CODE, NAME, PINYIN, SIMPLE_CODE)
values (22, '500000', '重庆市', 'Chongqing Shi', 'CQ');
insert into PROVINCE (ID, CODE, NAME, PINYIN, SIMPLE_CODE)
values (23, '510000', '四川省', 'Sichuan Sheng', 'SC');
insert into PROVINCE (ID, CODE, NAME, PINYIN, SIMPLE_CODE)
values (28, '620000', '甘肃省', 'Gansu Sheng', 'GS');
insert into PROVINCE (ID, CODE, NAME, PINYIN, SIMPLE_CODE)
values (29, '630000', '青海省', 'Qinghai Sheng', 'QH');
insert into PROVINCE (ID, CODE, NAME, PINYIN, SIMPLE_CODE)
values (30, '640000', '宁夏回族自治区', 'Ningxia Huizu Zizhiqu', 'NX');
insert into PROVINCE (ID, CODE, NAME, PINYIN, SIMPLE_CODE)
values (31, '650000', '新疆维吾尔自治区', 'Xinjiang Uygur Zizhiqu', 'XJ');
insert into PROVINCE (ID, CODE, NAME, PINYIN, SIMPLE_CODE)
values (32, '710000', '台湾省', 'Taiwan Sheng', 'TW');
insert into PROVINCE (ID, CODE, NAME, PINYIN, SIMPLE_CODE)
values (33, '810000', '香港特别行政区', 'Hongkong Tebiexingzhengqu', 'HK');
insert into PROVINCE (ID, CODE, NAME, PINYIN, SIMPLE_CODE)
values (34, '820000', '澳门特别行政区', 'MaCao Tebiexingzhengqu', 'MC');
commit;
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (1, '110100', '市辖区', '110000', 'Shixiaqu', null);
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (2, '110200', '县', '110000', 'Xian', null);
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (3, '120100', '市辖区', '120000', 'Shixiaqu', null);
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (4, '120200', '县', '120000', 'Xian', null);
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (5, '130100', '石家庄市', '130000', 'Shijiazhuang Shi', 'SJW');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (6, '130200', '唐山市', '130000', 'Tangshan Shi', 'TGS');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (7, '130300', '秦皇岛市', '130000', 'Qinhuangdao Shi', 'SHP');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (8, '130400', '邯郸市', '130000', 'Handan Shi', 'HDS');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (9, '130500', '邢台市', '130000', 'Xingtai Shi', 'XTS');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (10, '130600', '保定市', '130000', 'Baoding Shi', 'BDS');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (11, '130700', '张家口市', '130000', 'Zhangjiakou Shi ', 'ZJK');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (12, '130800', '承德市', '130000', 'Chengde Shi', 'CDS');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (55, '220300', '四平市', '220000', 'Siping Shi', 'SPS');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (56, '220400', '辽源市', '220000', 'Liaoyuan Shi', 'LYH');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (57, '220500', '通化市', '220000', 'Tonghua Shi', 'THS');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (58, '220600', '白山市', '220000', 'Baishan Shi', 'BSN');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (59, '220700', '松原市', '220000', 'Songyuan Shi', 'SYU');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (60, '220800', '白城市', '220000', 'Baicheng Shi', 'BCS');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (61, '222400', '延边朝鲜族自治州', '220000', 'Yanbian Chosenzu Zizhizhou', 'YBZ');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (62, '230100', '哈尔滨市', '230000', 'Harbin Shi', 'HRB');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (63, '230200', '齐齐哈尔市', '230000', 'Qiqihar Shi', 'NDG');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (64, '230300', '鸡西市', '230000', 'Jixi Shi', 'JXI');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (65, '230400', '鹤岗市', '230000', 'Hegang Shi', 'HEG');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (66, '230500', '双鸭山市', '230000', 'Shuangyashan Shi', 'SYS');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (13, '130900', '沧州市', '130000', 'Cangzhou Shi', 'CGZ');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (14, '131000', '廊坊市', '130000', 'Langfang Shi', 'LFS');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (15, '131100', '衡水市', '130000', 'Hengshui Shi ', 'HGS');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (16, '140100', '太原市', '140000', 'Taiyuan Shi', 'TYN');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (17, '140200', '大同市', '140000', 'Datong Shi ', 'DTG');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (18, '140300', '阳泉市', '140000', 'Yangquan Shi', 'YQS');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (19, '140400', '长治市', '140000', 'Changzhi Shi', 'CZS');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (20, '140500', '晋城市', '140000', 'Jincheng Shi ', 'JCG');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (21, '140600', '朔州市', '140000', 'Shuozhou Shi ', 'SZJ');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (27, '150100', '呼和浩特市', '150000', 'Hohhot Shi', 'Hhht');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (28, '150200', '包头市', '150000', 'Baotou Shi ', 'BTS');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (29, '150300', '乌海市', '150000', 'Wuhai Shi', 'WHM');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (30, '150400', '赤峰市', '150000', 'Chifeng (Ulanhad)Shi', 'CFS');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (36, '152200', '兴安盟', '150000', 'Hinggan Meng', 'HIN');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (37, '152500', '锡林郭勒盟', '150000', 'Xilin Gol Meng', 'XGO');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (38, '152900', '阿拉善盟', '150000', 'Alxa Meng', 'ALM');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (39, '210100', '沈阳市', '210000', 'Shenyang Shi', 'SHE');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (40, '210200', '大连市', '210000', 'Dalian Shi', 'DLC');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (41, '210300', '鞍山市', '210000', 'AnShan Shi', 'ASN');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (42, '210400', '抚顺市', '210000', 'Fushun Shi', 'FSN');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (43, '210500', '本溪市', '210000', 'Benxi Shi', 'BXS');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (44, '210600', '丹东市', '210000', 'Dandong Shi', 'DDG');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (45, '210700', '锦州市', '210000', 'Jinzhou Shi', 'JNZ');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (46, '210800', '营口市', '210000', 'Yingkou Shi', 'YIK');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (47, '210900', '阜新市', '210000', 'Fuxin Shi', 'FXS');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (48, '211000', '辽阳市', '210000', 'Liaoyang Shi', 'LYL');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (49, '211100', '盘锦市', '210000', 'Panjin Shi', 'PJS');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (50, '211200', '铁岭市', '210000', 'Tieling Shi', 'TLS');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (51, '211300', '朝阳市', '210000', 'Chaoyang Shi', 'CYS');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (52, '211400', '葫芦岛市', '210000', 'Huludao Shi', 'HLD');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (53, '220100', '长春市', '220000', 'Changchun Shi ', 'CGQ');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (54, '220200', '吉林市', '220000', 'Jilin Shi ', 'JLS');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (176, '420600', '襄樊市', '420000', 'Xiangfan Shi', 'XFN');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (177, '420700', '鄂州市', '420000', 'Ezhou Shi', 'EZS');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (178, '420800', '荆门市', '420000', 'Jingmen Shi', 'JMS');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (179, '420900', '孝感市', '420000', 'Xiaogan Shi', 'XGE');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (180, '421000', '荆州市', '420000', 'Jingzhou Shi', 'JGZ');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (181, '421100', '黄冈市', '420000', 'Huanggang Shi', 'HE');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (182, '421200', '咸宁市', '420000', 'Xianning Xian', 'XNS');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (184, '422800', '恩施土家族苗族自治州', '420000', 'Enshi Tujiazu Miaozu Zizhizhou', 'ESH');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (185, '429000', '省直辖行政单位', '420000', 'Sheng Zhixia Xianji Xingzhengdanwei', null);
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (186, '430100', '长沙市', '430000', 'Changsha Shi', 'CSX');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (187, '430200', '株洲市', '430000', 'Zhuzhou Shi', 'ZZS');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (188, '430300', '湘潭市', '430000', 'Xiangtan Shi', 'XGT');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (189, '430400', '衡阳市', '430000', 'Hengyang Shi', 'HNY');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (190, '430500', '邵阳市', '430000', 'Shaoyang Shi', 'SYR');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (191, '430600', '岳阳市', '430000', 'Yueyang Shi', 'YYG');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (67, '230600', '大庆市', '230000', 'Daqing Shi', 'DQG');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (68, '230700', '伊春市', '230000', 'Yichun Shi', 'YCH');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (69, '230800', '佳木斯市', '230000', 'Jiamusi Shi', 'JMU');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (70, '230900', '七台河市', '230000', 'Qitaihe Shi', 'QTH');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (71, '231000', '牡丹江市', '230000', 'Mudanjiang Shi', 'MDG');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (72, '231100', '黑河市', '230000', 'Heihe Shi', 'HEK');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (74, '232700', '大兴安岭地区', '230000', 'Da Hinggan Ling Diqu', 'DHL');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (75, '310100', '市辖区', '310000', 'Shixiaqu', null);
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (76, '310200', '县', '310000', 'Xian', null);
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (77, '320100', '南京市', '320000', 'Nanjing Shi', 'NKG');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (78, '320200', '无锡市', '320000', 'Wuxi Shi', 'WUX');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (79, '320300', '徐州市', '320000', 'Xuzhou Shi', 'XUZ');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (80, '320400', '常州市', '320000', 'Changzhou Shi', 'CZX');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (81, '320500', '苏州市', '320000', 'Suzhou Shi', 'SZH');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (82, '320600', '南通市', '320000', 'Nantong Shi', 'NTG');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (83, '320700', '连云港市', '320000', 'Lianyungang Shi', 'LYG');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (84, '320800', '淮安市', '320000', 'Huaiyin Shi', 'HYS');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (85, '320900', '盐城市', '320000', 'Yancheng Shi', 'YCK');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (86, '321000', '扬州市', '320000', 'Yangzhou Shi', 'YZH');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (87, '321100', '镇江市', '320000', 'Zhenjiang Shi', 'ZHE');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (88, '321200', '泰州市', '320000', 'Taizhou Shi', 'TZS');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (89, '321300', '宿迁市', '320000', 'Suqian Shi', 'SUQ');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (90, '330100', '杭州市', '330000', 'Hangzhou Shi', 'HGH');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (91, '330200', '宁波市', '330000', 'Ningbo Shi', 'NGB');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (92, '330300', '温州市', '330000', 'Wenzhou Shi', 'WNZ');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (93, '330400', '嘉兴市', '330000', 'Jiaxing Shi', 'JIX');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (94, '330500', '湖州市', '330000', 'Huzhou Shi ', 'HZH');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (95, '330600', '绍兴市', '330000', 'Shaoxing Shi', 'SXG');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (96, '330700', '金华市', '330000', 'Jinhua Shi', 'JHA');
commit;
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (97, '330800', '衢州市', '330000', 'Quzhou Shi', 'QUZ');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (98, '330900', '舟山市', '330000', 'Zhoushan Shi', 'ZOS');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (99, '331000', '台州市', '330000', 'Taizhou Shi', 'TZZ');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (101, '340100', '合肥市', '340000', 'Hefei Shi', 'HFE');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (102, '340200', '芜湖市', '340000', 'Wuhu Shi', 'WHI');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (103, '340300', '蚌埠市', '340000', 'Bengbu Shi', 'BBU');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (104, '340400', '淮南市', '340000', 'Huainan Shi', 'HNS');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (105, '340500', '马鞍山市', '340000', 'Ma,anshan Shi', 'MAA');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (106, '340600', '淮北市', '340000', 'Huaibei Shi', 'HBE');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (107, '340700', '铜陵市', '340000', 'Tongling Shi', 'TOL');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (108, '340800', '安庆市', '340000', 'Anqing Shi', 'AQG');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (109, '341000', '黄山市', '340000', 'Huangshan Shi', 'HSN');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (110, '341100', '滁州市', '340000', 'Chuzhou Shi', 'CUZ');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (111, '341200', '阜阳市', '340000', 'Fuyang Shi', 'FYS');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (112, '341300', '宿州市', '340000', 'Suzhou Shi', 'SUZ');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (118, '350100', '福州市', '350000', 'Fuzhou Shi', 'FOC');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (119, '350200', '厦门市', '350000', 'Xiamen Shi', 'XMN');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (120, '350300', '莆田市', '350000', 'Putian Shi', 'PUT');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (121, '350400', '三明市', '350000', 'Sanming Shi', 'SMS');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (122, '350500', '泉州市', '350000', 'Quanzhou Shi', 'QZJ');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (123, '350600', '漳州市', '350000', 'Zhangzhou Shi', 'ZZU');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (124, '350700', '南平市', '350000', 'Nanping Shi', 'NPS');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (125, '350800', '龙岩市', '350000', 'Longyan Shi', 'LYF');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (127, '360100', '南昌市', '360000', 'Nanchang Shi', 'KHN');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (128, '360200', '景德镇市', '360000', 'Jingdezhen Shi', 'JDZ');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (129, '360300', '萍乡市', '360000', 'Pingxiang Shi', 'PXS');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (130, '360400', '九江市', '360000', 'Jiujiang Shi', 'JIU');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (131, '360500', '新余市', '360000', 'Xinyu Shi', 'XYU');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (133, '360700', '赣州市', '360000', 'Ganzhou Shi', 'GZH');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (138, '370100', '济南市', '370000', 'Jinan Shi', 'TNA');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (139, '370200', '青岛市', '370000', 'Qingdao Shi', 'TAO');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (140, '370300', '淄博市', '370000', 'Zibo Shi', 'ZBO');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (141, '370400', '枣庄市', '370000', 'Zaozhuang Shi', 'ZZG');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (142, '370500', '东营市', '370000', 'Dongying Shi', 'DYG');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (143, '370600', '烟台市', '370000', 'Yantai Shi', 'YNT');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (144, '370700', '潍坊市', '370000', 'Weifang Shi', 'WEF');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (145, '370800', '济宁市', '370000', 'Jining Shi', 'JNG');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (146, '370900', '泰安市', '370000', 'Tai,an Shi', 'TAI');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (147, '371000', '威海市', '370000', 'Weihai Shi', 'WEH');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (148, '371100', '日照市', '370000', 'Rizhao Shi', 'RZH');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (149, '371200', '莱芜市', '370000', 'Laiwu Shi', 'LWS');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (150, '371300', '临沂市', '370000', 'Linyi Shi', 'LYI');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (151, '371400', '德州市', '370000', 'Dezhou Shi', 'DZS');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (152, '371500', '聊城市', '370000', 'Liaocheng Shi', 'LCH');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (155, '410100', '郑州市', '410000', 'Zhengzhou Shi', 'CGO');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (156, '410200', '开封市', '410000', 'Kaifeng Shi', 'KFS');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (157, '410300', '洛阳市', '410000', 'Luoyang Shi', 'LYA');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (158, '410400', '平顶山市', '410000', 'Pingdingshan Shi', 'PDS');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (159, '410500', '安阳市', '410000', 'Anyang Shi', 'AYS');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (160, '410600', '鹤壁市', '410000', 'Hebi Shi', 'HBS');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (161, '410700', '新乡市', '410000', 'Xinxiang Shi', 'XXS');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (162, '410800', '焦作市', '410000', 'Jiaozuo Shi', 'JZY');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (163, '410900', '濮阳市', '410000', 'Puyang Shi', 'PYS');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (164, '411000', '许昌市', '410000', 'Xuchang Shi', 'XCS');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (165, '411100', '漯河市', '410000', 'Luohe Shi', 'LHS');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (166, '411200', '三门峡市', '410000', 'Sanmenxia Shi', 'SMX');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (167, '411300', '南阳市', '410000', 'Nanyang Shi', 'NYS');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (168, '411400', '商丘市', '410000', 'Shangqiu Shi', 'SQS');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (169, '411500', '信阳市', '410000', 'Xinyang Shi', 'XYG');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (172, '420100', '武汉市', '420000', 'Wuhan Shi', 'WUH');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (173, '420200', '黄石市', '420000', 'Huangshi Shi', 'HIS');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (174, '420300', '十堰市', '420000', 'Shiyan Shi', 'SYE');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (175, '420500', '宜昌市', '420000', 'Yichang Shi', 'YCO');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (259, '513200', '阿坝藏族羌族自治州', '510000', 'Aba(Ngawa) Zangzu Qiangzu Zizhizhou', 'ABA');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (260, '513300', '甘孜藏族自治州', '510000', 'Garze Zangzu Zizhizhou', 'GAZ');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (261, '513400', '凉山彝族自治州', '510000', 'Liangshan Yizu Zizhizhou', 'LSY');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (262, '520100', '贵阳市', '520000', 'Guiyang Shi', 'KWE');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (263, '520200', '六盘水市', '520000', 'Liupanshui Shi', 'LPS');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (264, '520300', '遵义市', '520000', 'Zunyi Shi', 'ZNY');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (266, '522200', '铜仁地区', '520000', 'Tongren Diqu', 'TRD');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (267, '522300', '黔西南布依族苗族自治州', '520000', 'Qianxinan Buyeizu Zizhizhou', 'QXZ');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (268, '522400', '毕节地区', '520000', 'Bijie Diqu', 'BJD');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (269, '522600', '黔东南苗族侗族自治州', '520000', 'Qiandongnan Miaozu Dongzu Zizhizhou', 'QND');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (270, '522700', '黔南布依族苗族自治州', '520000', 'Qiannan Buyeizu Miaozu Zizhizhou', 'QNZ');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (271, '530100', '昆明市', '530000', 'Kunming Shi', 'KMG');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (272, '530300', '曲靖市', '530000', 'Qujing Shi', 'QJS');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (273, '530400', '玉溪市', '530000', 'Yuxi Shi', 'YXS');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (279, '532300', '楚雄彝族自治州', '530000', 'Chuxiong Yizu Zizhizhou', 'CXD');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (280, '532500', '红河哈尼族彝族自治州', '530000', 'Honghe Hanizu Yizu Zizhizhou', 'HHZ');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (281, '532600', '文山壮族苗族自治州', '530000', 'Wenshan Zhuangzu Miaozu Zizhizhou', 'WSZ');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (282, '532800', '西双版纳傣族自治州', '530000', 'Xishuangbanna Daizu Zizhizhou', 'XSB');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (283, '532900', '大理白族自治州', '530000', 'Dali Baizu Zizhizhou', 'DLZ');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (284, '533100', '德宏傣族景颇族自治州', '530000', 'Dehong Daizu Jingpozu Zizhizhou', 'DHG');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (285, '533300', '怒江傈僳族自治州', '530000', 'Nujiang Lisuzu Zizhizhou', 'NUJ');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (286, '533400', '迪庆藏族自治州', '530000', 'Deqen Zangzu Zizhizhou', 'DEZ');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (287, '540100', '拉萨市', '540000', 'Lhasa Shi', 'LXA');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (288, '542100', '昌都地区', '540000', 'Qamdo Diqu', 'QAD');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (289, '542200', '山南地区', '540000', 'Shannan Diqu', 'SND');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (290, '542300', '日喀则地区', '540000', 'Xigaze Diqu', 'XID');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (291, '542400', '那曲地区', '540000', 'Nagqu Diqu', 'NAD');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (292, '542500', '阿里地区', '540000', 'Ngari Diqu', 'NGD');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (293, '542600', '林芝地区', '540000', 'Nyingchi Diqu', 'NYD');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (294, '610100', '西安市', '610000', 'Xi,an Shi', 'SIA');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (295, '610200', '铜川市', '610000', 'Tongchuan Shi', 'TCN');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (192, '430700', '常德市', '430000', 'Changde Shi', 'CDE');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (193, '430800', '张家界市', '430000', 'Zhangjiajie Shi', 'ZJJ');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (194, '430900', '益阳市', '430000', 'Yiyang Shi', 'YYS');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (195, '431000', '郴州市', '430000', 'Chenzhou Shi', 'CNZ');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (196, '431100', '永州市', '430000', 'Yongzhou Shi', 'YZS');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (197, '431200', '怀化市', '430000', 'Huaihua Shi', 'HHS');
commit;
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (199, '433100', '湘西土家族苗族自治州', '430000', 'Xiangxi Tujiazu Miaozu Zizhizhou ', 'XXZ');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (200, '440100', '广州市', '440000', 'Guangzhou Shi', 'CAN');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (201, '440200', '韶关市', '440000', 'Shaoguan Shi', 'HSC');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (202, '440300', '深圳市', '440000', 'Shenzhen Shi', 'SZX');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (203, '440400', '珠海市', '440000', 'Zhuhai Shi', 'ZUH');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (204, '440500', '汕头市', '440000', 'Shantou Shi', 'SWA');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (205, '440600', '佛山市', '440000', 'Foshan Shi', 'FOS');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (206, '440700', '江门市', '440000', 'Jiangmen Shi', 'JMN');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (207, '440800', '湛江市', '440000', 'Zhanjiang Shi', 'ZHA');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (208, '440900', '茂名市', '440000', 'Maoming Shi', 'MMI');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (209, '441200', '肇庆市', '440000', 'Zhaoqing Shi', 'ZQG');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (210, '441300', '惠州市', '440000', 'Huizhou Shi', 'HUI');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (211, '441400', '梅州市', '440000', 'Meizhou Shi', 'MXZ');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (212, '441500', '汕尾市', '440000', 'Shanwei Shi', 'SWE');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (213, '441600', '河源市', '440000', 'Heyuan Shi', 'HEY');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (214, '441700', '阳江市', '440000', 'Yangjiang Shi', 'YJI');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (215, '441800', '清远市', '440000', 'Qingyuan Shi', 'QYN');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (216, '441900', '东莞市', '440000', 'Dongguan Shi', 'DGG');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (217, '442000', '中山市', '440000', 'Zhongshan Shi', 'ZSN');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (218, '445100', '潮州市', '440000', 'Chaozhou Shi', 'CZY');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (219, '445200', '揭阳市', '440000', 'Jieyang Shi', 'JIY');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (220, '445300', '云浮市', '440000', 'Yunfu Shi', 'YFS');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (221, '450100', '南宁市', '450000', 'Nanning Shi', 'NNG');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (222, '450200', '柳州市', '450000', 'Liuzhou Shi', 'LZH');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (223, '450300', '桂林市', '450000', 'Guilin Shi', 'KWL');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (224, '450400', '梧州市', '450000', 'Wuzhou Shi', 'WUZ');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (225, '450500', '北海市', '450000', 'Beihai Shi', 'BHY');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (226, '450600', '防城港市', '450000', 'Fangchenggang Shi', 'FAN');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (227, '450700', '钦州市', '450000', 'Qinzhou Shi', 'QZH');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (228, '450800', '贵港市', '450000', 'Guigang Shi', 'GUG');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (229, '450900', '玉林市', '450000', 'Yulin Shi', 'YUL');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (235, '460100', '海口市', '460000', 'Haikou Shi', 'HAK');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (236, '460200', '三亚市', '460000', 'Sanya Shi', 'SYX');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (238, '500100', '市辖区', '500000', 'Shixiaqu', null);
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (239, '500200', '县', '500000', 'Xian', null);
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (240, '500300', '市', '500000', 'Shi', null);
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (241, '510100', '成都市', '510000', 'Chengdu Shi', 'CTU');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (242, '510300', '自贡市', '510000', 'Zigong Shi', 'ZGS');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (243, '510400', '攀枝花市', '510000', 'Panzhihua Shi', 'PZH');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (244, '510500', '泸州市', '510000', 'Luzhou Shi', 'LUZ');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (245, '510600', '德阳市', '510000', 'Deyang Shi', 'DEY');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (246, '510700', '绵阳市', '510000', 'Mianyang Shi', 'MYG');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (247, '510800', '广元市', '510000', 'Guangyuan Shi', 'GYC');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (248, '510900', '遂宁市', '510000', 'Suining Shi', 'SNS');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (249, '511000', '内江市', '510000', 'Neijiang Shi', 'NJS');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (250, '511100', '乐山市', '510000', 'Leshan Shi', 'LES');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (251, '511300', '南充市', '510000', 'Nanchong Shi', 'NCO');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (253, '511500', '宜宾市', '510000', 'Yibin Shi', 'YBS');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (254, '511600', '广安市', '510000', 'Guang,an Shi', 'GAC');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (296, '610300', '宝鸡市', '610000', 'Baoji Shi', 'BJI');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (297, '610400', '咸阳市', '610000', 'Xianyang Shi', 'XYS');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (298, '610500', '渭南市', '610000', 'Weinan Shi', 'WNA');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (299, '610600', '延安市', '610000', 'Yan,an Shi', 'YNA');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (300, '610700', '汉中市', '610000', 'Hanzhong Shi', 'HZJ');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (304, '620100', '兰州市', '620000', 'Lanzhou Shi', 'LHW');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (305, '620200', '嘉峪关市', '620000', 'Jiayuguan Shi', 'JYG');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (306, '620300', '金昌市', '620000', 'Jinchang Shi', 'JCS');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (307, '620400', '白银市', '620000', 'Baiyin Shi', 'BYS');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (308, '620500', '天水市', '620000', 'Tianshui Shi', 'TSU');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (316, '622900', '临夏回族自治州', '620000', 'Linxia Huizu Zizhizhou ', 'LXH');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (317, '623000', '甘南藏族自治州', '620000', 'Gannan Zangzu Zizhizhou', 'GNZ');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (318, '630100', '西宁市', '630000', 'Xining Shi', 'XNN');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (319, '632100', '海东地区', '630000', 'Haidong Diqu', 'HDD');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (320, '632200', '海北藏族自治州', '630000', 'Haibei Zangzu Zizhizhou', 'HBZ');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (321, '632300', '黄南藏族自治州', '630000', 'Huangnan Zangzu Zizhizhou', 'HNZ');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (322, '632500', '海南藏族自治州', '630000', 'Hainan Zangzu Zizhizhou', 'HNN');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (323, '632600', '果洛藏族自治州', '630000', 'Golog Zangzu Zizhizhou', 'GOL');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (324, '632700', '玉树藏族自治州', '630000', 'Yushu Zangzu Zizhizhou', 'YSZ');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (325, '632800', '海西蒙古族藏族自治州', '630000', 'Haixi Mongolzu Zangzu Zizhizhou', 'HXZ');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (326, '640100', '银川市', '640000', 'Yinchuan Shi', 'INC');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (327, '640200', '石嘴山市', '640000', 'Shizuishan Shi', 'SZS');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (328, '640300', '吴忠市', '640000', 'Wuzhong Shi', 'WZS');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (331, '650100', '乌鲁木齐市', '650000', 'Urumqi Shi', 'URC');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (332, '650200', '克拉玛依市', '650000', 'Karamay Shi', 'KAR');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (333, '652100', '吐鲁番地区', '650000', 'Turpan Diqu', 'TUD');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (334, '652200', '哈密地区', '650000', 'Hami(kumul) Diqu', 'HMD');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (335, '652300', '昌吉回族自治州', '650000', 'Changji Huizu Zizhizhou', 'CJZ');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (336, '652700', '博尔塔拉蒙古自治州', '650000', 'Bortala Monglo Zizhizhou', 'BOR');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (337, '652800', '巴音郭楞蒙古自治州', '650000', 'Bayingolin Mongol Zizhizhou', 'BAG');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (338, '652900', '阿克苏地区', '650000', 'Aksu Diqu', 'AKD');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (339, '653000', '克孜勒苏柯尔克孜自治州', '650000', 'Kizilsu Kirgiz Zizhizhou', 'KIZ');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (340, '653100', '喀什地区', '650000', 'Kashi(Kaxgar) Diqu', 'KSI');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (341, '653200', '和田地区', '650000', 'Hotan Diqu', 'HOD');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (342, '654000', '伊犁哈萨克自治州', '650000', 'Ili Kazak Zizhizhou', 'ILD');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (343, '654200', '塔城地区', '650000', 'Tacheng(Qoqek) Diqu', 'TCD');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (344, '654300', '阿勒泰地区', '650000', 'Altay Diqu', 'ALD');
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (345, '659000', '省直辖行政单位', '650000', 'Zhixia Xingzhengdanwei', null);
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (233, '451300', '来宾市', '450000', null, null);
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (312, '620900', '酒泉市', '620000', null, null);
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (34, '150800', '巴彦淖尔市', '150000', null, null);
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (114, '341500', '六安市', '340000', null, null);
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (113, '341400', '巢湖市', '340000', null, null);
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (265, '520400', '安顺市', '520000', null, null);
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (134, '360800', '吉安市', '360000', null, null);
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (170, '411600', '周口市', '410000', null, null);
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (301, '610800', '榆林市', '610000', null, null);
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (115, '341600', '亳州市', '340000', null, null);
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (310, '620700', '张掖市', '620000', null, null);
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (276, '530700', '丽江市', '530000', null, null);
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (257, '511900', '巴中市', '510000', null, null);
commit;
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (23, '140800', '运城市', '140000', null, null);
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (256, '511800', '雅安市', '510000', null, null);
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (234, '451400', '崇左市', '450000', null, null);
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (183, '421300', '随州市', '420000', null, null);
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (277, '530800', '思茅市', '530000', null, null);
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (330, '640500', '中卫市', '640000', null, null);
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (329, '640400', '固原市', '640000', null, null);
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (132, '360600', '鹰潭市', '360000', null, null);
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (32, '150600', '鄂尔多斯市', '150000', null, null);
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (232, '451200', '河池市', '450000', null, null);
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (35, '150900', '乌兰察布市', '150000', null, null);
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (73, '231200', '绥化市', '230000', null, null);
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (126, '350900', '宁德市', '350000', null, null);
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (275, '530600', '昭通市', '530000', null, null);
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (230, '451000', '百色市', '450000', null, null);
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (136, '361000', '抚州市', '360000', null, null);
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (315, '621200', '陇南市', '620000', null, null);
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (303, '611000', '商洛市', '610000', null, null);
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (309, '620600', '武威市', '620000', null, null);
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (153, '371600', '滨州市', '370000', null, null);
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (135, '360900', '宜春市', '360000', null, null);
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (25, '141000', '临汾市', '140000', null, null);
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (117, '341800', '宣城市', '340000', null, null);
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (274, '530500', '保山市', '530000', null, null);
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (302, '610900', '安康市', '610000', null, null);
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (255, '511700', '达州市', '510000', null, null);
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (100, '331100', '丽水市', '330000', null, null);
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (26, '141100', '吕梁市', '140000', null, null);
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (137, '361100', '上饶市', '360000', null, null);
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (24, '140900', '忻州市', '140000', null, null);
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (33, '150700', '呼伦贝尔市', '150000', null, null);
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (198, '431300', '娄底市', '430000', null, null);
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (154, '371700', '荷泽市', '370000', null, null);
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (171, '411700', '驻马店市', '410000', null, null);
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (31, '150500', '通辽市', '150000', null, null);
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (22, '140700', '晋中市', '140000', null, null);
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (258, '512000', '资阳市', '510000', null, null);
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (314, '621100', '定西市', '620000', null, null);
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (313, '621000', '庆阳市', '620000', null, null);
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (116, '341700', '池州市', '340000', null, null);
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (252, '511400', '眉山市', '510000', null, null);
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (311, '620800', '平凉市', '620000', null, null);
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (278, '530900', '临沧市', '530000', null, null);
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (237, '469000', '省直辖县级行政单位', '460000', null, null);
insert into CITY (ID, CODE, NAME, PROVINCE_CODE, PINYIN, SIMPLE_CODE)
values (231, '451100', '贺州市', '450000', null, null);
commit;
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1, '110101', '东城区', '110100', 'Dongcheng Qu', 'DCQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2, '110102', '西城区', '110100', 'Xicheng Qu', 'XCQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (3, '110103', '崇文区', '110100', 'Chongwen Qu', 'CWQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (4, '110104', '宣武区', '110100', 'Xuanwu Qu', 'XWQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (5, '110105', '朝阳区', '110100', 'Chaoyang Qu', 'CYQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (6, '110106', '丰台区', '110100', 'Fengtai Qu', 'FTQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (7, '110107', '石景山区', '110100', 'Shijingshan Qu', 'SJS');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (8, '110108', '海淀区', '110100', 'Haidian Qu', 'HDN');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (9, '110109', '门头沟区', '110100', 'Mentougou Qu', 'MTG');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (10, '110111', '房山区', '110100', 'Fangshan Qu', 'FSQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (11, '110112', '通州区', '110100', 'Tongzhou Qu', 'TZQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (12, '110113', '顺义区', '110100', 'Shunyi Qu', 'SYI');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (13, '110114', '昌平区', '110100', 'Changping Qu', 'CP Q');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (14, '110115', '大兴区', '110100', 'Daxing Qu', 'DX Q');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (16, '110117', '平谷区', '110100', 'Pinggu Qu', 'PG Q');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (15, '110116', '怀柔区', '110100', 'Huairou Qu', 'HR Q');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (17, '110228', '密云县', '110200', 'Miyun Xian ', 'MYN');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (18, '110229', '延庆县', '110200', 'Yanqing Xian', 'YQX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (19, '120101', '和平区', '120100', 'Heping Qu', 'HPG');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (20, '120102', '河东区', '120100', 'Hedong Qu', 'HDQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (21, '120103', '河西区', '120100', 'Hexi Qu', 'HXQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (22, '120104', '南开区', '120100', 'Nankai Qu', 'NKQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (23, '120105', '河北区', '120100', 'Hebei Qu', 'HBQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (24, '120106', '红桥区', '120100', 'Hongqiao Qu', 'HQO');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (25, '120107', '塘沽区', '120100', 'Tanggu Qu', 'TGA');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (26, '120108', '汉沽区', '120100', 'Hangu Qu', 'HGQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (27, '120109', '大港区', '120100', 'Dagang Qu', 'DGJ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (28, '120110', '东丽区', '120100', 'Dongli Qu', 'DLI');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (29, '120111', '西青区', '120100', 'Xiqing Qu', 'XQG');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (30, '120112', '津南区', '120100', 'Jinnan Qu', 'JNQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (31, '120113', '北辰区', '120100', 'Beichen Qu', 'BCQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (34, '120221', '宁河县', '120200', 'Ninghe Xian', 'NHE');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (32, '120114', '武清区', '120100', 'Wuqing Qu', 'WQ Q');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (35, '120223', '静海县', '120200', 'Jinghai Xian', 'JHT');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (33, '120115', '宝坻区', '120100', 'Baodi Qu', 'BDI');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (36, '120225', '蓟　县', '120200', 'Ji Xian', 'JIT');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (37, '130101', '市辖区', '130100', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (38, '130102', '长安区', '130100', 'Chang,an Qu', 'CAQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (39, '130103', '桥东区', '130100', 'Qiaodong Qu', 'QDQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (40, '130104', '桥西区', '130100', 'Qiaoxi Qu', 'QXQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (41, '130105', '新华区', '130100', 'Xinhua Qu', 'XHK');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (42, '130107', '井陉矿区', '130100', 'Jingxing Kuangqu', 'JXK');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (44, '130121', '井陉县', '130100', 'Jingxing Xian', 'JXJ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (45, '130123', '正定县', '130100', 'Zhengding Xian', 'ZDJ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (46, '130124', '栾城县', '130100', 'Luancheng Xian', 'LCG');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (47, '130125', '行唐县', '130100', 'Xingtang Xian', 'XTG');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (48, '130126', '灵寿县', '130100', 'Lingshou Xian ', 'LSO');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (49, '130127', '高邑县', '130100', 'Gaoyi Xian', 'GYJ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (50, '130128', '深泽县', '130100', 'Shenze Xian', 'SZE');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (51, '130129', '赞皇县', '130100', 'Zanhuang Xian', 'ZHG');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (52, '130130', '无极县', '130100', 'Wuji Xian', 'WJI');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (53, '130131', '平山县', '130100', 'Pingshan Xian', 'PSH');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (54, '130132', '元氏县', '130100', 'Yuanshi Xian', 'YSI');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (55, '130133', '赵　县', '130100', 'Zhao Xian', 'ZAO');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (56, '130181', '辛集市', '130100', 'Xinji Shi', 'XJS');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (57, '130182', '藁城市', '130100', 'Gaocheng Shi', 'GCS');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (58, '130183', '晋州市', '130100', 'Jinzhou Shi', 'JZJ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (59, '130184', '新乐市', '130100', 'Xinle Shi', 'XLE');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (60, '130185', '鹿泉市', '130100', 'Luquan Shi', 'LUQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (61, '130201', '市辖区', '130200', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (62, '130202', '路南区', '130200', 'Lunan Qu', 'LNB');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (63, '130203', '路北区', '130200', 'Lubei Qu', 'LBQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (64, '130204', '古冶区', '130200', 'Guye Qu', 'GYE');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (65, '130205', '开平区', '130200', 'Kaiping Qu', 'KPQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (68, '130223', '滦　县', '130200', 'Luan Xian', 'LUA');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (69, '130224', '滦南县', '130200', 'Luannan Xian', 'LNJ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (70, '130225', '乐亭县', '130200', 'Leting Xian', 'LTJ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (71, '130227', '迁西县', '130200', 'Qianxi Xian', 'QXX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (72, '130229', '玉田县', '130200', 'Yutian Xian', 'YTJ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (73, '130230', '唐海县', '130200', 'Tanghai Xian ', 'THA');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (74, '130281', '遵化市', '130200', 'Zunhua Shi', 'ZNH');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (75, '130283', '迁安市', '130200', 'Qian,an Shi', 'QAS');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (76, '130301', '市辖区', '130300', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (77, '130302', '海港区', '130300', 'Haigang Qu', 'HGG');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (78, '130303', '山海关区', '130300', 'Shanhaiguan Qu', 'SHG');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (79, '130304', '北戴河区', '130300', 'Beidaihe Qu', 'BDH');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (80, '130321', '青龙满族自治县', '130300', 'Qinglong Manzu Zizhixian', 'QLM');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (81, '130322', '昌黎县', '130300', 'Changli Xian', 'CGL');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (82, '130323', '抚宁县', '130300', 'Funing Xian ', 'FUN');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (83, '130324', '卢龙县', '130300', 'Lulong Xian', 'LLG');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (84, '130401', '市辖区', '130400', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (85, '130402', '邯山区', '130400', 'Hanshan Qu', 'HHD');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (86, '130403', '丛台区', '130400', 'Congtai Qu', 'CTQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (87, '130404', '复兴区', '130400', 'Fuxing Qu', 'FXQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (88, '130406', '峰峰矿区', '130400', 'Fengfeng Kuangqu', 'FFK');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (89, '130421', '邯郸县', '130400', 'Handan Xian ', 'HDX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (90, '130423', '临漳县', '130400', 'Linzhang Xian ', 'LNZ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (91, '130424', '成安县', '130400', 'Cheng,an Xian', 'CAJ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (92, '130425', '大名县', '130400', 'Daming Xian', 'DMX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (93, '130426', '涉　县', '130400', 'She Xian', 'SEJ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (94, '130427', '磁　县', '130400', 'Ci Xian', 'CIX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (95, '130428', '肥乡县', '130400', 'Feixiang Xian', 'FXJ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (96, '130429', '永年县', '130400', 'Yongnian Xian', 'YON');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (97, '130430', '邱　县', '130400', 'Qiu Xian', 'QIU');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (98, '130431', '鸡泽县', '130400', 'Jize Xian', 'JZE');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (99, '130432', '广平县', '130400', 'Guangping Xian ', 'GPX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (100, '130433', '馆陶县', '130400', 'Guantao Xian', 'GTO');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (101, '130434', '魏　县', '130400', 'Wei Xian ', 'WEI');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (102, '130435', '曲周县', '130400', 'Quzhou Xian ', 'QZX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (103, '130481', '武安市', '130400', 'Wu,an Shi', 'WUA');
commit;
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (104, '130501', '市辖区', '130500', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (105, '130502', '桥东区', '130500', 'Qiaodong Qu', 'QDG');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (106, '130503', '桥西区', '130500', 'Qiaoxi Qu', 'QXT');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (107, '130521', '邢台县', '130500', 'Xingtai Xian', 'XTJ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (108, '130522', '临城县', '130500', 'Lincheng Xian ', 'LNC');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (109, '130523', '内丘县', '130500', 'Neiqiu Xian ', 'NQU');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (110, '130524', '柏乡县', '130500', 'Baixiang Xian', 'BXG');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (111, '130525', '隆尧县', '130500', 'Longyao Xian', 'LYO');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (112, '130526', '任　县', '130500', 'Ren Xian', 'REN');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (113, '130527', '南和县', '130500', 'Nanhe Xian', 'NHX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (114, '130528', '宁晋县', '130500', 'Ningjin Xian', 'NJN');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (115, '130529', '巨鹿县', '130500', 'Julu Xian', 'JLU');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (116, '130530', '新河县', '130500', 'Xinhe Xian ', 'XHJ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (117, '130531', '广宗县', '130500', 'Guangzong Xian ', 'GZJ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (118, '130532', '平乡县', '130500', 'Pingxiang Xian', 'PXX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (119, '130533', '威　县', '130500', 'Wei Xian ', 'WEX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (120, '130534', '清河县', '130500', 'Qinghe Xian', 'QHE');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (121, '130535', '临西县', '130500', 'Linxi Xian', 'LXI');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (122, '130581', '南宫市', '130500', 'Nangong Shi', 'NGO');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (123, '130582', '沙河市', '130500', 'Shahe Shi', 'SHS');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (124, '130601', '市辖区', '130600', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (125, '130602', '新市区', '130600', 'Xinshi Qu', 'XBD');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (126, '130603', '北市区', '130600', 'Beishi Qu', 'BSI');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (127, '130604', '南市区', '130600', 'Nanshi Qu', 'NSB');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (128, '130621', '满城县', '130600', 'Mancheng Xian ', 'MCE');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (129, '130622', '清苑县', '130600', 'Qingyuan Xian', 'QYJ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (130, '130623', '涞水县', '130600', 'Laishui Xian', 'LSM');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (131, '130624', '阜平县', '130600', 'Fuping Xian ', 'FUP');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (132, '130625', '徐水县', '130600', 'Xushui Xian ', 'XSJ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (133, '130626', '定兴县', '130600', 'Dingxing Xian ', 'DXG');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (134, '130627', '唐　县', '130600', 'Tang Xian ', 'TAG');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (135, '130628', '高阳县', '130600', 'Gaoyang Xian ', 'GAY');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (136, '130629', '容城县', '130600', 'Rongcheng Xian ', 'RCX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (137, '130630', '涞源县', '130600', 'Laiyuan Xian ', 'LIY');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (138, '130631', '望都县', '130600', 'Wangdu Xian ', 'WDU');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (139, '130632', '安新县', '130600', 'Anxin Xian ', 'AXX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (140, '130633', '易　县', '130600', 'Yi Xian', 'YII');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (141, '130634', '曲阳县', '130600', 'Quyang Xian ', 'QUY');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (142, '130635', '蠡　县', '130600', 'Li Xian', 'LXJ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (143, '130636', '顺平县', '130600', 'Shunping Xian ', 'SPI');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (144, '130637', '博野县', '130600', 'Boye Xian ', 'BYE');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (145, '130638', '雄　县', '130600', 'Xiong Xian', 'XOX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (146, '130681', '涿州市', '130600', 'Zhuozhou Shi', 'ZZO');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (147, '130682', '定州市', '130600', 'Dingzhou Shi ', 'DZO');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (148, '130683', '安国市', '130600', 'Anguo Shi ', 'AGO');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (149, '130684', '高碑店市', '130600', 'Gaobeidian Shi', 'GBD');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (150, '130701', '市辖区', '130700', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (151, '130702', '桥东区', '130700', 'Qiaodong Qu', 'QDZ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (152, '130703', '桥西区', '130700', 'Qiaoxi Qu', 'QXI');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (153, '130705', '宣化区', '130700', 'Xuanhua Qu', 'XHZ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (154, '130706', '下花园区', '130700', 'Xiahuayuan Qu ', 'XHY');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (155, '130721', '宣化县', '130700', 'Xuanhua Xian ', 'XHX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (156, '130722', '张北县', '130700', 'Zhangbei Xian ', 'ZGB');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (157, '130723', '康保县', '130700', 'Kangbao Xian', 'KBO');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (158, '130724', '沽源县', '130700', 'Guyuan Xian', 'GUY');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (159, '130725', '尚义县', '130700', 'Shangyi Xian', 'SYK');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (160, '130726', '蔚　县', '130700', 'Yu Xian', 'YXJ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (161, '130727', '阳原县', '130700', 'Yangyuan Xian', 'YYN');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (162, '130728', '怀安县', '130700', 'Huai,an Xian', 'HAX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (163, '130729', '万全县', '130700', 'Wanquan Xian ', 'WQN');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (164, '130730', '怀来县', '130700', 'Huailai Xian', 'HLA');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (165, '130731', '涿鹿县', '130700', 'Zhuolu Xian ', 'ZLU');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (166, '130732', '赤城县', '130700', 'Chicheng Xian', 'CCX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (167, '130733', '崇礼县', '130700', 'Chongli Xian', 'COL');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (168, '130801', '市辖区', '130800', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (169, '130802', '双桥区', '130800', 'Shuangqiao Qu ', 'SQO');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (170, '130803', '双滦区', '130800', 'Shuangluan Qu', 'SLQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (171, '130804', '鹰手营子矿区', '130800', 'Yingshouyingzi Kuangqu', 'YSY');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (172, '130821', '承德县', '130800', 'Chengde Xian', 'CDX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (173, '130822', '兴隆县', '130800', 'Xinglong Xian', 'XLJ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (174, '130823', '平泉县', '130800', 'Pingquan Xian', 'PQN');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (175, '130824', '滦平县', '130800', 'Luanping Xian ', 'LUP');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (176, '130825', '隆化县', '130800', 'Longhua Xian', 'LHJ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (177, '130826', '丰宁满族自治县', '130800', 'Fengning Manzu Zizhixian', 'FNJ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (178, '130827', '宽城满族自治县', '130800', 'Kuancheng Manzu Zizhixian', 'KCX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (591, '220282', '桦甸市', '220200', 'Huadian Shi', 'HDJ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (592, '220283', '舒兰市', '220200', 'Shulan Shi', 'SLN');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (593, '220284', '磐石市', '220200', 'Panshi Shi', 'PSI');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (594, '220301', '市辖区', '220300', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (595, '220302', '铁西区', '220300', 'Tiexi Qu', 'TXS');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (596, '220303', '铁东区', '220300', 'Tiedong Qu ', 'TDQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (597, '220322', '梨树县', '220300', 'Lishu Xian', 'LSU');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (598, '220323', '伊通满族自治县', '220300', 'Yitong Manzu Zizhixian', 'YTO');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (599, '220381', '公主岭市', '220300', 'Gongzhuling Shi', 'GZL');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (600, '220382', '双辽市', '220300', 'Shuangliao Shi', 'SLS');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (601, '220401', '市辖区', '220400', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (602, '220402', '龙山区', '220400', 'Longshan Qu', 'LGS');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (603, '220403', '西安区', '220400', 'Xi,an Qu', 'XAA');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (604, '220421', '东丰县', '220400', 'Dongfeng Xian', 'DGF');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (605, '220422', '东辽县', '220400', 'Dongliao Xian ', 'DLX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (606, '220501', '市辖区', '220500', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (607, '220502', '东昌区', '220500', 'Dongchang Qu', 'DCT');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (608, '220503', '二道江区', '220500', 'Erdaojiang Qu', 'EDJ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (609, '220521', '通化县', '220500', 'Tonghua Xian ', 'THX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (610, '220523', '辉南县', '220500', 'Huinan Xian ', 'HNA');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (611, '220524', '柳河县', '220500', 'Liuhe Xian ', 'LHC');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (612, '220581', '梅河口市', '220500', 'Meihekou Shi', 'MHK');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (613, '220582', '集安市', '220500', 'Ji,an Shi', 'KNC');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (614, '220601', '市辖区', '220600', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (615, '220602', '八道江区', '220600', 'Badaojiang Qu', 'BDJ');
commit;
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (616, '220621', '抚松县', '220600', 'Fusong Xian', 'FSG');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (617, '220622', '靖宇县', '220600', 'Jingyu Xian', 'JYJ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (618, '220623', '长白朝鲜族自治县', '220600', 'Changbai Chosenzu Zizhixian', 'CGB');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (619, '220625', '江源县', '220600', 'Jiangyuan Xian', 'JYT');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (620, '220681', '临江市', '220600', 'Linjiang Shi', 'LIN');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (621, '220701', '市辖区', '220700', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (622, '220702', '宁江区', '220700', 'Ningjiang Qu', 'NJA');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (623, '220721', '前郭尔罗斯蒙古族自治县', '220700', 'Qian Gorlos Mongolzu Zizhixian', 'QGO');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (624, '220722', '长岭县', '220700', 'Changling Xian', 'CLG');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (625, '220723', '乾安县', '220700', 'Qian,an Xian', 'QAJ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (626, '220724', '扶余县', '220700', 'Fuyu Xian', 'FYU');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (627, '220801', '市辖区', '220800', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (628, '220802', '洮北区', '220800', 'Taobei Qu', 'TBQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (629, '220821', '镇赉县', '220800', 'Zhenlai Xian', 'ZLA');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (630, '220822', '通榆县', '220800', 'Tongyu Xian', 'TGY');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (631, '220881', '洮南市', '220800', 'Taonan Shi', 'TNS');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (632, '220882', '大安市', '220800', 'Da,an Shi', 'DNA');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (633, '222401', '延吉市', '222400', 'Yanji Shi', 'YNJ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (634, '222402', '图们市', '222400', 'Tumen Shi', 'TME');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (635, '222403', '敦化市', '222400', 'Dunhua Shi', 'DHS');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (636, '222404', '珲春市', '222400', 'Hunchun Shi', 'HUC');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (637, '222405', '龙井市', '222400', 'Longjing Shi', 'LJJ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (638, '222406', '和龙市', '222400', 'Helong Shi', 'HEL');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (639, '222424', '汪清县', '222400', 'Wangqing Xian', 'WGQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (640, '222426', '安图县', '222400', 'Antu Xian', 'ATU');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (641, '230101', '市辖区', '230100', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (642, '230102', '道里区', '230100', 'Daoli Qu', 'DLH');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (643, '230103', '南岗区', '230100', 'Nangang Qu', 'NGQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (644, '230104', '道外区', '230100', 'Daowai Qu', 'DWQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (645, '230106', '香坊区', '230100', 'Xiangfang Qu', 'XFQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (646, '230107', '动力区', '230100', 'Dongli Qu', 'DGL');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (647, '230108', '平房区', '230100', 'Pingfang Qu', 'PFQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (650, '230123', '依兰县', '230100', 'Yilan Xian', 'YLH');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (651, '230124', '方正县', '230100', 'Fangzheng Xian', 'FZH');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (652, '230125', '宾　县', '230100', 'Bin Xian', 'BNX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (653, '230126', '巴彦县', '230100', 'Bayan Xian', 'BYH');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (654, '230127', '木兰县', '230100', 'Mulan Xian ', 'MUL');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (655, '230128', '通河县', '230100', 'Tonghe Xian', 'TOH');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (656, '230129', '延寿县', '230100', 'Yanshou Xian', 'YSU');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (657, '230181', '阿城市', '230100', 'Acheng Shi', 'ACG');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (658, '230182', '双城市', '230100', 'Shuangcheng Shi', 'SCS');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (659, '230183', '尚志市', '230100', 'Shangzhi Shi', 'SZI');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (660, '230184', '五常市', '230100', 'Wuchang Shi', 'WCA');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (661, '230201', '市辖区', '230200', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (662, '230202', '龙沙区', '230200', 'Longsha Qu', 'LQQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (663, '230203', '建华区', '230200', 'Jianhua Qu', 'JHQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (664, '230204', '铁锋区', '230200', 'Tiefeng Qu', 'TFQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (665, '230205', '昂昂溪区', '230200', 'Ang,angxi Qu', 'AAX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (666, '230206', '富拉尔基区', '230200', 'Hulan Ergi Qu', 'HUE');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (667, '230207', '碾子山区', '230200', 'Nianzishan Qu', 'NZS');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (668, '230208', '梅里斯达斡尔族区', '230200', 'Meilisi Daurzu Qu', 'MLS');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (669, '230221', '龙江县', '230200', 'Longjiang Xian', 'LGJ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (670, '230223', '依安县', '230200', 'Yi,an Xian', 'YAN');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (671, '230224', '泰来县', '230200', 'Tailai Xian', 'TLA');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (672, '230225', '甘南县', '230200', 'Gannan Xian', 'GNX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (673, '230227', '富裕县', '230200', 'Fuyu Xian', 'FYX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (674, '230229', '克山县', '230200', 'Keshan Xian', 'KSN');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (675, '230230', '克东县', '230200', 'Kedong Xian', 'KDO');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (676, '230231', '拜泉县', '230200', 'Baiquan Xian', 'BQN');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (677, '230281', '讷河市', '230200', 'Nehe Shi', 'NEH');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (678, '230301', '市辖区', '230300', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (679, '230302', '鸡冠区', '230300', 'Jiguan Qu', 'JGU');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (680, '230303', '恒山区', '230300', 'Hengshan Qu', 'HSD');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (681, '230304', '滴道区', '230300', 'Didao Qu', 'DDO');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (682, '230305', '梨树区', '230300', 'Lishu Qu', 'LJX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (683, '230306', '城子河区', '230300', 'Chengzihe Qu', 'CZH');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (684, '230307', '麻山区', '230300', 'Mashan Qu', 'MSN');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (685, '230321', '鸡东县', '230300', 'Jidong Xian', 'JID');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (686, '230381', '虎林市', '230300', 'Hulin Shi', 'HUL');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (687, '230382', '密山市', '230300', 'Mishan Shi', 'MIS');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (688, '230401', '市辖区', '230400', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (689, '230402', '向阳区', '230400', 'Xiangyang  Qu ', 'XYZ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (690, '230403', '工农区', '230400', 'Gongnong Qu', 'GNH');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (691, '230404', '南山区', '230400', 'Nanshan Qu', 'NSQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (692, '230405', '兴安区', '230400', 'Xing,an Qu', 'XAH');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (693, '230406', '东山区', '230400', 'Dongshan Qu', 'DSA');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (694, '230407', '兴山区', '230400', 'Xingshan Qu', 'XSQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (695, '230421', '萝北县', '230400', 'Luobei Xian', 'LUB');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (696, '230422', '绥滨县', '230400', 'Suibin Xian', 'SBN');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (179, '130828', '围场满族蒙古族自治县', '130800', 'Weichang Manzu Menggolzu Zizhixian', 'WCJ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (180, '130901', '市辖区', '130900', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (181, '130902', '新华区', '130900', 'Xinhua Qu', 'XHF');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (182, '130903', '运河区', '130900', 'Yunhe Qu', 'YHC');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (183, '130921', '沧　县', '130900', 'Cang Xian', 'CAG');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (184, '130922', '青　县', '130900', 'Qing Xian', 'QIG');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (185, '130923', '东光县', '130900', 'Dongguang Xian ', 'DGU');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (186, '130924', '海兴县', '130900', 'Haixing Xian', 'HXG');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (187, '130925', '盐山县', '130900', 'Yanshan Xian', 'YNS');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (188, '130926', '肃宁县', '130900', 'Suning Xian ', 'SNG');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (189, '130927', '南皮县', '130900', 'Nanpi Xian', 'NPI');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (190, '130928', '吴桥县', '130900', 'Wuqiao Xian ', 'WUQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (191, '130929', '献　县', '130900', 'Xian Xian ', 'XXN');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (192, '130930', '孟村回族自治县', '130900', 'Mengcun Huizu Zizhixian', 'MCN');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (193, '130981', '泊头市', '130900', 'Botou Shi ', 'BOT');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (194, '130982', '任丘市', '130900', 'Renqiu Shi', 'RQS');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (195, '130983', '黄骅市', '130900', 'Huanghua Shi', 'HHJ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (196, '130984', '河间市', '130900', 'Hejian Shi', 'HJN');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (197, '131001', '市辖区', '131000', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (198, '131002', '安次区', '131000', 'Anci Qu', 'ACI');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (200, '131022', '固安县', '131000', 'Gu,an Xian', 'GUA');
commit;
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (201, '131023', '永清县', '131000', 'Yongqing Xian ', 'YQG');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (202, '131024', '香河县', '131000', 'Xianghe Xian', 'XGH');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (203, '131025', '大城县', '131000', 'Dacheng Xian', 'DCJ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (204, '131026', '文安县', '131000', 'Wen,an Xian', 'WEA');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (205, '131028', '大厂回族自治县', '131000', 'Dachang Huizu Zizhixian', 'DCG');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (206, '131081', '霸州市', '131000', 'Bazhou Shi', 'BZO');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (207, '131082', '三河市', '131000', 'Sanhe Shi', 'SNH');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (208, '131101', '市辖区', '131100', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (209, '131102', '桃城区', '131100', 'Taocheng Qu', 'TOC');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (210, '131121', '枣强县', '131100', 'Zaoqiang Xian ', 'ZQJ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (211, '131122', '武邑县', '131100', 'Wuyi Xian', 'WYI');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (212, '131123', '武强县', '131100', 'Wuqiang Xian ', 'WQG');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (213, '131124', '饶阳县', '131100', 'Raoyang Xian', 'RYG');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (214, '131125', '安平县', '131100', 'Anping Xian', 'APG');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (215, '131126', '故城县', '131100', 'Gucheng Xian', 'GCE');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (216, '131127', '景　县', '131100', 'Jing Xian ', 'JIG');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (217, '131128', '阜城县', '131100', 'Fucheng Xian ', 'FCE');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (218, '131181', '冀州市', '131100', 'Jizhou Shi ', 'JIZ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (219, '131182', '深州市', '131100', 'Shenzhou Shi', 'SNZ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (220, '140101', '市辖区', '140100', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (221, '140105', '小店区', '140100', 'Xiaodian Qu', 'XDQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (222, '140106', '迎泽区', '140100', 'Yingze Qu', 'YZT');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (223, '140107', '杏花岭区', '140100', 'Xinghualing Qu', 'XHL');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (224, '140108', '尖草坪区', '140100', 'Jiancaoping Qu', 'JCP');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (225, '140109', '万柏林区', '140100', 'Wanbailin Qu', 'WBL');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (226, '140110', '晋源区', '140100', 'Jinyuan Qu', 'JYM');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (227, '140121', '清徐县', '140100', 'Qingxu Xian ', 'QXU');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (228, '140122', '阳曲县', '140100', 'Yangqu Xian ', 'YGQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (229, '140123', '娄烦县', '140100', 'Loufan Xian', 'LFA');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (230, '140181', '古交市', '140100', 'Gujiao Shi', 'GUJ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (231, '140201', '市辖区', '140200', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (232, '140202', '城　区', '140200', 'Chengqu', 'CQD');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (233, '140203', '矿　区', '140200', 'Kuangqu', 'KQD');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (234, '140211', '南郊区', '140200', 'Nanjiao Qu', 'NJQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (235, '140212', '新荣区', '140200', 'Xinrong Qu', 'XRQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (236, '140221', '阳高县', '140200', 'Yanggao Xian ', 'YGO');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (237, '140222', '天镇县', '140200', 'Tianzhen Xian ', 'TZE');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (238, '140223', '广灵县', '140200', 'Guangling Xian ', 'GLJ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (239, '140224', '灵丘县', '140200', 'Lingqiu Xian ', 'LQX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (240, '140225', '浑源县', '140200', 'Hunyuan Xian', 'HYM');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (241, '140226', '左云县', '140200', 'Zuoyun Xian', 'ZUY');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (242, '140227', '大同县', '140200', 'Datong Xian ', 'DTX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (243, '140301', '市辖区', '140300', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (244, '140302', '城　区', '140300', 'Chengqu', 'CQU');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (245, '140303', '矿　区', '140300', 'Kuangqu', 'KQY');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (246, '140311', '郊　区', '140300', 'Jiaoqu', 'JQY');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (247, '140321', '平定县', '140300', 'Pingding Xian', 'PDG');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (248, '140322', '盂　县', '140300', 'Yu Xian', 'YUX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (249, '140401', '市辖区', '140400', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (250, '140402', '城　区', '140400', 'Chengqu ', 'CQC');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (251, '140411', '郊　区', '140400', 'Jiaoqu', 'JQZ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (252, '140421', '长治县', '140400', 'Changzhi Xian', 'CZI');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (253, '140423', '襄垣县', '140400', 'Xiangyuan Xian', 'XYJ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (254, '140424', '屯留县', '140400', 'Tunliu Xian', 'TNL');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (255, '140425', '平顺县', '140400', 'Pingshun Xian', 'PSX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (256, '140426', '黎城县', '140400', 'Licheng Xian', 'LIC');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (257, '140427', '壶关县', '140400', 'Huguan Xian', 'HGN');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (258, '140428', '长子县', '140400', 'Zhangzi Xian ', 'ZHZ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (259, '140429', '武乡县', '140400', 'Wuxiang Xian', 'WXG');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (260, '140430', '沁　县', '140400', 'Qin Xian', 'QIN');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (261, '140431', '沁源县', '140400', 'Qinyuan Xian ', 'QYU');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (262, '140481', '潞城市', '140400', 'Lucheng Shi', 'LCS');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (263, '140501', '市辖区', '140500', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (264, '140502', '城　区', '140500', 'Chengqu ', 'CQJ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (265, '140521', '沁水县', '140500', 'Qinshui Xian', 'QSI');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (266, '140522', '阳城县', '140500', 'Yangcheng Xian ', 'YGC');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (267, '140524', '陵川县', '140500', 'Lingchuan Xian', 'LGC');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (268, '140525', '泽州县', '140500', 'Zezhou Xian', 'ZEZ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (269, '140581', '高平市', '140500', 'Gaoping Shi ', 'GPG');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (270, '140601', '市辖区', '140600', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (271, '140602', '朔城区', '140600', 'Shuocheng Qu', 'SCH');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (272, '140603', '平鲁区', '140600', 'Pinglu Qu', 'PLU');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (273, '140621', '山阴县', '140600', 'Shanyin Xian', 'SYP');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (274, '140622', '应　县', '140600', 'Ying Xian', 'YIG');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (275, '140623', '右玉县', '140600', 'Youyu Xian ', 'YOY');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (276, '140624', '怀仁县', '140600', 'Huairen Xian', 'HRN');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (350, '150101', '市辖区', '150100', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (351, '150102', '新城区', '150100', 'Xincheng Qu', 'XCN');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (352, '150103', '回民区', '150100', 'Huimin Qu', 'HMQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (353, '150104', '玉泉区', '150100', 'Yuquan Qu', 'YQN');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (354, '150105', '赛罕区', '150100', 'Jiaoqu', 'JQH');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (355, '150121', '土默特左旗', '150100', 'Tumd Zuoqi', 'TUZ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (356, '150122', '托克托县', '150100', 'Togtoh Xian', 'TOG');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (357, '150123', '和林格尔县', '150100', 'Horinger Xian', 'HOR');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (358, '150124', '清水河县', '150100', 'Qingshuihe Xian', 'QSH');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (359, '150125', '武川县', '150100', 'Wuchuan Xian', 'WCX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (360, '150201', '市辖区', '150200', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (361, '150202', '东河区', '150200', 'Donghe Qu', 'DHE');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (362, '150203', '昆都仑区', '150200', 'Hondlon Qu', 'HDB');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (363, '150204', '青山区', '150200', 'Qingshan Qu', 'QSB');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (364, '150205', '石拐区', '150200', 'Shiguai Kuangqu', 'SGK');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (365, '150206', '白云矿区', '150200', 'Baiyun Kuangqu', 'BYK');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (366, '150207', '九原区', '150200', 'Jiaoqu', 'JBT');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (367, '150221', '土默特右旗', '150200', 'Tumd Youqi', 'TUY');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (368, '150222', '固阳县', '150200', 'Guyang Xian', 'GYM');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (369, '150223', '达尔罕茂明安联合旗', '150200', 'Darhan Muminggan Lianheqi', 'DML');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (370, '150301', '市辖区', '150300', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (371, '150302', '海勃湾区', '150300', 'Haibowan Qu', 'HBW');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (372, '150303', '海南区', '150300', 'Hainan Qu', 'HNU');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (373, '150304', '乌达区', '150300', 'Ud Qu', 'UDQ');
commit;
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (374, '150401', '市辖区', '150400', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (375, '150402', '红山区', '150400', 'Hongshan Qu', 'HSZ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (376, '150403', '元宝山区', '150400', 'Yuanbaoshan Qu', 'YBO');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (377, '150404', '松山区', '150400', 'Songshan Qu', 'SSQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (378, '150421', '阿鲁科尔沁旗', '150400', 'Ar Horqin Qi', 'AHO');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (379, '150422', '巴林左旗', '150400', 'Bairin Zuoqi', 'BAZ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (380, '150423', '巴林右旗', '150400', 'Bairin Youqi', 'BAY');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (381, '150424', '林西县', '150400', 'Linxi Xian', 'LXM');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (382, '150425', '克什克腾旗', '150400', 'Hexigten Qi', 'HXT');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (383, '150426', '翁牛特旗', '150400', 'Ongniud Qi', 'ONG');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (384, '150428', '喀喇沁旗', '150400', 'Harqin Qi', 'HAR');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (385, '150429', '宁城县', '150400', 'Ningcheng Xian', 'NCH');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (386, '150430', '敖汉旗', '150400', 'Aohan Qi', 'AHN');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (438, '152201', '乌兰浩特市', '152200', 'Ulan Hot Shi', 'ULO');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (439, '152202', '阿尔山市', '152200', 'Arxan Shi', 'ARS');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (440, '152221', '科尔沁右翼前旗', '152200', 'Horqin Youyi Qianqi', 'HYQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (441, '152222', '科尔沁右翼中旗', '152200', 'Horqin Youyi Zhongqi', 'HYZ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (442, '152223', '扎赉特旗', '152200', 'Jalaid Qi', 'JAL');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (443, '152224', '突泉县', '152200', 'Tuquan Xian', 'TUQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (444, '152501', '二连浩特市', '152500', 'Erenhot Shi', 'ERC');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (445, '152502', '锡林浩特市', '152500', 'Xilinhot Shi', 'XLI');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (446, '152522', '阿巴嘎旗', '152500', 'Abag Qi', 'ABG');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (447, '152523', '苏尼特左旗', '152500', 'Sonid Zuoqi', 'SOZ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (448, '152524', '苏尼特右旗', '152500', 'Sonid Youqi', 'SOY');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (449, '152525', '东乌珠穆沁旗', '152500', 'Dong Ujimqin Qi', 'DUJ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (450, '152526', '西乌珠穆沁旗', '152500', 'Xi Ujimqin Qi', 'XUJ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (451, '152527', '太仆寺旗', '152500', 'Taibus Qi', 'TAB');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (452, '152528', '镶黄旗', '152500', 'Xianghuang(Hobot Xar) Qi', 'XHG');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (453, '152529', '正镶白旗', '152500', 'Zhengxiangbai(Xulun Hobot Qagan)Qi', 'ZXB');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (454, '152530', '正蓝旗', '152500', 'Zhenglan(Xulun Hoh)Qi', 'ZLM');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (455, '152531', '多伦县', '152500', 'Duolun (Dolonnur)Xian', 'DLM');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (456, '152921', '阿拉善左旗', '152900', 'Alxa Zuoqi', 'ALZ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (457, '152922', '阿拉善右旗', '152900', 'Alxa Youqi', 'ALY');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (458, '152923', '额济纳旗', '152900', 'Ejin Qi', 'EJI');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (459, '210101', '市辖区', '210100', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (460, '210102', '和平区', '210100', 'Heping Qu', 'HEP');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (461, '210103', '沈河区', '210100', 'Shenhe Qu ', 'SHQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (462, '210104', '大东区', '210100', 'Dadong Qu ', 'DDQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (463, '210105', '皇姑区', '210100', 'Huanggu Qu', 'HGU');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (464, '210106', '铁西区', '210100', 'Tiexi Qu', 'TXI');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (465, '210111', '苏家屯区', '210100', 'Sujiatun Qu', 'SJT');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (466, '210112', '东陵区', '210100', 'Dongling Qu ', 'DLQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (467, '210113', '新城子区', '210100', 'Xinchengzi Qu', 'XCZ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (468, '210114', '于洪区', '210100', 'Yuhong Qu ', 'YHQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (469, '210122', '辽中县', '210100', 'Liaozhong Xian', 'LZL');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (470, '210123', '康平县', '210100', 'Kangping Xian', 'KPG');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (471, '210124', '法库县', '210100', 'Faku Xian', 'FKU');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (472, '210181', '新民市', '210100', 'Xinmin Shi', 'XMS');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (473, '210201', '市辖区', '210200', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (474, '210202', '中山区', '210200', 'Zhongshan Qu', 'ZSD');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (475, '210203', '西岗区', '210200', 'Xigang Qu', 'XGD');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (476, '210204', '沙河口区', '210200', 'Shahekou Qu', 'SHK');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (477, '210211', '甘井子区', '210200', 'Ganjingzi Qu', 'GJZ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (478, '210212', '旅顺口区', '210200', 'Lvshunkou Qu ', 'LSK');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (479, '210213', '金州区', '210200', 'Jinzhou Qu', 'JZH');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (480, '210224', '长海县', '210200', 'Changhai Xian', 'CHX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (481, '210281', '瓦房店市', '210200', 'Wafangdian Shi', 'WFD');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (482, '210282', '普兰店市', '210200', 'Pulandian Shi', 'PLD');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (483, '210283', '庄河市', '210200', 'Zhuanghe Shi', 'ZHH');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (484, '210301', '市辖区', '210300', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (485, '210302', '铁东区', '210300', 'Tiedong Qu ', 'TED');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (486, '210303', '铁西区', '210300', 'Tiexi Qu', 'TXL');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (487, '210304', '立山区', '210300', 'Lishan Qu', 'LAS');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (488, '210311', '千山区', '210300', 'Qianshan Qu ', 'QSQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (489, '210321', '台安县', '210300', 'Tai,an Xian', 'TAX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (490, '210323', '岫岩满族自治县', '210300', 'Xiuyan Manzu Zizhixian', 'XYL');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (491, '210381', '海城市', '210300', 'Haicheng Shi', 'HCL');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (492, '210401', '市辖区', '210400', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (493, '210402', '新抚区', '210400', 'Xinfu Qu', 'XFU');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (494, '210403', '东洲区', '210400', 'Lutian Qu', 'LTF');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (495, '210404', '望花区', '210400', 'Wanghua Qu', 'WHF');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (496, '210411', '顺城区', '210400', 'Shuncheng Qu', 'SCF');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (497, '210421', '抚顺县', '210400', 'Fushun Xian', 'FSX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (498, '210422', '新宾满族自治县', '210400', 'Xinbin Manzu Zizhixian ', 'XBN');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (499, '210423', '清原满族自治县', '210400', 'Qingyuan Manzu Zizhixian ', 'QYA');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (500, '210501', '市辖区', '210500', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (501, '210502', '平山区', '210500', 'Pingshan Qu', 'PSN');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (502, '210503', '溪湖区', '210500', 'Xihu Qu ', 'XHB');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (503, '210504', '明山区', '210500', 'Mingshan Qu', 'MSB');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (504, '210505', '南芬区', '210500', 'Nanfen Qu', 'NFQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (505, '210521', '本溪满族自治县', '210500', 'Benxi Manzu Zizhixian', 'BXX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (506, '210522', '桓仁满族自治县', '210500', 'Huanren Manzu Zizhixian', 'HRL');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (507, '210601', '市辖区', '210600', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (508, '210602', '元宝区', '210600', 'Yuanbao Qu', 'YBD');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (509, '210603', '振兴区', '210600', 'Zhenxing Qu ', 'ZXQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (510, '210604', '振安区', '210600', 'Zhen,an Qu', 'ZAQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (511, '210624', '宽甸满族自治县', '210600', 'Kuandian Manzu Zizhixian', 'KDN');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (512, '210681', '东港市', '210600', 'Donggang Shi', 'DGS');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (513, '210682', '凤城市', '210600', 'Fengcheng Shi', 'FCL');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (514, '210701', '市辖区', '210700', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (515, '210702', '古塔区', '210700', 'Guta Qu', 'GTQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (516, '210703', '凌河区', '210700', 'Linghe Qu', 'LHF');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (517, '210711', '太和区', '210700', 'Taihe Qu', 'THJ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (518, '210726', '黑山县', '210700', 'Heishan Xian', 'HSL');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (519, '210727', '义　县', '210700', 'Yi Xian', 'YXL');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (520, '210781', '凌海市', '210700', 'Linghai Shi ', 'LHL');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (521, '210782', '北宁市', '210700', 'Beining Shi', 'BNG');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (522, '210801', '市辖区', '210800', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (523, '210802', '站前区', '210800', 'Zhanqian Qu', 'ZQQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (524, '210803', '西市区', '210800', 'Xishi Qu', 'XII');
commit;
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (525, '210804', '鲅鱼圈区', '210800', 'Bayuquan Qu', 'BYQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (526, '210811', '老边区', '210800', 'Laobian Qu', 'LOB');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (527, '210881', '盖州市', '210800', 'Gaizhou Shi', 'GZU');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (528, '210882', '大石桥市', '210800', 'Dashiqiao Shi', 'DSQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (529, '210901', '市辖区', '210900', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (530, '210902', '海州区', '210900', 'Haizhou Qu', 'HZF');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (531, '210903', '新邱区', '210900', 'Xinqiu Qu', 'XQF');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (532, '210904', '太平区', '210900', 'Taiping Qu', 'TPG');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (533, '210905', '清河门区', '210900', 'Qinghemen Qu', 'QHM');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (534, '210911', '细河区', '210900', 'Xihe Qu', 'XHO');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (535, '210921', '阜新蒙古族自治县', '210900', 'Fuxin Mongolzu Zizhixian', 'FXX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (536, '210922', '彰武县', '210900', 'Zhangwu Xian', 'ZWU');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (537, '211001', '市辖区', '211000', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (538, '211002', '白塔区', '211000', 'Baita Qu', 'BTL');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (539, '211003', '文圣区', '211000', 'Wensheng Qu', 'WST');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (540, '211004', '宏伟区', '211000', 'Hongwei Qu', 'HWQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (541, '211005', '弓长岭区', '211000', 'Gongchangling Qu', 'GCL');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (542, '211011', '太子河区', '211000', 'Taizihe Qu', 'TZH');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (543, '211021', '辽阳县', '211000', 'Liaoyang Xian', 'LYX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (544, '211081', '灯塔市', '211000', 'Dengta Shi', 'DTL');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (545, '211101', '市辖区', '211100', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (546, '211102', '双台子区', '211100', 'Shuangtaizi Qu', 'STZ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (547, '211103', '兴隆台区', '211100', 'Xinglongtai Qu', 'XLT');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (548, '211121', '大洼县', '211100', 'Dawa Xian', 'DWA');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (549, '211122', '盘山县', '211100', 'Panshan Xian', 'PNS');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (550, '211201', '市辖区', '211200', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (551, '211202', '银州区', '211200', 'Yinzhou Qu', 'YZU');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (552, '211204', '清河区', '211200', 'Qinghe Qu', 'QHQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (553, '211221', '铁岭县', '211200', 'Tieling Xian', 'TLG');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (554, '211223', '西丰县', '211200', 'Xifeng Xian', 'XIF');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (555, '211224', '昌图县', '211200', 'Changtu Xian', 'CTX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (556, '211281', '调兵山市', '211200', 'Tiefa Shi ', 'TFA');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (557, '211282', '开原市', '211200', 'Kaiyuan Shi', 'KYS');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (558, '211301', '市辖区', '211300', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (559, '211302', '双塔区', '211300', 'Shuangta Qu', 'STQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (560, '211303', '龙城区', '211300', 'Longcheng Qu', 'LCL');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (561, '211321', '朝阳县', '211300', 'Chaoyang Xian', 'CYG');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (562, '211322', '建平县', '211300', 'Jianping Xian', 'JPG');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (563, '211324', '喀喇沁左翼蒙古族自治县', '211300', 'Harqin Zuoyi Mongolzu Zizhixian', 'HAZ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (564, '211381', '北票市', '211300', 'Beipiao Shi', 'BPO');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (565, '211382', '凌源市', '211300', 'Lingyuan Shi', 'LYK');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (566, '211401', '市辖区', '211400', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (567, '211402', '连山区', '211400', 'Lianshan Qu', 'LSQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (568, '211403', '龙港区', '211400', 'Longgang Qu', 'LGD');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (569, '211404', '南票区', '211400', 'Nanpiao Qu', 'NPQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (570, '211421', '绥中县', '211400', 'Suizhong Xian', 'SZL');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (571, '211422', '建昌县', '211400', 'Jianchang Xian', 'JCL');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (572, '211481', '兴城市', '211400', 'Xingcheng Shi', 'XCL');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (573, '220101', '市辖区', '220100', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (574, '220102', '南关区', '220100', 'Nanguan Qu', 'NGN');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (575, '220103', '宽城区', '220100', 'Kuancheng Qu', 'KCQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (576, '220104', '朝阳区', '220100', 'Chaoyang Qu ', 'CYC');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (577, '220105', '二道区', '220100', 'Erdao Qu', 'EDQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (578, '220106', '绿园区', '220100', 'Lvyuan Qu', 'LYQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (579, '220112', '双阳区', '220100', 'Shuangyang Qu', 'SYQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (580, '220122', '农安县', '220100', 'Nong,an Xian ', 'NAJ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (582, '220182', '榆树市', '220100', 'Yushu Shi', 'YSS');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (583, '220183', '德惠市', '220100', 'Dehui Shi', 'DEH');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (584, '220201', '市辖区', '220200', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (585, '220202', '昌邑区', '220200', 'Changyi Qu', 'CYI');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (586, '220203', '龙潭区', '220200', 'Longtan Qu', 'LTQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (587, '220204', '船营区', '220200', 'Chuanying Qu', 'CYJ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (588, '220211', '丰满区', '220200', 'Fengman Qu', 'FMQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (589, '220221', '永吉县', '220200', 'Yongji Xian', 'YOJ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (590, '220281', '蛟河市', '220200', 'Jiaohe Shi', 'JHJ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1715, '420505', '猇亭区', '420500', 'Xiaoting Qu', 'XTQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1717, '420525', '远安县', '420500', 'Yuan,an Xian', 'YAX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1718, '420526', '兴山县', '420500', 'Xingshan Xian', 'XSX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1719, '420527', '秭归县', '420500', 'Zigui Xian', 'ZGI');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1720, '420528', '长阳土家族自治县', '420500', 'Changyang Tujiazu Zizhixian', 'CYA');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1721, '420529', '五峰土家族自治县', '420500', 'Wufeng Tujiazu Zizhixian', 'WFG');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1722, '420581', '宜都市', '420500', 'Yidu Shi', 'YID');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1723, '420582', '当阳市', '420500', 'Dangyang Shi', 'DYS');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1724, '420583', '枝江市', '420500', 'Zhijiang Shi', 'ZIJ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1725, '420601', '市辖区', '420600', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1726, '420602', '襄城区', '420600', 'Xiangcheng Qu', 'XXF');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1727, '420606', '樊城区', '420600', 'Fancheng Qu', 'FNC');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1729, '420624', '南漳县', '420600', 'Nanzhang Xian', 'NZH');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1730, '420625', '谷城县', '420600', 'Gucheng Xian', 'GUC');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1731, '420626', '保康县', '420600', 'Baokang Xian', 'BKG');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1732, '420682', '老河口市', '420600', 'Laohekou Shi', 'LHK');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1733, '420683', '枣阳市', '420600', 'Zaoyang Shi', 'ZOY');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1734, '420684', '宜城市', '420600', 'Yicheng Shi', 'YCW');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1735, '420701', '市辖区', '420700', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1736, '420702', '梁子湖区', '420700', 'Liangzihu Qu', 'LZI');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1737, '420703', '华容区', '420700', 'Huarong Qu', 'HRQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1738, '420704', '鄂城区', '420700', 'Echeng Qu', 'ECQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1739, '420801', '市辖区', '420800', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1740, '420802', '东宝区', '420800', 'Dongbao Qu', 'DBQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1742, '420821', '京山县', '420800', 'Jingshan Xian', 'JSA');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1743, '420822', '沙洋县', '420800', 'Shayang Xian', 'SYF');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1744, '420881', '钟祥市', '420800', 'Zhongxiang Xian', 'ZXS');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1745, '420901', '市辖区', '420900', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1746, '420902', '孝南区', '420900', 'Xiaonan Qu', 'XNA');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1747, '420921', '孝昌县', '420900', 'Xiaochang Xian', 'XOC');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1748, '420922', '大悟县', '420900', 'Dawu Xian', 'DWU');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1749, '420923', '云梦县', '420900', 'Yunmeng Xian', 'YMX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1750, '420981', '应城市', '420900', 'Yingcheng Shi', 'YCG');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1751, '420982', '安陆市', '420900', 'Anlu Shi', 'ALU');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1752, '420984', '汉川市', '420900', 'Hanchuan Shi', 'HCH');
commit;
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1753, '421001', '市辖区', '421000', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1754, '421002', '沙市区', '421000', 'Shashi Qu', 'SSJ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1755, '421003', '荆州区', '421000', 'Jingzhou Qu', 'JZQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1756, '421022', '公安县', '421000', 'Gong,an Xian', 'GGA');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1757, '421023', '监利县', '421000', 'Jianli Xian', 'JLI');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1758, '421024', '江陵县', '421000', 'Jiangling Xian', 'JLX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1759, '421081', '石首市', '421000', 'Shishou Shi', 'SSO');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1760, '421083', '洪湖市', '421000', 'Honghu Shi', 'HHU');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1761, '421087', '松滋市', '421000', 'Songzi Shi', 'SZF');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1762, '421101', '市辖区', '421100', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1763, '421102', '黄州区', '421100', 'Huangzhou Qu', 'HZC');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1764, '421121', '团风县', '421100', 'Tuanfeng Xian', 'TFG');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1765, '421122', '红安县', '421100', 'Hong,an Xian', 'HGA');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1766, '421123', '罗田县', '421100', 'Luotian Xian', 'LTE');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1767, '421124', '英山县', '421100', 'Yingshan Xian', 'YSE');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1768, '421125', '浠水县', '421100', 'Xishui Xian', 'XSE');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1769, '421126', '蕲春县', '421100', 'Qichun Xian', 'QCN');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1770, '421127', '黄梅县', '421100', 'Huangmei Xian', 'HGM');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1771, '421181', '麻城市', '421100', 'Macheng Shi', 'MCS');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1772, '421182', '武穴市', '421100', 'Wuxue Shi', 'WXE');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1773, '421201', '市辖区', '421200', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1774, '421202', '咸安区', '421200', 'Xian,an Qu', 'XAN');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1775, '421221', '嘉鱼县', '421200', 'Jiayu Xian', 'JYX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1776, '421222', '通城县', '421200', 'Tongcheng Xian', 'TCX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1777, '421223', '崇阳县', '421200', 'Chongyang Xian', 'CGY');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1778, '421224', '通山县', '421200', 'Tongshan Xian', 'TSA');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1779, '421281', '赤壁市', '421200', 'Chibi Shi', 'CBI');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1783, '422801', '恩施市', '422800', 'Enshi Shi', 'ESS');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1784, '422802', '利川市', '422800', 'Lichuan Shi', 'LCE');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1785, '422822', '建始县', '422800', 'Jianshi Xian', 'JSE');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1786, '422823', '巴东县', '422800', 'Badong Xian', 'BDG');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1787, '422825', '宣恩县', '422800', 'Xuan,en Xian', 'XEN');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1788, '422826', '咸丰县', '422800', 'Xianfeng Xian', 'XFG');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1789, '422827', '来凤县', '422800', 'Laifeng Xian', 'LFG');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1790, '422828', '鹤峰县', '422800', 'Hefeng Xian', 'HEF');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1791, '429004', '仙桃市', '429000', 'Xiantao Shi', 'XNT');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1792, '429005', '潜江市', '429000', 'Qianjiang Shi', 'QNJ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1793, '429006', '天门市', '429000', 'Tianmen Shi', 'TMS');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1794, '429021', '神农架林区', '429000', 'Shennongjia Linqu', 'SNJ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1795, '430101', '市辖区', '430100', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1796, '430102', '芙蓉区', '430100', 'Furong Qu', 'FRQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1797, '430103', '天心区', '430100', 'Tianxin Qu', 'TXQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1798, '430104', '岳麓区', '430100', 'Yuelu Qu', 'YLU');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1799, '430105', '开福区', '430100', 'Kaifu Qu', 'KFQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1800, '430111', '雨花区', '430100', 'Yuhua Qu', 'YHA');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1801, '430121', '长沙县', '430100', 'Changsha Xian', 'CSA');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1802, '430122', '望城县', '430100', 'Wangcheng Xian', 'WCH');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1803, '430124', '宁乡县', '430100', 'Ningxiang Xian', 'NXX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1804, '430181', '浏阳市', '430100', 'Liuyang Shi', 'LYS');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1805, '430201', '市辖区', '430200', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1806, '430202', '荷塘区', '430200', 'Hetang Qu', 'HTZ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1807, '430203', '芦淞区', '430200', 'Lusong Qu', 'LZZ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1808, '430204', '石峰区', '430200', 'Shifeng Qu', 'SFG');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1809, '430211', '天元区', '430200', 'Tianyuan Qu', 'TYQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1810, '430221', '株洲县', '430200', 'Zhuzhou Xian', 'ZZX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1811, '430223', '攸　县', '430200', 'You Xian', 'YOU');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1812, '430224', '茶陵县', '430200', 'Chaling Xian', 'CAL');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1813, '430225', '炎陵县', '430200', 'Yanling Xian', 'YLX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1814, '430281', '醴陵市', '430200', 'Liling Shi', 'LIL');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1815, '430301', '市辖区', '430300', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1816, '430302', '雨湖区', '430300', 'Yuhu Qu', 'YHU');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1817, '430304', '岳塘区', '430300', 'Yuetang Qu', 'YTG');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1818, '430321', '湘潭县', '430300', 'Xiangtan Qu', 'XTX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1819, '430381', '湘乡市', '430300', 'Xiangxiang Shi', 'XXG');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1820, '430382', '韶山市', '430300', 'Shaoshan Shi', 'SSN');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1821, '430401', '市辖区', '430400', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1826, '430412', '南岳区', '430400', 'Nanyue Qu', 'NYQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1827, '430421', '衡阳县', '430400', 'Hengyang Xian', 'HYO');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1828, '430422', '衡南县', '430400', 'Hengnan Xian', 'HNX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1829, '430423', '衡山县', '430400', 'Hengshan Xian', 'HSH');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1830, '430424', '衡东县', '430400', 'Hengdong Xian', 'HED');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1831, '430426', '祁东县', '430400', 'Qidong Xian', 'QDX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1832, '430481', '耒阳市', '430400', 'Leiyang Shi', 'LEY');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1833, '430482', '常宁市', '430400', 'Changning Shi', 'CNS');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1834, '430501', '市辖区', '430500', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1835, '430502', '双清区', '430500', 'Shuangqing Qu', 'SGQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1836, '430503', '大祥区', '430500', 'Daxiang Qu', 'DXS');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1837, '430511', '北塔区', '430500', 'Beita Qu', 'BET');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1838, '430521', '邵东县', '430500', 'Shaodong Xian', 'SDG');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1839, '430522', '新邵县', '430500', 'Xinshao Xian', 'XSO');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1840, '430523', '邵阳县', '430500', 'Shaoyang Xian', 'SYW');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1841, '430524', '隆回县', '430500', 'Longhui Xian', 'LGH');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1842, '430525', '洞口县', '430500', 'Dongkou Xian', 'DGK');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1843, '430527', '绥宁县', '430500', 'Suining Xian', 'SNX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1844, '430528', '新宁县', '430500', 'Xinning Xian', 'XNI');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1845, '430529', '城步苗族自治县', '430500', 'Chengbu Miaozu Zizhixian', 'CBU');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1846, '430581', '武冈市', '430500', 'Wugang Shi', 'WGS');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1847, '430601', '市辖区', '430600', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1848, '430602', '岳阳楼区', '430600', 'Yueyanglou Qu', 'YYL');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1849, '430603', '云溪区', '430600', 'Yunxi Qu', 'YXI');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1850, '430611', '君山区', '430600', 'Junshan Qu', 'JUS');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1851, '430621', '岳阳县', '430600', 'Yueyang Xian', 'YYX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1852, '430623', '华容县', '430600', 'Huarong Xian', 'HRG');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1853, '430624', '湘阴县', '430600', 'Xiangyin Xian', 'XYN');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1854, '430626', '平江县', '430600', 'Pingjiang Xian', 'PJH');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1855, '430681', '汨罗市', '430600', 'Miluo Shi', 'MLU');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (697, '230501', '市辖区', '230500', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (698, '230502', '尖山区', '230500', 'Jianshan Qu', 'JSQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (699, '230503', '岭东区', '230500', 'Lingdong Qu', 'LDQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (700, '230505', '四方台区', '230500', 'Sifangtai Qu', 'SFT');
commit;
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (701, '230506', '宝山区', '230500', 'Baoshan Qu', 'BSQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (702, '230521', '集贤县', '230500', 'Jixian Xian', 'JXH');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (703, '230522', '友谊县', '230500', 'Youyi Xian', 'YYI');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (704, '230523', '宝清县', '230500', 'Baoqing Xian', 'BQG');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (705, '230524', '饶河县', '230500', 'Raohe Xian ', 'ROH');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (706, '230601', '市辖区', '230600', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (707, '230602', '萨尔图区', '230600', 'Sairt Qu', 'SAI');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (708, '230603', '龙凤区', '230600', 'Longfeng Qu', 'LFQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (709, '230604', '让胡路区', '230600', 'Ranghulu Qu', 'RHL');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (710, '230605', '红岗区', '230600', 'Honggang Qu', 'HGD');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (711, '230606', '大同区', '230600', 'Datong Qu', 'DHD');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (712, '230621', '肇州县', '230600', 'Zhaozhou Xian', 'ZAZ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (713, '230622', '肇源县', '230600', 'Zhaoyuan Xian', 'ZYH');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (714, '230623', '林甸县', '230600', 'Lindian Xian ', 'LDN');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (715, '230624', '杜尔伯特蒙古族自治县', '230600', 'Dorbod Mongolzu Zizhixian', 'DOM');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (716, '230701', '市辖区', '230700', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (717, '230702', '伊春区', '230700', 'Yichun Qu', 'YYC');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (718, '230703', '南岔区', '230700', 'Nancha Qu', 'NCQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (719, '230704', '友好区', '230700', 'Youhao Qu', 'YOH');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (720, '230705', '西林区', '230700', 'Xilin Qu', 'XIL');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (721, '230706', '翠峦区', '230700', 'Cuiluan Qu', 'CLN');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (722, '230707', '新青区', '230700', 'Xinqing Qu', 'XQQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (723, '230708', '美溪区', '230700', 'Meixi Qu', 'MXQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (724, '230709', '金山屯区', '230700', 'Jinshantun Qu', 'JST');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (725, '230710', '五营区', '230700', 'Wuying Qu', 'WYQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (726, '230711', '乌马河区', '230700', 'Wumahe Qu', 'WMH');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (727, '230712', '汤旺河区', '230700', 'Tangwanghe Qu', 'TWH');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (728, '230713', '带岭区', '230700', 'Dailing Qu', 'DLY');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (729, '230714', '乌伊岭区', '230700', 'Wuyiling Qu', 'WYL');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (730, '230715', '红星区', '230700', 'Hongxing Qu', 'HGX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (731, '230716', '上甘岭区', '230700', 'Shangganling Qu', 'SGL');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (732, '230722', '嘉荫县', '230700', 'Jiayin Xian', 'JAY');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (733, '230781', '铁力市', '230700', 'Tieli Shi', 'TEL');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (734, '230801', '市辖区', '230800', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (735, '230802', '永红区', '230800', 'Yonghong Qu', 'YHJ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (736, '230803', '向阳区', '230800', 'Xiangyang  Qu ', 'XYQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (737, '230804', '前进区', '230800', 'Qianjin Qu', 'QJQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (738, '230805', '东风区', '230800', 'Dongfeng Qu', 'DFQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (739, '230811', '郊　区', '230800', 'Jiaoqu', 'JQJ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (740, '230822', '桦南县', '230800', 'Huanan Xian', 'HNH');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (741, '230826', '桦川县', '230800', 'Huachuan Xian', 'HCN');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (742, '230828', '汤原县', '230800', 'Tangyuan Xian', 'TYX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (743, '230833', '抚远县', '230800', 'Fuyuan Xian', 'FUY');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (744, '230881', '同江市', '230800', 'Tongjiang Shi', 'TOJ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (745, '230882', '富锦市', '230800', 'Fujin Shi', 'FUJ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (746, '230901', '市辖区', '230900', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (747, '230902', '新兴区', '230900', 'Xinxing Qu', 'XXQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (748, '230903', '桃山区', '230900', 'Taoshan Qu', 'TSC');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (749, '230904', '茄子河区', '230900', 'Qiezihe Qu', 'QZI');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (750, '230921', '勃利县', '230900', 'Boli Xian', 'BLI');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (751, '231001', '市辖区', '231000', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (752, '231002', '东安区', '231000', 'Dong,an Qu', 'DGA');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (753, '231003', '阳明区', '231000', 'Yangming Qu', 'YMQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (754, '231004', '爱民区', '231000', 'Aimin Qu', 'AMQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (755, '231005', '西安区', '231000', 'Xi,an Qu', 'XAQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (756, '231024', '东宁县', '231000', 'Dongning Xian', 'DON');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (757, '231025', '林口县', '231000', 'Linkou Xian', 'LKO');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (758, '231081', '绥芬河市', '231000', 'Suifenhe Shi', 'SFE');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (759, '231083', '海林市', '231000', 'Hailin Shi', 'HLS');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (760, '231084', '宁安市', '231000', 'Ning,an Shi', 'NAI');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (761, '231085', '穆棱市', '231000', 'Muling Shi', 'MLG');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (762, '231101', '市辖区', '231100', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (763, '231102', '爱辉区', '231100', 'Aihui Qu', 'AHQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (764, '231121', '嫩江县', '231100', 'Nenjiang Xian', 'NJH');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (765, '231123', '逊克县', '231100', 'Xunke Xian', 'XUK');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (766, '231124', '孙吴县', '231100', 'Sunwu Xian', 'SUW');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (767, '231181', '北安市', '231100', 'Bei,an Shi', 'BAS');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (768, '231182', '五大连池市', '231100', 'Wudalianchi Shi', 'WDL');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (780, '232721', '呼玛县', '232700', 'Huma Xian', 'HUM');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (781, '232722', '塔河县', '232700', 'Tahe Xian', 'TAH');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (782, '232723', '漠河县', '232700', 'Mohe Xian', 'MOH');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (783, '310101', '黄浦区', '310100', 'Huangpu Qu', 'HGP');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (784, '310103', '卢湾区', '310100', 'Luwan Qu', 'LWN');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (785, '310104', '徐汇区', '310100', 'Xuhui Qu', 'XHI');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (786, '310105', '长宁区', '310100', 'Changning Qu', 'CNQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (787, '310106', '静安区', '310100', 'Jing,an Qu', 'JAQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (788, '310107', '普陀区', '310100', 'Putuo Qu', 'PTQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (789, '310108', '闸北区', '310100', 'Zhabei Qu', 'ZBE');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (790, '310109', '虹口区', '310100', 'Hongkou Qu', 'HKQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (791, '310110', '杨浦区', '310100', 'Yangpu Qu', 'YPU');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (792, '310112', '闵行区', '310100', 'Minhang Qu', 'MHQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (793, '310113', '宝山区', '310100', 'Baoshan Qu', 'BAO');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (794, '310114', '嘉定区', '310100', 'Jiading Qu', 'JDG');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (795, '310115', '浦东新区', '310100', 'Pudong Xinqu', 'PDX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (796, '310116', '金山区', '310100', 'Jinshan Qu', 'JSH');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (797, '310117', '松江区', '310100', 'Songjiang Qu', 'SOJ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (799, '310119', '南汇区', '310100', 'Nanhui Qu', 'NNH');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (800, '310120', '奉贤区', '310100', 'Fengxian Qu', 'FXI');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (798, '310118', '青浦区', '310100', 'Qingpu  Qu', 'QPU');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (801, '310230', '崇明县', '310200', 'Chongming Xian', 'CMI');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (802, '320101', '市辖区', '320100', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (803, '320102', '玄武区', '320100', 'Xuanwu Qu', 'XWU');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (804, '320103', '白下区', '320100', 'Baixia Qu', 'BXQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (805, '320104', '秦淮区', '320100', 'Qinhuai Qu', 'QHU');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (806, '320105', '建邺区', '320100', 'Jianye Qu', 'JYQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (807, '320106', '鼓楼区', '320100', 'Gulou Qu', 'GLQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (808, '320107', '下关区', '320100', 'Xiaguan Qu', 'XGQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (809, '320111', '浦口区', '320100', 'Pukou Qu', 'PKO');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (810, '320113', '栖霞区', '320100', 'Qixia Qu', 'QAX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (811, '320114', '雨花台区', '320100', 'Yuhuatai Qu', 'YHT');
commit;
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (814, '320124', '溧水县', '320100', 'Lishui Xian', 'LIS');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (815, '320125', '高淳县', '320100', 'Gaochun Xian', 'GCN');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (816, '320201', '市辖区', '320200', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (817, '320202', '崇安区', '320200', 'Chong,an Qu', 'CGA');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (818, '320203', '南长区', '320200', 'Nanchang Qu', 'NCG');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (819, '320204', '北塘区', '320200', 'Beitang Qu', 'BTQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (822, '320211', '滨湖区', '320200', 'Jiaoqu', 'JQW');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (823, '320281', '江阴市', '320200', 'Jiangyin Shi', 'JIA');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (824, '320282', '宜兴市', '320200', 'Yixing Shi', 'YIX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (825, '320301', '市辖区', '320300', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (826, '320302', '鼓楼区', '320300', 'Gulou Qu', 'GLU');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (827, '320303', '云龙区', '320300', 'Yunlong Qu', 'YLF');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (828, '320304', '九里区', '320300', 'Jiuli Qu', 'JUL');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (829, '320305', '贾汪区', '320300', 'Jiawang Qu', 'JWQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (830, '320311', '泉山区', '320300', 'Quanshan Qu', 'QSX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (831, '320321', '丰　县', '320300', 'Feng Xian', 'FXN');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (832, '320322', '沛　县', '320300', 'Pei Xian', 'PEI');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (833, '320323', '铜山县', '320300', 'Tongshan Xian', 'TSX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (834, '320324', '睢宁县', '320300', 'Suining Xian', 'SNI');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (835, '320381', '新沂市', '320300', 'Xinyi Shi', 'XYW');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (836, '320382', '邳州市', '320300', 'Pizhou Shi', 'PZO');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (837, '320401', '市辖区', '320400', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (838, '320402', '天宁区', '320400', 'Tianning Qu', 'TNQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (839, '320404', '钟楼区', '320400', 'Zhonglou Qu', 'ZLQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (840, '320405', '戚墅堰区', '320400', 'Qishuyan Qu', 'QSY');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (841, '320411', '新北区', '320400', 'Jiaoqu', 'JCZ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (843, '320481', '溧阳市', '320400', 'Liyang Shi', 'LYR');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (844, '320482', '金坛市', '320400', 'Jintan Shi', 'JTS');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (845, '320501', '市辖区', '320500', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (846, '320502', '沧浪区', '320500', 'Canglang Qu', 'CLQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (847, '320503', '平江区', '320500', 'Pingjiang Qu', 'PJQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (848, '320504', '金阊区', '320500', 'Jinchang Qu', 'JCA');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (852, '320581', '常熟市', '320500', 'Changshu Shi', 'CGS');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (853, '320582', '张家港市', '320500', 'Zhangjiagang Shi ', 'ZJG');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (854, '320583', '昆山市', '320500', 'Kunshan Shi', 'KUS');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (855, '320584', '吴江市', '320500', 'Wujiang Shi', 'WUJ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (856, '320585', '太仓市', '320500', 'Taicang Shi', 'TAC');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (857, '320601', '市辖区', '320600', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (858, '320602', '崇川区', '320600', 'Chongchuan Qu', 'CCQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (859, '320611', '港闸区', '320600', 'Gangzha Qu', 'GZQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (860, '320621', '海安县', '320600', 'Hai,an Xian', 'HIA');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (861, '320623', '如东县', '320600', 'Rudong Xian', 'RDG');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (862, '320681', '启东市', '320600', 'Qidong Shi', 'QID');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (863, '320682', '如皋市', '320600', 'Rugao Shi', 'RGO');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (864, '320683', '通州市', '320600', 'Tongzhou Shi', 'TGA');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (865, '320684', '海门市', '320600', 'Haimen Shi', 'HME');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (866, '320701', '市辖区', '320700', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (867, '320703', '连云区', '320700', 'Lianyun Qu', 'LYB');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (868, '320705', '新浦区', '320700', 'Xinpu Qu', 'XPQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (869, '320706', '海州区', '320700', 'Haizhou Qu', 'HIZ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (870, '320721', '赣榆县', '320700', 'Ganyu Xian', 'GYU');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (871, '320722', '东海县', '320700', 'Donghai Xian', 'DHX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (872, '320723', '灌云县', '320700', 'Guanyun Xian', 'GYS');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (873, '320724', '灌南县', '320700', 'Guannan Xian', 'GUN');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (874, '320801', '市辖区', '320800', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (875, '320802', '清河区', '320800', 'Qinghe Qu', 'QHH');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (878, '320811', '清浦区', '320800', 'Qingpu Qu', 'QPQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (879, '320826', '涟水县', '320800', 'Lianshui Xian', 'LSI');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (880, '320829', '洪泽县', '320800', 'Hongze Xian', 'HGZ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (881, '320830', '盱眙县', '320800', 'Xuyi Xian', 'XUY');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (882, '320831', '金湖县', '320800', 'Jinhu Xian', 'JHU');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (883, '320901', '市辖区', '320900', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (884, '320902', '亭湖区', '320900', 'Chengqu', 'CQH');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (886, '320921', '响水县', '320900', 'Xiangshui Xian', 'XSH');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (887, '320922', '滨海县', '320900', 'Binhai Xian', 'BHI');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (888, '320923', '阜宁县', '320900', 'Funing Xian', 'FNG');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (889, '320924', '射阳县', '320900', 'Sheyang Xian', 'SEY');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (890, '320925', '建湖县', '320900', 'Jianhu Xian', 'JIH');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (891, '320981', '东台市', '320900', 'Dongtai Shi', 'DTS');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (892, '320982', '大丰市', '320900', 'Dafeng Shi', 'DFS');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (893, '321001', '市辖区', '321000', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (894, '321002', '广陵区', '321000', 'Guangling Qu', 'GGL');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (896, '321011', '郊　区', '321000', 'Jiaoqu', 'JYZ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (897, '321023', '宝应县', '321000', 'Baoying Xian ', 'BYI');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (898, '321081', '仪征市', '321000', 'Yizheng Shi', 'YZE');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (899, '321084', '高邮市', '321000', 'Gaoyou Shi', 'GYO');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (900, '321088', '江都市', '321000', 'Jiangdu Shi', 'JDU');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (901, '321101', '市辖区', '321100', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (902, '321102', '京口区', '321100', 'Dongkou Qu', 'JKQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (903, '321111', '润州区', '321100', 'Runzhou Qu', 'RZQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (905, '321181', '丹阳市', '321100', 'Danyang Xian', 'DNY');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (906, '321182', '扬中市', '321100', 'Yangzhong Shi', 'YZG');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (907, '321183', '句容市', '321100', 'Jurong Shi', 'JRG');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (908, '321201', '市辖区', '321200', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (909, '321202', '海陵区', '321200', 'Hailing Qu', 'HIL');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (910, '321203', '高港区', '321200', 'Gaogang Qu', 'GGQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (911, '321281', '兴化市', '321200', 'Xinghua Shi', 'XHS');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (912, '321282', '靖江市', '321200', 'Jingjiang Shi', 'JGJ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (913, '321283', '泰兴市', '321200', 'Taixing Shi', 'TXG');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (914, '321284', '姜堰市', '321200', 'Jiangyan Shi', 'JYS');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (915, '321301', '市辖区', '321300', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (916, '321302', '宿城区', '321300', 'Sucheng Qu', 'SCE');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (918, '321322', '沭阳县', '321300', 'Shuyang Xian', 'SYD');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (919, '321323', '泗阳县', '321300', 'Siyang Xian ', 'SIY');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (920, '321324', '泗洪县', '321300', 'Sihong Xian', 'SIH');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (921, '330101', '市辖区', '330100', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (922, '330102', '上城区', '330100', 'Shangcheng Qu', 'SCQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (923, '330103', '下城区', '330100', 'Xiacheng Qu', 'XCG');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (924, '330104', '江干区', '330100', 'Jianggan Qu', 'JGQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (925, '330105', '拱墅区', '330100', 'Gongshu Qu', 'GSQ');
commit;
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (926, '330106', '西湖区', '330100', 'Xihu Qu ', 'XHU');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (927, '330108', '滨江区', '330100', 'Binjiang Qu', 'BJQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (930, '330122', '桐庐县', '330100', 'Tonglu Xian', 'TLU');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (931, '330127', '淳安县', '330100', 'Chun,an Xian', 'CAZ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (932, '330182', '建德市', '330100', 'Jiande Shi', 'JDS');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (933, '330183', '富阳市', '330100', 'Fuyang Shi', 'FYZ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (934, '330185', '临安市', '330100', 'Lin,an Shi', 'LNA');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (935, '330201', '市辖区', '330200', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (936, '330203', '海曙区', '330200', 'Haishu Qu', 'HNB');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (937, '330204', '江东区', '330200', 'Jiangdong Qu', 'JDO');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (938, '330205', '江北区', '330200', 'Jiangbei Qu', 'JBQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (939, '330206', '北仑区', '330200', 'Beilun Qu', 'BLN');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (940, '330211', '镇海区', '330200', 'Zhenhai Qu', 'ZHF');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (942, '330225', '象山县', '330200', 'Xiangshan Xian', 'YSZ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (943, '330226', '宁海县', '330200', 'Ninghai Xian', 'NHI');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (944, '330281', '余姚市', '330200', 'Yuyao Shi', 'YYO');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (945, '330282', '慈溪市', '330200', 'Cixi Shi', 'CXI');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (946, '330283', '奉化市', '330200', 'Fenghua Shi', 'FHU');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (947, '330301', '市辖区', '330300', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (948, '330302', '鹿城区', '330300', 'Lucheng Qu', 'LUW');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (949, '330303', '龙湾区', '330300', 'Longwan Qu', 'LWW');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (950, '330304', '瓯海区', '330300', 'Ouhai Qu', 'OHQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (951, '330322', '洞头县', '330300', 'Dongtou Xian', 'DTO');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (952, '330324', '永嘉县', '330300', 'Yongjia Xian', 'YJX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (953, '330326', '平阳县', '330300', 'Pingyang Xian', 'PYG');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (954, '330327', '苍南县', '330300', 'Cangnan Xian', 'CAN');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (955, '330328', '文成县', '330300', 'Wencheng Xian', 'WCZ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (956, '330329', '泰顺县', '330300', 'Taishun Xian', 'TSZ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (957, '330381', '瑞安市', '330300', 'Rui,an Xian', 'RAS');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (958, '330382', '乐清市', '330300', 'Yueqing Shi', 'YQZ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (959, '330401', '市辖区', '330400', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (960, '330402', '秀城区', '330400', 'Xiucheng Qu', 'XCJ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (961, '330411', '秀洲区', '330400', 'Jiaoqu', 'JJX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (962, '330421', '嘉善县', '330400', 'Jiashan Xian', 'JSK');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (963, '330424', '海盐县', '330400', 'Haiyan Xian', 'HYN');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (964, '330481', '海宁市', '330400', 'Haining Shi', 'HNG');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (965, '330482', '平湖市', '330400', 'Pinghu Shi', 'PHU');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (966, '330483', '桐乡市', '330400', 'Tongxiang Shi', 'TXZ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (967, '330501', '市辖区', '330500', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (970, '330521', '德清县', '330500', 'Deqing Xian', 'DQX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (971, '330522', '长兴县', '330500', 'Changxing Xian', 'CXG');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (972, '330523', '安吉县', '330500', 'Anji Xian', 'AJI');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (973, '330601', '市辖区', '330600', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (974, '330602', '越城区', '330600', 'Yuecheng Qu', 'YSX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (975, '330621', '绍兴县', '330600', 'Shaoxing Xian', 'SXZ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (976, '330624', '新昌县', '330600', 'Xinchang Xian', 'XCX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (977, '330681', '诸暨市', '330600', 'Zhuji Shi', 'ZHJ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (978, '330682', '上虞市', '330600', 'Shangyu Shi', 'SYZ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (979, '330683', '嵊州市', '330600', 'Shengzhou Shi', 'SGZ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (980, '330701', '市辖区', '330700', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (981, '330702', '婺城区', '330700', 'Wucheng Qu', 'WCF');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (983, '330723', '武义县', '330700', 'Wuyi Xian', 'WYX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (984, '330726', '浦江县', '330700', 'Pujiang Xian ', 'PJG');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (985, '330727', '磐安县', '330700', 'Pan,an Xian', 'PAX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (986, '330781', '兰溪市', '330700', 'Lanxi Shi', 'LXZ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (987, '330782', '义乌市', '330700', 'Yiwu Shi', 'YWS');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (988, '330783', '东阳市', '330700', 'Dongyang Shi', 'DGY');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (989, '330784', '永康市', '330700', 'Yongkang Shi', 'YKG');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (990, '330801', '市辖区', '330800', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (991, '330802', '柯城区', '330800', 'Kecheng Qu', 'KEC');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (993, '330822', '常山县', '330800', 'Changshan Xian', 'CSN');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (994, '330824', '开化县', '330800', 'Kaihua Xian', 'KHU');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (995, '330825', '龙游县', '330800', 'Longyou Xian ', 'LGY');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (996, '330881', '江山市', '330800', 'Jiangshan Shi', 'JIS');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (997, '330901', '市辖区', '330900', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (998, '330902', '定海区', '330900', 'Dinghai Qu', 'DHQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (999, '330903', '普陀区', '330900', 'Putuo Qu', 'PTO');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1000, '330921', '岱山县', '330900', 'Daishan Xian', 'DSH');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1001, '330922', '嵊泗县', '330900', 'Shengsi Xian', 'SSZ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1002, '331001', '市辖区', '331000', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1003, '331002', '椒江区', '331000', 'Jiaojiang Qu', 'JJT');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1004, '331003', '黄岩区', '331000', 'Huangyan Qu', 'HYT');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1005, '331004', '路桥区', '331000', 'Luqiao Qu', 'LQT');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1006, '331021', '玉环县', '331000', 'Yuhuan Xian', 'YHN');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1007, '331022', '三门县', '331000', 'Sanmen Xian', 'SMN');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1008, '331023', '天台县', '331000', 'Tiantai Xian', 'TTA');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1009, '331024', '仙居县', '331000', 'Xianju Xian', 'XJU');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1010, '331081', '温岭市', '331000', 'Wenling Shi', 'WLS');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1011, '331082', '临海市', '331000', 'Linhai Shi', 'LHI');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1022, '340101', '市辖区', '340100', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1023, '340102', '瑶海区', '340100', 'Dongshi Qu', 'DSI');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1024, '340103', '庐阳区', '340100', 'Zhongshi Qu', 'ZSH');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1025, '340104', '蜀山区', '340100', 'Xishi Qu', 'XSF');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1026, '340111', '包河区', '340100', 'Jiaoqu', 'JHF');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1027, '340121', '长丰县', '340100', 'Changfeng Xian', 'CFG');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1028, '340122', '肥东县', '340100', 'Feidong Xian', 'FDO');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1029, '340123', '肥西县', '340100', 'Feixi Xian', 'FIX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1030, '340201', '市辖区', '340200', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1031, '340202', '镜湖区', '340200', 'Jinghu Qu', 'JHW');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1032, '340203', '马塘区', '340200', 'Matang Qu', 'MTQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1033, '340204', '新芜区', '340200', 'Xinwu Qu', 'XWW');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1034, '340207', '鸠江区', '340200', 'Jiujiang Qu', 'JJW');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1035, '340221', '芜湖县', '340200', 'Wuhu Xian', 'WHX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1036, '340222', '繁昌县', '340200', 'Fanchang Xian', 'FCH');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1037, '340223', '南陵县', '340200', 'Nanling Xian', 'NLX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1038, '340301', '市辖区', '340300', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1039, '340302', '龙子湖区', '340300', 'Dongshi Qu', 'DSB');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1040, '340303', '蚌山区', '340300', 'Zhongshi Qu', 'ZSI');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1041, '340304', '禹会区', '340300', 'Xishi Qu', 'XBB');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1042, '340311', '淮上区', '340300', 'Jiaoqu', 'JBB');
commit;
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1043, '340321', '怀远县', '340300', 'Huaiyuan Qu', 'HYW');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1044, '340322', '五河县', '340300', 'Wuhe Xian', 'WHE');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1045, '340323', '固镇县', '340300', 'Guzhen Xian', 'GZX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1046, '340401', '市辖区', '340400', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1047, '340402', '大通区', '340400', 'Datong Qu', 'DTQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1048, '340403', '田家庵区', '340400', 'Tianjia,an Qu', 'TJA');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1049, '340404', '谢家集区', '340400', 'Xiejiaji Qu', 'XJJ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1050, '340405', '八公山区', '340400', 'Bagongshan Qu', 'BGS');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1051, '340406', '潘集区', '340400', 'Panji Qu', 'PJI');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1052, '340421', '凤台县', '340400', 'Fengtai Qu', 'FTX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1053, '340501', '市辖区', '340500', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1054, '340502', '金家庄区', '340500', 'Jinjiazhuang Qu', 'JJZ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1055, '340503', '花山区', '340500', 'Huashan Qu', 'HSM');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1056, '340504', '雨山区', '340500', 'Yushan Qu', 'YSQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1057, '340521', '当涂县', '340500', 'Dangtu Xian', 'DTU');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1058, '340601', '市辖区', '340600', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1059, '340602', '杜集区', '340600', 'Duji Qu', 'DJQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1060, '340603', '相山区', '340600', 'Xiangshan Qu', 'XSA');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1061, '340604', '烈山区', '340600', 'Lieshan Qu', 'LHB');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1062, '340621', '濉溪县', '340600', 'Suixi Xian', 'SXW');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1063, '340701', '市辖区', '340700', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1064, '340702', '铜官山区', '340700', 'Tongguanshan Qu', 'TGQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1065, '340703', '狮子山区', '340700', 'Shizishan Qu', 'SZN');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1066, '340711', '郊　区', '340700', 'Jiaoqu', 'JTL');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1067, '340721', '铜陵县', '340700', 'Tongling Xian', 'TLX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1068, '340801', '市辖区', '340800', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1069, '340802', '迎江区', '340800', 'Yingjiang Qu', 'YJQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1070, '340803', '大观区', '340800', 'Daguan Qu', 'DGQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1071, '340811', '郊　区', '340800', 'Jiaoqu', 'JQA');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1072, '340822', '怀宁县', '340800', 'Huaining Xian', 'HNW');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1073, '340823', '枞阳县', '340800', 'Zongyang Xian', 'ZYW');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1074, '340824', '潜山县', '340800', 'Qianshan Xian', 'QSW');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1075, '340825', '太湖县', '340800', 'Taihu Xian', 'THU');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1076, '340826', '宿松县', '340800', 'Susong Xian', 'SUS');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1077, '340827', '望江县', '340800', 'Wangjiang Xian', 'WJX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1078, '340828', '岳西县', '340800', 'Yuexi Xian', 'YXW');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1079, '340881', '桐城市', '340800', 'Tongcheng Shi', 'TCW');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1080, '341001', '市辖区', '341000', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1081, '341002', '屯溪区', '341000', 'Tunxi Qu', 'TXN');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1082, '341003', '黄山区', '341000', 'Huangshan Qu', 'HSK');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1083, '341004', '徽州区', '341000', 'Huizhou Qu', 'HZQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1084, '341021', '歙　县', '341000', 'She Xian', 'SEX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1085, '341022', '休宁县', '341000', 'Xiuning Xian', 'XUN');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1086, '341023', '黟　县', '341000', 'Yi Xian', 'YIW');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1087, '341024', '祁门县', '341000', 'Qimen Xian', 'QMN');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1088, '341101', '市辖区', '341100', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1089, '341102', '琅琊区', '341100', 'Langya Qu', 'LYU');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1090, '341103', '南谯区', '341100', 'Nanqiao Qu', 'NQQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1091, '341122', '来安县', '341100', 'Lai,an Xian', 'LAX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1092, '341124', '全椒县', '341100', 'Quanjiao Xian', 'QJO');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1093, '341125', '定远县', '341100', 'Dingyuan Xian', 'DYW');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1094, '341126', '凤阳县', '341100', 'Fengyang Xian', 'FYG');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1095, '341181', '天长市', '341100', 'Tianchang Shi', 'TNC');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1096, '341182', '明光市', '341100', 'Mingguang Shi', 'MGG');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1097, '341201', '市辖区', '341200', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1098, '341202', '颍州区', '341200', 'Yingzhou Qu', 'YGA');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1099, '341203', '颍东区', '341200', 'Yingdong Qu', 'YDO');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1100, '341204', '颍泉区', '341200', 'Yingquan Qu', 'YQQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1101, '341221', '临泉县', '341200', 'Linquan Xian', 'LQN');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1102, '341222', '太和县', '341200', 'Taihe Xian', 'TIH');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1103, '341225', '阜南县', '341200', 'Funan Xian', 'FNX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1104, '341226', '颍上县', '341200', 'Yingshang Xian', 'YSW');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1105, '341282', '界首市', '341200', 'Jieshou Shi', 'JSW');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1106, '341301', '市辖区', '341300', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1107, '341302', '墉桥区', '341300', 'Yongqiao Qu', 'YQO');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1108, '341321', '砀山县', '341300', 'Dangshan Xian', 'DSW');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1109, '341322', '萧　县', '341300', 'Xiao Xian', 'XIO');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1110, '341323', '灵璧县', '341300', 'Lingbi Xian', 'LBI');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1111, '341324', '泗　县', '341300', 'Si Xian ', 'SIX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1144, '350101', '市辖区', '350100', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1145, '350102', '鼓楼区', '350100', 'Gulou Qu', 'GLR');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1146, '350103', '台江区', '350100', 'Taijiang Qu', 'TJQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1147, '350104', '仓山区', '350100', 'Cangshan Qu', 'CSQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1148, '350105', '马尾区', '350100', 'Mawei Qu', 'MWQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1149, '350111', '晋安区', '350100', 'Jin,an Qu', 'JAF');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1150, '350121', '闽侯县', '350100', 'Minhou Qu', 'MHO');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1151, '350122', '连江县', '350100', 'Lianjiang Xian', 'LJF');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1152, '350123', '罗源县', '350100', 'Luoyuan Xian', 'LOY');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1153, '350124', '闽清县', '350100', 'Minqing Xian', 'MQG');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1154, '350125', '永泰县', '350100', 'Yongtai Xian', 'YTX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1155, '350128', '平潭县', '350100', 'Pingtan Xian', 'PTN');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1156, '350181', '福清市', '350100', 'Fuqing Shi', 'FQS');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1157, '350182', '长乐市', '350100', 'Changle Shi', 'CLS');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1158, '350201', '市辖区', '350200', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1159, '350203', '思明区', '350200', 'Siming Qu', 'SMQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1160, '350205', '海沧区', '350200', 'Xinglin Qu', 'XLN');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1161, '350206', '湖里区', '350200', 'Huli Qu', 'HLQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1162, '350211', '集美区', '350200', 'Jimei Qu', 'JMQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1163, '350212', '同安区', '350200', 'Tong,an Qu', 'TAQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1165, '350301', '市辖区', '350300', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1166, '350302', '城厢区', '350300', 'Chengxiang Qu', 'CXP');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1167, '350303', '涵江区', '350300', 'Hanjiang Qu', 'HJQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1170, '350322', '仙游县', '350300', 'Xianyou Xian', 'XYF');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1171, '350401', '市辖区', '350400', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1172, '350402', '梅列区', '350400', 'Meilie Qu', 'MLQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1173, '350403', '三元区', '350400', 'Sanyuan Qu', 'SYB');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1174, '350421', '明溪县', '350400', 'Mingxi Xian', 'MXI');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1175, '350423', '清流县', '350400', 'Qingliu Xian', 'QLX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1176, '350424', '宁化县', '350400', 'Ninghua Xian', 'NGH');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1177, '350425', '大田县', '350400', 'Datian Xian', 'DTM');
commit;
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1178, '350426', '尤溪县', '350400', 'Youxi Xian', 'YXF');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1179, '350427', '沙　县', '350400', 'Sha Xian', 'SAX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1180, '350428', '将乐县', '350400', 'Jiangle Xian', 'JLE');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1181, '350429', '泰宁县', '350400', 'Taining Xian', 'TNG');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1182, '350430', '建宁县', '350400', 'Jianning Xian', 'JNF');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1183, '350481', '永安市', '350400', 'Yong,an Shi', 'YAF');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1184, '350501', '市辖区', '350500', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1185, '350502', '鲤城区', '350500', 'Licheng Qu', 'LCQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1186, '350503', '丰泽区', '350500', 'Fengze Qu', 'FZE');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1187, '350504', '洛江区', '350500', 'Luojiang Qu', 'LJQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1189, '350521', '惠安县', '350500', 'Hui,an Xian', 'HAF');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1190, '350524', '安溪县', '350500', 'Anxi Xian', 'ANX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1191, '350525', '永春县', '350500', 'Yongchun Xian', 'YCM');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1192, '350526', '德化县', '350500', 'Dehua Xian', 'DHA');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1193, '350527', '金门县', '350500', 'Jinmen Xian', 'JME');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1194, '350581', '石狮市', '350500', 'Shishi Shi', 'SHH');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1195, '350582', '晋江市', '350500', 'Jinjiang Shi', 'JJG');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1196, '350583', '南安市', '350500', 'Nan,an Shi', 'NAS');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1197, '350601', '市辖区', '350600', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1198, '350602', '芗城区', '350600', 'Xiangcheng Qu', 'XZZ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1199, '350603', '龙文区', '350600', 'Longwen Qu', 'LWZ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1200, '350622', '云霄县', '350600', 'Yunxiao Xian', 'YXO');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1201, '350623', '漳浦县', '350600', 'Zhangpu Xian', 'ZPU');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1202, '350624', '诏安县', '350600', 'Zhao,an Xian', 'ZAF');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1203, '350625', '长泰县', '350600', 'Changtai Xian', 'CTA');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1204, '350626', '东山县', '350600', 'Dongshan Xian', 'DSN');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1205, '350627', '南靖县', '350600', 'Nanjing Xian', 'NJX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1206, '350628', '平和县', '350600', 'Pinghe Xian', 'PHE');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1207, '350629', '华安县', '350600', 'Hua,an Xian', 'HAN');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1208, '350681', '龙海市', '350600', 'Longhai Shi', 'LHM');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1209, '350701', '市辖区', '350700', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1210, '350702', '延平区', '350700', 'Yanping Qu', 'YPQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1211, '350721', '顺昌县', '350700', 'Shunchang Xian', 'SCG');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1212, '350722', '浦城县', '350700', 'Pucheng Xian', 'PCX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1213, '350723', '光泽县', '350700', 'Guangze Xian', 'GZE');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1214, '350724', '松溪县', '350700', 'Songxi Xian', 'SOX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1215, '350725', '政和县', '350700', 'Zhenghe Xian', 'ZGH');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1216, '350781', '邵武市', '350700', 'Shaowu Shi', 'SWU');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1217, '350782', '武夷山市', '350700', 'Wuyishan Shi', 'WUS');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1218, '350783', '建瓯市', '350700', 'Jian,ou Shi', 'JOU');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1219, '350784', '建阳市', '350700', 'Jianyang Shi', 'JNY');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1220, '350801', '市辖区', '350800', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1221, '350802', '新罗区', '350800', 'Xinluo Qu', 'XNL');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1222, '350821', '长汀县', '350800', 'Changting Xian', 'CTG');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1223, '350822', '永定县', '350800', 'Yongding Xian', 'YDI');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1224, '350823', '上杭县', '350800', 'Shanghang Xian', 'SHF');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1225, '350824', '武平县', '350800', 'Wuping Xian', 'WPG');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1226, '350825', '连城县', '350800', 'Liancheng Xian', 'LCF');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1227, '350881', '漳平市', '350800', 'Zhangping Xian', 'ZGP');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1238, '360101', '市辖区', '360100', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1239, '360102', '东湖区', '360100', 'Donghu Qu', 'DHU');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1240, '360103', '西湖区', '360100', 'Xihu Qu ', 'XHQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1241, '360104', '青云谱区', '360100', 'Qingyunpu Qu', 'QYP');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1242, '360105', '湾里区', '360100', 'Wanli Qu', 'WLI');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1243, '360111', '青山湖区', '360100', 'Jiaoqu', 'JQN');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1244, '360121', '南昌县', '360100', 'Nanchang Xian', 'NCA');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1245, '360122', '新建县', '360100', 'Xinjian Xian', 'XJN');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1246, '360123', '安义县', '360100', 'Anyi Xian', 'AYI');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1247, '360124', '进贤县', '360100', 'Jinxian Xian', 'JXX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1248, '360201', '市辖区', '360200', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1249, '360202', '昌江区', '360200', 'Changjiang Qu', 'CJG');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1250, '360203', '珠山区', '360200', 'Zhushan Qu', 'ZSJ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1251, '360222', '浮梁县', '360200', 'Fuliang Xian', 'FLX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1252, '360281', '乐平市', '360200', 'Leping Shi', 'LEP');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1253, '360301', '市辖区', '360300', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1254, '360302', '安源区', '360300', 'Anyuan Qu', 'AYQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1255, '360313', '湘东区', '360300', 'Xiangdong Qu', 'XDG');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1256, '360321', '莲花县', '360300', 'Lianhua Xian', 'LHG');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1257, '360322', '上栗县', '360300', 'Shangli Xian', 'SLI');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1258, '360323', '芦溪县', '360300', 'Lixi Xian', 'LXP');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1259, '360401', '市辖区', '360400', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1260, '360402', '庐山区', '360400', 'Lushan Qu', 'LSV');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1261, '360403', '浔阳区', '360400', 'Xunyang Qu', 'XYC');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1262, '360421', '九江县', '360400', 'Jiujiang Xian', 'JUJ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1263, '360423', '武宁县', '360400', 'Wuning Xian', 'WUN');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1264, '360424', '修水县', '360400', 'Xiushui Xian', 'XSG');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1265, '360425', '永修县', '360400', 'Yongxiu Xian', 'YOX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1266, '360426', '德安县', '360400', 'De,an Xian', 'DEA');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1267, '360427', '星子县', '360400', 'Xingzi Xian', 'XZI');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1268, '360428', '都昌县', '360400', 'Duchang Xian', 'DUC');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1269, '360429', '湖口县', '360400', 'Hukou Xian', 'HUK');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1270, '360430', '彭泽县', '360400', 'Pengze Xian', 'PZE');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1271, '360481', '瑞昌市', '360400', 'Ruichang Shi', 'RCG');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1272, '360501', '市辖区', '360500', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1273, '360502', '渝水区', '360500', 'Yushui Qu', 'YSR');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1274, '360521', '分宜县', '360500', 'Fenyi Xian', 'FYI');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1275, '360601', '市辖区', '360600', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1276, '360602', '月湖区', '360600', 'Yuehu Qu', 'YHY');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1277, '360622', '余江县', '360600', 'Yujiang Xian', 'YUJ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1278, '360681', '贵溪市', '360600', 'Guixi Shi', 'GXS');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1279, '360701', '市辖区', '360700', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1280, '360702', '章贡区', '360700', 'Zhanggong Qu', 'ZGG');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1281, '360721', '赣　县', '360700', 'Gan Xian', 'GXN');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1282, '360722', '信丰县', '360700', 'Xinfeng Xian ', 'XNF');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1283, '360723', '大余县', '360700', 'Dayu Xian', 'DYX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1284, '360724', '上犹县', '360700', 'Shangyou Xian', 'SYO');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1285, '360725', '崇义县', '360700', 'Chongyi Xian', 'CYX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1286, '360726', '安远县', '360700', 'Anyuan Xian', 'AYN');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1287, '360727', '龙南县', '360700', 'Longnan Xian', 'LNX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1288, '360728', '定南县', '360700', 'Dingnan Xian', 'DNN');
commit;
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1289, '360729', '全南县', '360700', 'Quannan Xian', 'QNN');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1290, '360730', '宁都县', '360700', 'Ningdu Xian', 'NDU');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1291, '360731', '于都县', '360700', 'Yudu Xian', 'YUD');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1292, '360732', '兴国县', '360700', 'Xingguo Xian', 'XGG');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1293, '360733', '会昌县', '360700', 'Huichang Xian', 'HIC');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1294, '360734', '寻乌县', '360700', 'Xunwu Xian', 'XNW');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1295, '360735', '石城县', '360700', 'Shicheng Xian', 'SIC');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1296, '360781', '瑞金市', '360700', 'Ruijin Shi', 'RJS');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1297, '360782', '南康市', '360700', 'Nankang Shi', 'NNK');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1348, '370101', '市辖区', '370100', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1349, '370102', '历下区', '370100', 'Lixia Qu', 'LXQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1350, '370103', '市中区', '370100', 'Shizhong Qu', 'SZQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1351, '370104', '槐荫区', '370100', 'Huaiyin Qu', 'HYF');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1352, '370105', '天桥区', '370100', 'Tianqiao Qu', 'TQQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1353, '370112', '历城区', '370100', 'Licheng Qu', 'LCZ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1355, '370124', '平阴县', '370100', 'Pingyin Xian', 'PYL');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1356, '370125', '济阳县', '370100', 'Jiyang Xian', 'JYL');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1357, '370126', '商河县', '370100', 'Shanghe Xian', 'SGH');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1358, '370181', '章丘市', '370100', 'Zhangqiu Shi', 'ZQS');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1359, '370201', '市辖区', '370200', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1360, '370202', '市南区', '370200', 'Shinan Qu', 'SNQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1361, '370203', '市北区', '370200', 'Shibei Qu', 'SBQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1362, '370205', '四方区', '370200', 'Sifang Qu', 'SFQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1363, '370211', '黄岛区', '370200', 'Huangdao Qu', 'HDO');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1364, '370212', '崂山区', '370200', 'Laoshan Qu', 'LQD');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1365, '370213', '李沧区', '370200', 'Licang Qu', 'LCT');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1366, '370214', '城阳区', '370200', 'Chengyang Qu', 'CEY');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1367, '370281', '胶州市', '370200', 'Jiaozhou Shi', 'JZS');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1368, '370282', '即墨市', '370200', 'Jimo Shi', 'JMO');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1369, '370283', '平度市', '370200', 'Pingdu Shi', 'PDU');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1370, '370284', '胶南市', '370200', 'Jiaonan Shi', 'JNS');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1371, '370285', '莱西市', '370200', 'Laixi Shi', 'LXE');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1372, '370301', '市辖区', '370300', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1373, '370302', '淄川区', '370300', 'Zichuan Qu', 'ZCQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1374, '370303', '张店区', '370300', 'Zhangdian Qu', 'ZDQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1375, '370304', '博山区', '370300', 'Boshan Qu', 'BSZ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1376, '370305', '临淄区', '370300', 'Linzi Qu', 'LZQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1377, '370306', '周村区', '370300', 'Zhoucun Qu', 'ZCN');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1378, '370321', '桓台县', '370300', 'Huantai Xian', 'HTL');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1379, '370322', '高青县', '370300', 'Gaoqing Xian', 'GQG');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1380, '370323', '沂源县', '370300', 'Yiyuan Xian', 'YIY');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1381, '370401', '市辖区', '370400', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1382, '370402', '市中区', '370400', 'Shizhong Qu', 'SZZ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1383, '370403', '薛城区', '370400', 'Xuecheng Qu', 'XEC');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1384, '370404', '峄城区', '370400', 'Yicheng Qu', 'YZZ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1385, '370405', '台儿庄区', '370400', 'Tai,erzhuang Qu', 'TEZ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1386, '370406', '山亭区', '370400', 'Shanting Qu', 'STG');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1387, '370481', '滕州市', '370400', 'Tengzhou Shi', 'TZO');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1388, '370501', '市辖区', '370500', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1389, '370502', '东营区', '370500', 'Dongying Qu', 'DYQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1390, '370503', '河口区', '370500', 'Hekou Qu', 'HKO');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1391, '370521', '垦利县', '370500', 'Kenli Xian', 'KLI');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1392, '370522', '利津县', '370500', 'Lijin Xian', 'LJN');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1393, '370523', '广饶县', '370500', 'Guangrao Xian ', 'GRO');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1394, '370601', '市辖区', '370600', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1395, '370602', '芝罘区', '370600', 'Zhifu Qu', 'ZFQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1396, '370611', '福山区', '370600', 'Fushan Qu', 'FUS');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1397, '370612', '牟平区', '370600', 'Muping Qu', 'MPQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1398, '370613', '莱山区', '370600', 'Laishan Qu', 'LYT');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1399, '370634', '长岛县', '370600', 'Changdao Xian', 'CDO');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1400, '370681', '龙口市', '370600', 'Longkou Shi', 'LKU');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1401, '370682', '莱阳市', '370600', 'Laiyang Shi', 'LYD');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1402, '370683', '莱州市', '370600', 'Laizhou Shi', 'LZG');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1403, '370684', '蓬莱市', '370600', 'Penglai Shi', 'PLI');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1404, '370685', '招远市', '370600', 'Zhaoyuan Shi', 'ZYL');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1405, '370686', '栖霞市', '370600', 'Qixia Shi', 'QXS');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1406, '370687', '海阳市', '370600', 'Haiyang Shi', 'HYL');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1407, '370701', '市辖区', '370700', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1408, '370702', '潍城区', '370700', 'Weicheng Qu', 'WCG');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1409, '370703', '寒亭区', '370700', 'Hanting Qu', 'HNT');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1410, '370704', '坊子区', '370700', 'Fangzi Qu', 'FZQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1411, '370705', '奎文区', '370700', 'Kuiwen Qu', 'KWN');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1412, '370724', '临朐县', '370700', 'Linqu Xian', 'LNQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1413, '370725', '昌乐县', '370700', 'Changle Xian', 'CLX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1414, '370781', '青州市', '370700', 'Qingzhou Shi', 'QGZ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1415, '370782', '诸城市', '370700', 'Zhucheng Shi', 'ZCL');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1416, '370783', '寿光市', '370700', 'Shouguang Shi', 'SGG');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1417, '370784', '安丘市', '370700', 'Anqiu Shi', 'AQU');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1418, '370785', '高密市', '370700', 'Gaomi Shi', 'GMI');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1419, '370786', '昌邑市', '370700', 'Changyi Shi', 'CYL');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1420, '370801', '市辖区', '370800', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1421, '370802', '市中区', '370800', 'Shizhong Qu', 'SZU');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1422, '370811', '任城区', '370800', 'Rencheng Qu', 'RCQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1423, '370826', '微山县', '370800', 'Weishan Xian', 'WSA');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1424, '370827', '鱼台县', '370800', 'Yutai Xian', 'YTL');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1425, '370828', '金乡县', '370800', 'Jinxiang Xian', 'JXG');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1426, '370829', '嘉祥县', '370800', 'Jiaxiang Xian', 'JXP');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1427, '370830', '汶上县', '370800', 'Wenshang Xian', 'WNS');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1428, '370831', '泗水县', '370800', 'Sishui Xian', 'SSH');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1429, '370832', '梁山县', '370800', 'Liangshan Xian', 'LSN');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1430, '370881', '曲阜市', '370800', 'Qufu Shi', 'QFU');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1431, '370882', '兖州市', '370800', 'Yanzhou Shi', 'YZL');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1432, '370883', '邹城市', '370800', 'Zoucheng Shi', 'ZCG');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1433, '370901', '市辖区', '370900', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1434, '370902', '泰山区', '370900', 'Taishan Qu', 'TSQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1436, '370921', '宁阳县', '370900', 'Ningyang Xian', 'NGY');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1437, '370923', '东平县', '370900', 'Dongping Xian', 'DPG');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1438, '370982', '新泰市', '370900', 'Xintai Shi', 'XTA');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1439, '370983', '肥城市', '370900', 'Feicheng Shi', 'FEC');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1440, '371001', '市辖区', '371000', 'Shixiaqu', null);
commit;
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1441, '371002', '环翠区', '371000', 'Huancui Qu', 'HNC');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1442, '371081', '文登市', '371000', 'Wendeng Shi', 'WDS');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1443, '371082', '荣成市', '371000', 'Rongcheng Shi', 'RCS');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1444, '371083', '乳山市', '371000', 'Rushan Shi', 'RSN');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1445, '371101', '市辖区', '371100', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1446, '371102', '东港区', '371100', 'Donggang Qu', 'DGR');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1448, '371121', '五莲县', '371100', 'Wulian Xian', 'WLN');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1449, '371122', '莒　县', '371100', 'Ju Xian', 'JUX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1450, '371201', '市辖区', '371200', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1451, '371202', '莱城区', '371200', 'Laicheng Qu', 'LAC');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1452, '371203', '钢城区', '371200', 'Gangcheng Qu', 'GCQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1453, '371301', '市辖区', '371300', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1454, '371302', '兰山区', '371300', 'Lanshan Qu', 'LLS');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1455, '371311', '罗庄区', '371300', 'Luozhuang Qu', 'LZU');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1456, '371312', '河东区', '371300', 'Hedong Qu', 'HDL');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1457, '371321', '沂南县', '371300', 'Yinan Xian', 'YNN');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1458, '371322', '郯城县', '371300', 'Tancheng Xian', 'TCE');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1459, '371323', '沂水县', '371300', 'Yishui Xian', 'YIS');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1460, '371324', '苍山县', '371300', 'Cangshan Xian', 'CSH');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1461, '371325', '费　县', '371300', 'Fei Xian', 'FEI');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1462, '371326', '平邑县', '371300', 'Pingyi Xian', 'PYI');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1463, '371327', '莒南县', '371300', 'Junan Xian', 'JNB');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1464, '371328', '蒙阴县', '371300', 'Mengyin Xian', 'MYL');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1465, '371329', '临沭县', '371300', 'Linshu Xian', 'LSP');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1466, '371401', '市辖区', '371400', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1467, '371402', '德城区', '371400', 'Decheng Qu', 'DCD');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1468, '371421', '陵　县', '371400', 'Ling Xian', 'LXL');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1469, '371422', '宁津县', '371400', 'Ningjin Xian', 'NGJ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1470, '371423', '庆云县', '371400', 'Qingyun Xian', 'QYL');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1471, '371424', '临邑县', '371400', 'Linyi xian', 'LYM');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1472, '371425', '齐河县', '371400', 'Qihe Xian', 'QIH');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1473, '371426', '平原县', '371400', 'Pingyuan Xian', 'PYN');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1474, '371427', '夏津县', '371400', 'Xiajin Xian', 'XAJ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1475, '371428', '武城县', '371400', 'Wucheng Xian', 'WUC');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1476, '371481', '乐陵市', '371400', 'Leling Shi', 'LEL');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1477, '371482', '禹城市', '371400', 'Yucheng Shi', 'YCL');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1478, '371501', '市辖区', '371500', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1479, '371502', '东昌府区', '371500', 'Dongchangfu Qu', 'DCF');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1480, '371521', '阳谷县', '371500', 'Yanggu Xian ', 'YGU');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1481, '371522', '莘　县', '371500', 'Shen Xian', 'SHN');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1482, '371523', '茌平县', '371500', 'Chiping Xian ', 'CPG');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1483, '371524', '东阿县', '371500', 'Dong,e Xian', 'DGE');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1484, '371525', '冠　县', '371500', 'Guan Xian', 'GXL');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1485, '371526', '高唐县', '371500', 'Gaotang Xian', 'GTG');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1486, '371581', '临清市', '371500', 'Linqing Xian', 'LQS');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1505, '410101', '市辖区', '410100', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1506, '410102', '中原区', '410100', 'Zhongyuan Qu', 'ZYQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1507, '410103', '二七区', '410100', 'Erqi Qu', 'EQQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1508, '410104', '管城回族区', '410100', 'Guancheng Huizu Qu', 'GCH');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1509, '410105', '金水区', '410100', 'Jinshui Qu', 'JSU');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1510, '410106', '上街区', '410100', 'Shangjie Qu', 'SJE');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1511, '410108', '邙山区', '410100', 'Mangshan Qu', 'MSQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1512, '410122', '中牟县', '410100', 'Zhongmou Xian', 'ZMO');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1513, '410181', '巩义市', '410100', 'Gongyi Shi', 'GYI');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1514, '410182', '荥阳市', '410100', 'Xingyang Shi', 'XYK');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1515, '410183', '新密市', '410100', 'Xinmi Shi', 'XMI');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1516, '410184', '新郑市', '410100', 'Xinzheng Shi', 'XZG');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1517, '410185', '登封市', '410100', 'Dengfeng Shi', 'DFY');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1518, '410201', '市辖区', '410200', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1519, '410202', '龙亭区', '410200', 'Longting Qu', 'LTK');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1520, '410203', '顺河回族区', '410200', 'Shunhe Huizu Qu', 'SHR');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1521, '410204', '鼓楼区', '410200', 'Gulou Qu', 'GLK');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1522, '410205', '南关区', '410200', 'Nanguan Qu', 'NGK');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1523, '410211', '郊　区', '410200', 'Jiaoqu', 'JQK');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1524, '410221', '杞　县', '410200', 'Qi Xian', 'QIX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1525, '410222', '通许县', '410200', 'Tongxu Xian', 'TXY');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1526, '410223', '尉氏县', '410200', 'Weishi Xian', 'WSI');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1527, '410224', '开封县', '410200', 'Kaifeng Xian', 'KFX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1528, '410225', '兰考县', '410200', 'Lankao Xian', 'LKA');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1529, '410301', '市辖区', '410300', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1530, '410302', '老城区', '410300', 'Laocheng Qu', 'LLY');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1531, '410303', '西工区', '410300', 'Xigong Qu', 'XGL');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1532, '410304', '廛河回族区', '410300', 'Chanhe Huizu Qu', 'CHH');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1533, '410305', '涧西区', '410300', 'Jianxi Qu', 'JXL');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1534, '410306', '吉利区', '410300', 'Jili Qu', 'JLL');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1536, '410322', '孟津县', '410300', 'Mengjin Xian', 'MGJ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1537, '410323', '新安县', '410300', 'Xin,an Xian', 'XAX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1538, '410324', '栾川县', '410300', 'Luanchuan Xian', 'LCK');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1539, '410325', '嵩　县', '410300', 'Song Xian', 'SON');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1540, '410326', '汝阳县', '410300', 'Ruyang Xian', 'RUY');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1541, '410327', '宜阳县', '410300', 'Yiyang Xian', 'YYY');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1542, '410328', '洛宁县', '410300', 'Luoning Xian', 'LNI');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1543, '410329', '伊川县', '410300', 'Yichuan Xian', 'YCZ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1544, '410381', '偃师市', '410300', 'Yanshi Shi', 'YST');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1545, '410401', '市辖区', '410400', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1546, '410402', '新华区', '410400', 'Xinhua Qu', 'XHP');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1547, '410403', '卫东区', '410400', 'Weidong Qu', 'WDG');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1548, '410404', '石龙区', '410400', 'Shilong Qu', 'SIL');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1549, '410411', '湛河区', '410400', 'Zhanhe Qu', 'ZHQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1550, '410421', '宝丰县', '410400', 'Baofeng Xian', 'BFG');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1551, '410422', '叶　县', '410400', 'Ye Xian', 'YEX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1552, '410423', '鲁山县', '410400', 'Lushan Xian', 'LUS');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1553, '410425', '郏　县', '410400', 'Jia Xian', 'JXY');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1554, '410481', '舞钢市', '410400', 'Wugang Shi', 'WGY');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1555, '410482', '汝州市', '410400', 'Ruzhou Shi', 'RZO');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1556, '410501', '市辖区', '410500', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1557, '410502', '文峰区', '410500', 'Wenfeng Qu', 'WFQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1558, '410503', '北关区', '410500', 'Beiguan Qu', 'BGQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1561, '410522', '安阳县', '410500', 'Anyang Xian', 'AYX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1562, '410523', '汤阴县', '410500', 'Tangyin Xian', 'TYI');
commit;
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1563, '410526', '滑　县', '410500', 'Hua Xian', 'HUA');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1564, '410527', '内黄县', '410500', 'Neihuang Xian', 'NHG');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1565, '410581', '林州市', '410500', 'Linzhou Shi', 'LZY');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1566, '410601', '市辖区', '410600', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1567, '410602', '鹤山区', '410600', 'Heshan Qu', 'HSF');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1568, '410603', '山城区', '410600', 'Shancheng Qu', 'SCB');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1569, '410611', '淇滨区', '410600', 'Jiaoqu', 'JHB');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1570, '410621', '浚　县', '410600', 'Xun Xian', 'XUX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1571, '410622', '淇　县', '410600', 'Qi Xian', 'QXY');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1572, '410701', '市辖区', '410700', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1573, '410702', '红旗区', '410700', 'Hongqi Qu', 'HQQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1574, '410703', '卫滨区', '410700', 'Xinhua Qu', 'XHR');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1575, '410704', '凤泉区', '410700', 'Beizhan Qu', 'BZQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1576, '410711', '牧野区', '410700', 'Jiaoqu', 'JQX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1577, '410721', '新乡县', '410700', 'Xinxiang Xian', 'XXX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1578, '410724', '获嘉县', '410700', 'Huojia Xian', 'HOJ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1579, '410725', '原阳县', '410700', 'Yuanyang Xian', 'YYA');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1580, '410726', '延津县', '410700', 'Yanjin Xian', 'YJN');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1581, '410727', '封丘县', '410700', 'Fengqiu Xian', 'FQU');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1582, '410728', '长垣县', '410700', 'Changyuan Xian', 'CYU');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1583, '410781', '卫辉市', '410700', 'Weihui Shi', 'WHS');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1584, '410782', '辉县市', '410700', 'Huixian Shi', 'HXS');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1585, '410801', '市辖区', '410800', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1586, '410802', '解放区', '410800', 'Jiefang Qu', 'JFQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1587, '410803', '中站区', '410800', 'Zhongzhan Qu', 'ZZQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1588, '410804', '马村区', '410800', 'Macun Qu', 'MCQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1589, '410811', '山阳区', '410800', 'Shanyang Qu', 'SYC');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1590, '410821', '修武县', '410800', 'Xiuwu Xian', 'XUW');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1591, '410822', '博爱县', '410800', 'Bo,ai Xian', 'BOA');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1592, '410823', '武陟县', '410800', 'Wuzhi Xian', 'WZI');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1593, '410825', '温　县', '410800', 'Wen Xian', 'WEN');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1594, '410881', '济源市', '410800', 'Jiyuan Shi', 'JYY');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1595, '410882', '沁阳市', '410800', 'Qinyang Shi', 'QYS');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1596, '410883', '孟州市', '410800', 'Mengzhou Shi', 'MZO');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1597, '410901', '市辖区', '410900', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1598, '410902', '华龙区', '410900', 'Shiqu', 'SIQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1599, '410922', '清丰县', '410900', 'Qingfeng Xian', 'QFG');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1600, '410923', '南乐县', '410900', 'Nanle Xian', 'NLE');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1601, '410926', '范　县', '410900', 'Fan Xian', 'FAX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1602, '410927', '台前县', '410900', 'Taiqian Xian', 'TQN');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1603, '410928', '濮阳县', '410900', 'Puyang Xian', 'PUY');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1604, '411001', '市辖区', '411000', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1605, '411002', '魏都区', '411000', 'Weidu Qu', 'WED');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1606, '411023', '许昌县', '411000', 'Xuchang Xian', 'XUC');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1607, '411024', '鄢陵县', '411000', 'Yanling Xian', 'YLY');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1608, '411025', '襄城县', '411000', 'Xiangcheng Xian', 'XAC');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1609, '411081', '禹州市', '411000', 'Yuzhou Shi', 'YUZ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1610, '411082', '长葛市', '411000', 'Changge Shi', 'CGE');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1611, '411101', '市辖区', '411100', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1612, '411102', '源汇区', '411100', 'Yuanhui Qu', 'YHI');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1615, '411121', '舞阳县', '411100', 'Wuyang Xian', 'WYG');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1616, '411122', '临颍县', '411100', 'Linying Xian', 'LNY');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1617, '411201', '市辖区', '411200', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1618, '411202', '湖滨区', '411200', 'Hubin Qu', 'HBI');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1619, '411221', '渑池县', '411200', 'Mianchi Xian', 'MCI');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1620, '411222', '陕　县', '411200', 'Shan Xian', 'SHX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1621, '411224', '卢氏县', '411200', 'Lushi Xian', 'LUU');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1622, '411281', '义马市', '411200', 'Yima Shi', 'YMA');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1623, '411282', '灵宝市', '411200', 'Lingbao Shi', 'LBS');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1624, '411301', '市辖区', '411300', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1625, '411302', '宛城区', '411300', 'Wancheng Qu', 'WCN');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1626, '411303', '卧龙区', '411300', 'Wolong Qu', 'WOL');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1627, '411321', '南召县', '411300', 'Nanzhao Xian', 'NZO');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1628, '411322', '方城县', '411300', 'Fangcheng Xian', 'FCX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1629, '411323', '西峡县', '411300', 'Xixia Xian', 'XXY');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1630, '411324', '镇平县', '411300', 'Zhenping Xian', 'ZPX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1631, '411325', '内乡县', '411300', 'Neixiang Xian', 'NXG');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1632, '411326', '淅川县', '411300', 'Xichuan Xian', 'XCY');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1633, '411327', '社旗县', '411300', 'Sheqi Xian', 'SEQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1634, '411328', '唐河县', '411300', 'Tanghe Xian', 'TGH');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1635, '411329', '新野县', '411300', 'Xinye Xian', 'XYE');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1636, '411330', '桐柏县', '411300', 'Tongbai Xian', 'TBX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1637, '411381', '邓州市', '411300', 'Dengzhou Shi', 'DGZ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1638, '411401', '市辖区', '411400', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1639, '411402', '梁园区', '411400', 'Liangyuan Qu', 'LYY');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1640, '411403', '睢阳区', '411400', 'Suiyang Qu', 'SYA');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1641, '411421', '民权县', '411400', 'Minquan Xian', 'MQY');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1642, '411422', '睢　县', '411400', 'Sui Xian', 'SUI');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1643, '411423', '宁陵县', '411400', 'Ningling Xian', 'NGL');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1644, '411424', '柘城县', '411400', 'Zhecheng Xian', 'ZHC');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1645, '411425', '虞城县', '411400', 'Yucheng Xian', 'YUC');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1646, '411426', '夏邑县', '411400', 'Xiayi Xian', 'XAY');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1647, '411481', '永城市', '411400', 'Yongcheng Shi', 'YOC');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1648, '411501', '市辖区', '411500', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1649, '411502', '师河区', '411500', 'Shihe Qu', 'SHU');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1650, '411503', '平桥区', '411500', 'Pingqiao Qu', 'PQQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1651, '411521', '罗山县', '411500', 'Luoshan Xian', 'LSE');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1652, '411522', '光山县', '411500', 'Guangshan Xian', 'GSX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1653, '411523', '新　县', '411500', 'Xin Xian', 'XXI');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1654, '411524', '商城县', '411500', 'Shangcheng Xian', 'SCX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1655, '411525', '固始县', '411500', 'Gushi Xian', 'GSI');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1656, '411526', '潢川县', '411500', 'Huangchuan Xian', 'HCU');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1657, '411527', '淮滨县', '411500', 'Huaibin Xian', 'HBN');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1658, '411528', '息　县', '411500', 'Xi Xian', 'XIX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1681, '420101', '市辖区', '420100', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1682, '420102', '江岸区', '420100', 'Jiang,an Qu', 'JAA');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1683, '420103', '江汉区', '420100', 'Jianghan Qu', 'JHN');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1684, '420104', '乔口区', '420100', 'Qiaokou Qu', 'QKQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1685, '420105', '汉阳区', '420100', 'Hanyang Qu', 'HYA');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1686, '420106', '武昌区', '420100', 'Wuchang Qu', 'WCQ');
commit;
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1687, '420107', '青山区', '420100', 'Qingshan Qu', 'QSN');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1688, '420111', '洪山区', '420100', 'Hongshan Qu', 'HSQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1689, '420112', '东西湖区', '420100', 'Dongxihu Qu', 'DXH');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1690, '420113', '汉南区', '420100', 'Hannan Qu', 'HNQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1691, '420114', '蔡甸区', '420100', 'Caidian Qu', 'CDN');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1692, '420115', '江夏区', '420100', 'Jiangxia Qu', 'JXQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1693, '420116', '黄陂区', '420100', 'Huangpi Qu', 'HPI');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1694, '420117', '新洲区', '420100', 'Xinzhou Qu', 'XNZ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1695, '420201', '市辖区', '420200', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1696, '420202', '黄石港区', '420200', 'Huangshigang Qu', 'HSG');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1697, '420203', '西塞山区', '420200', 'Shihuiyao Qu', 'SHY');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1698, '420204', '下陆区', '420200', 'Xialu Qu', 'XAL');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1699, '420205', '铁山区', '420200', 'Tieshan Qu', 'TSH');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1700, '420222', '阳新县', '420200', 'Yangxin Xian', 'YXE');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1701, '420281', '大冶市', '420200', 'Daye Shi', 'DYE');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1702, '420301', '市辖区', '420300', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1703, '420302', '茅箭区', '420300', 'Maojian Qu', 'MJN');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1704, '420303', '张湾区', '420300', 'Zhangwan Qu', 'ZWQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1705, '420321', '郧　县', '420300', 'Yun Xian', 'YUN');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1706, '420322', '郧西县', '420300', 'Yunxi Xian', 'YNX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1707, '420323', '竹山县', '420300', 'Zhushan Xian', 'ZHS');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1708, '420324', '竹溪县', '420300', 'Zhuxi Xian', 'ZXX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1709, '420325', '房　县', '420300', 'Fang Xian', 'FAG');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1710, '420381', '丹江口市', '420300', 'Danjiangkou Shi', 'DJK');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1711, '420501', '市辖区', '420500', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1712, '420502', '西陵区', '420500', 'Xiling Qu', 'XLQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1713, '420503', '伍家岗区', '420500', 'Wujiagang Qu', 'WJG');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1714, '420504', '点军区', '420500', 'Dianjun Qu', 'DJN');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2409, '513221', '汶川县', '513200', 'Wenchuan Xian', 'WNC');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2410, '513222', '理　县', '513200', 'Li Xian', 'LXC');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2411, '513223', '茂　县', '513200', 'Mao Xian', 'MAO');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2412, '513224', '松潘县', '513200', 'Songpan Xian', 'SOP');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2413, '513225', '九寨沟县', '513200', 'Jiuzhaigou Xian', 'JZG');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2414, '513226', '金川县', '513200', 'Jinchuan Xian', 'JCH');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2415, '513227', '小金县', '513200', 'Xiaojin Xian', 'XJX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2416, '513228', '黑水县', '513200', 'Heishui Xian', 'HIS');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2417, '513229', '马尔康县', '513200', 'Barkam Xian', 'BAK');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2418, '513230', '壤塘县', '513200', 'Zamtang Xian', 'ZAM');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2419, '513231', '阿坝县', '513200', 'Aba(Ngawa) Xian', 'ABX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2420, '513232', '若尔盖县', '513200', 'ZoigeXian', 'ZOI');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2421, '513233', '红原县', '513200', 'Hongyuan Xian', 'HOY');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2422, '513321', '康定县', '513300', 'Kangding(Dardo) Xian', 'KDX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2423, '513322', '泸定县', '513300', 'Luding(Jagsamka) Xian', 'LUD');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2424, '513323', '丹巴县', '513300', 'Danba(Rongzhag) Xian', 'DBA');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2425, '513324', '九龙县', '513300', 'Jiulong(Gyaisi) Xian', 'JLC');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2426, '513325', '雅江县', '513300', 'Yajiang(Nyagquka) Xian', 'YAJ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2427, '513326', '道孚县', '513300', 'Dawu Xian', 'DAW');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2428, '513327', '炉霍县', '513300', 'Luhuo(Zhaggo) Xian', 'LUH');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2429, '513328', '甘孜县', '513300', 'Garze Xian', 'GRZ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2430, '513329', '新龙县', '513300', 'Xinlong(Nyagrong) Xian', 'XLG');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2431, '513330', '德格县', '513300', 'DegeXian', 'DEG');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2432, '513331', '白玉县', '513300', 'Baiyu Xian', 'BYC');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2433, '513332', '石渠县', '513300', 'Serxv Xian', 'SER');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2434, '513333', '色达县', '513300', 'Sertar Xian', 'STX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2435, '513334', '理塘县', '513300', 'Litang Xian', 'LIT');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2436, '513335', '巴塘县', '513300', 'Batang Xian', 'BTC');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2437, '513336', '乡城县', '513300', 'Xiangcheng(Qagcheng) Xian', 'XCC');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2438, '513337', '稻城县', '513300', 'Daocheng(Dabba) Xian', 'DCX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2439, '513338', '得荣县', '513300', 'Derong Xian', 'DER');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2440, '513401', '西昌市', '513400', 'Xichang Shi', 'XCA');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2441, '513422', '木里藏族自治县', '513400', 'Muli Zangzu Zizhixian', 'MLI');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2442, '513423', '盐源县', '513400', 'Yanyuan Xian', 'YYU');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2443, '513424', '德昌县', '513400', 'Dechang Xian', 'DEC');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2444, '513425', '会理县', '513400', 'Huili Xian', 'HLI');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2445, '513426', '会东县', '513400', 'Huidong Xian', 'HDG');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2446, '513427', '宁南县', '513400', 'Ningnan Xian', 'NIN');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2447, '513428', '普格县', '513400', 'Puge Xian', 'PGE');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2448, '513429', '布拖县', '513400', 'Butuo Xian', 'BTO');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2449, '513430', '金阳县', '513400', 'Jinyang Xian', 'JYW');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2450, '513431', '昭觉县', '513400', 'Zhaojue Xian', 'ZJE');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2451, '513432', '喜德县', '513400', 'Xide Xian', 'XDE');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2452, '513433', '冕宁县', '513400', 'Mianning Xian', 'MNG');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2453, '513434', '越西县', '513400', 'Yuexi Xian', 'YXC');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2454, '513435', '甘洛县', '513400', 'Ganluo Xian', 'GLO');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2455, '513436', '美姑县', '513400', 'Meigu Xian', 'MEG');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2456, '513437', '雷波县', '513400', 'Leibo Xian', 'LBX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2457, '520101', '市辖区', '520100', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2458, '520102', '南明区', '520100', 'Nanming Qu', 'NMQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2459, '520103', '云岩区', '520100', 'Yunyan Qu', 'YYQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2460, '520111', '花溪区', '520100', 'Huaxi Qu', 'HXI');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2461, '520112', '乌当区', '520100', 'Wudang Qu', 'WDQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2462, '520113', '白云区', '520100', 'Baiyun Qu', 'BYU');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2464, '520121', '开阳县', '520100', 'Kaiyang Xian', 'KYG');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2465, '520122', '息烽县', '520100', 'Xifeng Xian', 'XFX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2466, '520123', '修文县', '520100', 'Xiuwen Xian', 'XWX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2467, '520181', '清镇市', '520100', 'Qingzhen Shi', 'QZN');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2468, '520201', '钟山区', '520200', 'Zhongshan Qu', 'ZSQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2469, '520203', '六枝特区', '520200', 'Liuzhi Tequ', 'LZT');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2470, '520221', '水城县', '520200', 'Shuicheng Xian', 'SUC');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2472, '520301', '市辖区', '520300', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2473, '520302', '红花岗区', '520300', 'Honghuagang Qu', 'HHG');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2475, '520321', '遵义县', '520300', 'Zunyi Xian', 'ZYI');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2476, '520322', '桐梓县', '520300', 'Tongzi Xian', 'TZI');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2477, '520323', '绥阳县', '520300', 'Suiyang Xian', 'SUY');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2478, '520324', '正安县', '520300', 'Zhengyang Xian', 'ZAX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2479, '520325', '道真仡佬族苗族自治县', '520300', 'Daozhen Gelaozu Miaozu Zizhixian', 'DZN');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2480, '520326', '务川仡佬族苗族自治县', '520300', 'Wuchuan Gelaozu Miaozu Zizhixian', 'WCU');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2481, '520327', '凤冈县', '520300', 'Fenggang Xian', 'FGG');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2482, '520328', '湄潭县', '520300', 'Meitan Xian', 'MTN');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2483, '520329', '余庆县', '520300', 'Yuqing Xian', 'YUQ');
commit;
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2484, '520330', '习水县', '520300', 'Xishui Xian', 'XSI');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2485, '520381', '赤水市', '520300', 'Chishui Shi', 'CSS');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2486, '520382', '仁怀市', '520300', 'Renhuai Shi', 'RHS');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2494, '522201', '铜仁市', '522200', 'Tongren Shi', 'TRS');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2495, '522222', '江口县', '522200', 'Jiangkou Xian', 'JGK');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2496, '522223', '玉屏侗族自治县', '522200', 'Yuping Dongzu Zizhixian', 'YPG');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2497, '522224', '石阡县', '522200', 'Shiqian Xian', 'SQI');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2498, '522225', '思南县', '522200', 'Sinan Xian', 'SNA');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2499, '522226', '印江土家族苗族自治县', '522200', 'Yinjiang Tujiazu Miaozu Zizhixian', 'YJY');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2500, '522227', '德江县', '522200', 'Dejiang Xian', 'DEJ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2501, '522228', '沿河土家族自治县', '522200', 'Yanhe Tujiazu Zizhixian', 'YHE');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2502, '522229', '松桃苗族自治县', '522200', 'Songtao Miaozu Zizhixian', 'STM');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2503, '522230', '万山特区', '522200', 'Wanshan Tequ', 'WAS');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2504, '522301', '兴义市', '522300', 'Xingyi Shi', 'XYI');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2505, '522322', '兴仁县', '522300', 'Xingren Xian', 'XRN');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2506, '522323', '普安县', '522300', 'Pu,an Xian', 'PUA');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2507, '522324', '晴隆县', '522300', 'Qinglong Xian', 'QLG');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2508, '522325', '贞丰县', '522300', 'Zhenfeng Xian', 'ZFG');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2509, '522326', '望谟县', '522300', 'Wangmo Xian', 'WMO');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2510, '522327', '册亨县', '522300', 'Ceheng Xian', 'CEH');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2511, '522328', '安龙县', '522300', 'Anlong Xian', 'ALG');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2512, '522401', '毕节市', '522400', 'Bijie Shi', 'BJE');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2513, '522422', '大方县', '522400', 'Dafang Xian', 'DAF');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2514, '522423', '黔西县', '522400', 'Qianxi Xian', 'QNX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2515, '522424', '金沙县', '522400', 'Jinsha Xian', 'JSX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2516, '522425', '织金县', '522400', 'Zhijin Xian', 'ZJN');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2517, '522426', '纳雍县', '522400', 'Nayong Xian', 'NYG');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2518, '522427', '威宁彝族回族苗族自治县', '522400', 'Weining Yizu Huizu Miaozu Zizhixian', 'WNG');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2519, '522428', '赫章县', '522400', 'Hezhang Xian', 'HZA');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2520, '522601', '凯里市', '522600', 'Kaili Shi', 'KLS');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2521, '522622', '黄平县', '522600', 'Huangping Xian', 'HPN');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2522, '522623', '施秉县', '522600', 'Shibing Xian', 'SBG');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2523, '522624', '三穗县', '522600', 'Sansui Xian', 'SAS');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2524, '522625', '镇远县', '522600', 'Zhenyuan Xian', 'ZYX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2525, '522626', '岑巩县', '522600', 'Cengong Xian', 'CGX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2526, '522627', '天柱县', '522600', 'Tianzhu Xian', 'TZU');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2527, '522628', '锦屏县', '522600', 'Jinping Xian', 'JPX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2528, '522629', '剑河县', '522600', 'Jianhe Xian', 'JHE');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2529, '522630', '台江县', '522600', 'Taijiang Xian', 'TJX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2530, '522631', '黎平县', '522600', 'Liping Xian', 'LIP');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2531, '522632', '榕江县', '522600', 'Rongjiang Xian', 'RJG');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2532, '522633', '从江县', '522600', 'Congjiang Xian', 'COJ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2533, '522634', '雷山县', '522600', 'Leishan Xian', 'LSA');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2534, '522635', '麻江县', '522600', 'Majiang Xian', 'MAJ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2535, '522636', '丹寨县', '522600', 'Danzhai Xian', 'DZH');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2536, '522701', '都匀市', '522700', 'Duyun Shi', 'DUY');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2537, '522702', '福泉市', '522700', 'Fuquan Shi', 'FQN');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2538, '522722', '荔波县', '522700', 'Libo Xian', 'LBO');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2539, '522723', '贵定县', '522700', 'Guiding Xian', 'GDG');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2540, '522725', '瓮安县', '522700', 'Weng,an Xian', 'WGA');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2541, '522726', '独山县', '522700', 'Dushan Xian', 'DSX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2542, '522727', '平塘县', '522700', 'Pingtang Xian', 'PTG');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2543, '522728', '罗甸县', '522700', 'Luodian Xian', 'LOD');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2544, '522729', '长顺县', '522700', 'Changshun Xian', 'CSU');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2545, '522730', '龙里县', '522700', 'Longli Xian', 'LLI');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2546, '522731', '惠水县', '522700', 'Huishui Xian', 'HUS');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2547, '522732', '三都水族自治县', '522700', 'Sandu Suizu Zizhixian', 'SDU');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2548, '530101', '市辖区', '530100', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2549, '530102', '五华区', '530100', 'Wuhua Qu', 'WHA');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2550, '530103', '盘龙区', '530100', 'Panlong Qu', 'PLQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2551, '530111', '官渡区', '530100', 'Guandu Qu', 'GDU');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2552, '530112', '西山区', '530100', 'Xishan Qu', 'XSN');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2553, '530113', '东川区', '530100', 'Dongchuan Qu', 'DCU');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2554, '530121', '呈贡县', '530100', 'Chenggong Xian', 'CGD');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2555, '530122', '晋宁县', '530100', 'Jinning Xian', 'JND');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2556, '530124', '富民县', '530100', 'Fumin Xian', 'FMN');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2557, '530125', '宜良县', '530100', 'Yiliang Xian', 'YIL');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2558, '530126', '石林彝族自治县', '530100', 'Shilin Yizu Zizhixian', 'SLY');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2559, '530127', '嵩明县', '530100', 'Songming Xian', 'SMI');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2560, '530128', '禄劝彝族苗族自治县', '530100', 'Luchuan Yizu Miaozu Zizhixian', 'LUC');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2561, '530129', '寻甸回族彝族自治县', '530100', 'Xundian Huizu Yizu Zizhixian', 'XDN');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2562, '530181', '安宁市', '530100', 'Anning Shi', 'ANG');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2563, '530301', '市辖区', '530300', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2564, '530302', '麒麟区', '530300', 'Qilin Xian', 'QLQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2565, '530321', '马龙县', '530300', 'Malong Xian', 'MLO');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2566, '530322', '陆良县', '530300', 'Luliang Xian', 'LLX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2567, '530323', '师宗县', '530300', 'Shizong Xian', 'SZD');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2568, '530324', '罗平县', '530300', 'Luoping Xian', 'LPX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2569, '530325', '富源县', '530300', 'Fuyuan Xian', 'FYD');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2570, '530326', '会泽县', '530300', 'Huize Xian', 'HUZ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2571, '530328', '沾益县', '530300', 'Zhanyi Xian', 'ZYD');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2572, '530381', '宣威市', '530300', 'Xuanwei Shi', 'XWS');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2573, '530401', '市辖区', '530400', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2574, '530402', '红塔区', '530400', 'Hongta Qu', 'HTA');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2575, '530421', '江川县', '530400', 'Jiangchuan Xian', 'JGC');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2576, '530422', '澄江县', '530400', 'Chengjiang Xian', 'CGJ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2577, '530423', '通海县', '530400', 'Tonghai Xian', 'THI');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2578, '530424', '华宁县', '530400', 'Huaning Xian', 'HND');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2579, '530425', '易门县', '530400', 'Yimen Xian', 'YMD');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2580, '530426', '峨山彝族自治县', '530400', 'Eshan Yizu Zizhixian', 'ESN');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2581, '530427', '新平彝族傣族自治县', '530400', 'Xinping Yizu Daizu Zizhixian', 'XNP');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2582, '530428', '元江哈尼族彝族傣族自治县', '530400', 'Yuanjiang Hanizu Yizu Daizu Zizhixian', 'YJA');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2627, '532301', '楚雄市', '532300', 'Chuxiong Shi', 'CXS');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2628, '532322', '双柏县', '532300', 'Shuangbai Xian', 'SBA');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2629, '532323', '牟定县', '532300', 'Mouding Xian', 'MDI');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2630, '532324', '南华县', '532300', 'Nanhua Xian', 'NHA');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2631, '532325', '姚安县', '532300', 'Yao,an Xian', 'YOA');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2632, '532326', '大姚县', '532300', 'Dayao Xian', 'DYO');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2633, '532327', '永仁县', '532300', 'Yongren Xian', 'YRN');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2634, '532328', '元谋县', '532300', 'Yuanmou Xian', 'YMO');
commit;
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2635, '532329', '武定县', '532300', 'Wuding Xian', 'WDX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2636, '532331', '禄丰县', '532300', 'Lufeng Xian', 'LFX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2637, '532501', '个旧市', '532500', 'Gejiu Shi', 'GJU');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2638, '532502', '开远市', '532500', 'Kaiyuan Shi', 'KYD');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2639, '532522', '蒙自县', '532500', 'Mengzi Xian', 'MZI');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2640, '532523', '屏边苗族自治县', '532500', 'Pingbian Miaozu Zizhixian', 'PBN');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2641, '532524', '建水县', '532500', 'Jianshui Xian', 'JSD');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2642, '532525', '石屏县', '532500', 'Shiping Xian', 'SPG');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2643, '532526', '弥勒县', '532500', 'Mile Xian', 'MIL');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2644, '532527', '泸西县', '532500', 'Luxi Xian', 'LXD');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2645, '532528', '元阳县', '532500', 'Yuanyang Xian', 'YYD');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2646, '532529', '红河县', '532500', 'Honghe Xian', 'HHX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2647, '532530', '金平苗族瑶族傣族自治县', '532500', 'Jinping Miaozu Yaozu Daizu Zizhixian', 'JNP');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2648, '532531', '绿春县', '532500', 'Lvchun Xian', 'LCX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2649, '532532', '河口瑶族自治县', '532500', 'Hekou Yaozu Zizhixian', 'HKM');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2650, '532621', '文山县', '532600', 'Wenshan Xian', 'WES');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2651, '532622', '砚山县', '532600', 'Yanshan Xian', 'YSD');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2652, '532623', '西畴县', '532600', 'Xichou Xian', 'XIC');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2653, '532624', '麻栗坡县', '532600', 'Malipo Xian', 'MLP');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2654, '532625', '马关县', '532600', 'Maguan Xian', 'MGN');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2655, '532626', '丘北县', '532600', 'Qiubei Xian', 'QBE');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2656, '532627', '广南县', '532600', 'Guangnan Xian', 'GGN');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2657, '532628', '富宁县', '532600', 'Funing Xian', 'FND');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2658, '532801', '景洪市', '532800', 'Jinghong Shi', 'JHG');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2659, '532822', '勐海县', '532800', 'Menghai Xian', 'MHI');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2660, '532823', '勐腊县', '532800', 'Mengla Xian', 'MLA');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2661, '532901', '大理市', '532900', 'Dali Shi', 'DLS');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2662, '532922', '漾濞彝族自治县', '532900', 'Yangbi Yizu Zizhixian', 'YGB');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2663, '532923', '祥云县', '532900', 'Xiangyun Xian', 'XYD');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2664, '532924', '宾川县', '532900', 'Binchuan Xian', 'BCD');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2665, '532925', '弥渡县', '532900', 'Midu Xian', 'MDU');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2666, '532926', '南涧彝族自治县', '532900', 'Nanjian Yizu Zizhixian', 'NNJ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2667, '532927', '巍山彝族回族自治县', '532900', 'Weishan Yizu Huizu Zizhixian', 'WSY');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2668, '532928', '永平县', '532900', 'Yongping Xian', 'YPX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2669, '532929', '云龙县', '532900', 'Yunlong Xian', 'YLO');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2670, '532930', '洱源县', '532900', 'Eryuan Xian', 'EYN');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2671, '532931', '剑川县', '532900', 'Jianchuan Xian', 'JIC');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2672, '532932', '鹤庆县', '532900', 'Heqing Xian', 'HQG');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2673, '533102', '瑞丽市', '533100', 'Ruili Shi', 'RUI');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2674, '533103', '潞西市', '533100', 'Luxi Shi', 'LXS');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2675, '533122', '梁河县', '533100', 'Lianghe Xian', 'LHD');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2676, '533123', '盈江县', '533100', 'Yingjiang Xian', 'YGJ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2677, '533124', '陇川县', '533100', 'Longchuan Xian', 'LCN');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2678, '533321', '泸水县', '533300', 'Lushui Xian', 'LSX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2679, '533323', '福贡县', '533300', 'Fugong Xian', 'FGO');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2680, '533324', '贡山独龙族怒族自治县', '533300', 'Gongshan Dulongzu Nuzu Zizhixian', 'GSN');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2681, '533325', '兰坪白族普米族自治县', '533300', 'Lanping Baizu Pumizu Zizhixian', 'LPG');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2682, '533421', '香格里拉县', '533400', 'Zhongdian Xian', 'ZDX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2683, '533422', '德钦县', '533400', 'Deqen Xian', 'DQN');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2684, '533423', '维西傈僳族自治县', '533400', 'Weixi Lisuzu Zizhixian', 'WXI');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2685, '540101', '市辖区', '540100', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2686, '540102', '城关区', '540100', 'Chengguang Qu', 'CGN');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2687, '540121', '林周县', '540100', 'Lhvnzhub Xian', 'LZB');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2688, '540122', '当雄县', '540100', 'Damxung Xian', 'DAM');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2689, '540123', '尼木县', '540100', 'Nyemo Xian', 'NYE');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2690, '540124', '曲水县', '540100', 'Qvxv Xian', 'QUX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2691, '540125', '堆龙德庆县', '540100', 'Doilungdeqen Xian', 'DOI');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2692, '540126', '达孜县', '540100', 'Dagze Xian', 'DAG');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2693, '540127', '墨竹工卡县', '540100', 'Maizhokunggar Xian', 'MAI');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2694, '542121', '昌都县', '542100', 'Qamdo Xian', 'QAX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2695, '542122', '江达县', '542100', 'Jomda Xian', 'JOM');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2696, '542123', '贡觉县', '542100', 'Konjo Xian', 'KON');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2697, '542124', '类乌齐县', '542100', 'Riwoqe Xian', 'RIW');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2698, '542125', '丁青县', '542100', 'Dengqen Xian', 'DEN');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2699, '542126', '察雅县', '542100', 'Chagyab Xian', 'CHA');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2700, '542127', '八宿县', '542100', 'Baxoi Xian', 'BAX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2701, '542128', '左贡县', '542100', 'Zogang Xian', 'ZOX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2702, '542129', '芒康县', '542100', 'Mangkam Xian', 'MAN');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2703, '542132', '洛隆县', '542100', 'Lhorong Xian', 'LHO');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2704, '542133', '边坝县', '542100', 'Banbar Xian', 'BAN');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2705, '542221', '乃东县', '542200', 'Nedong Xian', 'NED');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2706, '542222', '扎囊县', '542200', 'Chanang(Chatang) Xian', 'CNG');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2707, '542223', '贡嘎县', '542200', 'Gonggar Xian', 'GON');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2708, '542224', '桑日县', '542200', 'Sangri Xian', 'SRI');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2709, '542225', '琼结县', '542200', 'Qonggyai Xian', 'QON');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2710, '542226', '曲松县', '542200', 'Qusum Xian', 'QUS');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2711, '542227', '措美县', '542200', 'Comai Xian', 'COM');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2712, '542228', '洛扎县', '542200', 'Lhozhag Xian', 'LHX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2713, '542229', '加查县', '542200', 'Gyaca Xian', 'GYA');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2714, '542231', '隆子县', '542200', 'Lhvnze Xian', 'LHZ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2715, '542232', '错那县', '542200', 'Cona Xian', 'CON');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2716, '542233', '浪卡子县', '542200', 'Nagarze Xian', 'NAX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2717, '542301', '日喀则市', '542300', 'Xigaze Shi', 'XIG');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2718, '542322', '南木林县', '542300', 'Namling Xian', 'NAM');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2719, '542323', '江孜县', '542300', 'Gyangze Xian', 'GYZ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2720, '542324', '定日县', '542300', 'Tingri Xian', 'TIN');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2721, '542325', '萨迦县', '542300', 'Sa,gya Xian', 'SGX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2722, '542326', '拉孜县', '542300', 'Lhaze Xian', 'LAZ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2723, '542327', '昂仁县', '542300', 'Ngamring Xian', 'NGA');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2724, '542328', '谢通门县', '542300', 'Xaitongmoin Xian', 'XTM');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2725, '542329', '白朗县', '542300', 'Bainang Xian', 'BAI');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2726, '542330', '仁布县', '542300', 'Rinbung Xian', 'RIN');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2727, '542331', '康马县', '542300', 'Kangmar Xian', 'KAN');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2728, '542332', '定结县', '542300', 'Dinggye Xian', 'DIN');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2729, '542333', '仲巴县', '542300', 'Zhongba Xian', 'ZHB');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2730, '542334', '亚东县', '542300', 'Yadong(Chomo) Xian', 'YDZ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2731, '542335', '吉隆县', '542300', 'Gyirong Xian', 'GIR');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2732, '542336', '聂拉木县', '542300', 'Nyalam Xian', 'NYA');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2733, '542337', '萨嘎县', '542300', 'Saga Xian', 'SAG');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2734, '542338', '岗巴县', '542300', 'Gamba Xian', 'GAM');
commit;
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2735, '542421', '那曲县', '542400', 'Nagqu Xian', 'NAG');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2736, '542422', '嘉黎县', '542400', 'Lhari Xian', 'LHR');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2737, '542423', '比如县', '542400', 'Biru Xian', 'BRU');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2738, '542424', '聂荣县', '542400', 'Nyainrong Xian', 'NRO');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2739, '542425', '安多县', '542400', 'Amdo Xian', 'AMD');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2740, '542426', '申扎县', '542400', 'Xainza Xian', 'XZX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2741, '542427', '索　县', '542400', 'Sog Xian', 'SOG');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2742, '542428', '班戈县', '542400', 'Bangoin Xian', 'BGX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2743, '542429', '巴青县', '542400', 'Baqen Xian', 'BQE');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2744, '542430', '尼玛县', '542400', 'Nyima Xian', 'NYX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2745, '542521', '普兰县', '542500', 'Burang Xian', 'BUR');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2746, '542522', '札达县', '542500', 'Zanda Xian', 'ZAN');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2747, '542523', '噶尔县', '542500', 'Gar Xian', 'GAR');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2748, '542524', '日土县', '542500', 'Rutog Xian', 'RUT');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2749, '542525', '革吉县', '542500', 'Ge,gyai Xian', 'GEG');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2750, '542526', '改则县', '542500', 'Gerze Xian', 'GER');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2751, '542527', '措勤县', '542500', 'Coqen Xian', 'COQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2752, '542621', '林芝县', '542600', 'Nyingchi Xian', 'NYI');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2753, '542622', '工布江达县', '542600', 'Gongbo,gyamda Xian', 'GOX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2754, '542623', '米林县', '542600', 'Mainling Xian', 'MAX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2755, '542624', '墨脱县', '542600', 'Metog Xian', 'MET');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2756, '542625', '波密县', '542600', 'Bomi(Bowo) Xian', 'BMI');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2757, '542626', '察隅县', '542600', 'Zayv Xian', 'ZAY');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2758, '542627', '朗　县', '542600', 'Nang Xian', 'NGX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2759, '610101', '市辖区', '610100', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2760, '610102', '新城区', '610100', 'Xincheng Qu', 'XCK');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2761, '610103', '碑林区', '610100', 'Beilin Qu', 'BLQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2762, '610104', '莲湖区', '610100', 'Lianhu Qu', 'LHU');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2763, '610111', '灞桥区', '610100', 'Baqiao Qu', 'BQQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2764, '610112', '未央区', '610100', 'Weiyang Qu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2765, '610113', '雁塔区', '610100', 'Yanta Qu', 'YTA');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2766, '610114', '阎良区', '610100', 'Yanliang Qu', 'YLQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2767, '610115', '临潼区', '610100', 'Lintong Qu', 'LTG');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2769, '610122', '蓝田县', '610100', 'Lantian Xian', 'LNT');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2770, '610124', '周至县', '610100', 'Zhouzhi Xian', 'ZOZ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2771, '610125', '户　县', '610100', 'Hu Xian', 'HUX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2772, '610126', '高陵县', '610100', 'Gaoling Xian', 'GLS');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2773, '610201', '市辖区', '610200', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1856, '430682', '临湘市', '430600', 'Linxiang Shi', 'LXY');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1857, '430701', '市辖区', '430700', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1858, '430702', '武陵区', '430700', 'Wuling Qu', 'WLQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1859, '430703', '鼎城区', '430700', 'Dingcheng Qu', 'DCE');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1860, '430721', '安乡县', '430700', 'Anxiang Xian', 'AXG');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1861, '430722', '汉寿县', '430700', 'Hanshou Xian', 'HSO');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1862, '430723', '澧　县', '430700', 'Li Xian', 'LXX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1863, '430724', '临澧县', '430700', 'Linli Xian', 'LNL');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1864, '430725', '桃源县', '430700', 'Taoyuan Xian', 'TOY');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1865, '430726', '石门县', '430700', 'Shimen Xian', 'SHM');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1866, '430781', '津市市', '430700', 'Jinshi Shi', 'JSS');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1867, '430801', '市辖区', '430800', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1868, '430802', '永定区', '430800', 'Yongding Qu', 'YDQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1869, '430811', '武陵源区', '430800', 'Wulingyuan Qu', 'WLY');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1870, '430821', '慈利县', '430800', 'Cili Xian', 'CLI');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1871, '430822', '桑植县', '430800', 'Sangzhi Xian', 'SZT');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1872, '430901', '市辖区', '430900', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1873, '430902', '资阳区', '430900', 'Ziyang Qu', 'ZYC');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1874, '430903', '赫山区', '430900', 'Heshan Qu', 'HSY');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1875, '430921', '南　县', '430900', 'Nan Xian', 'NXN');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1876, '430922', '桃江县', '430900', 'Taojiang Xian', 'TJG');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1877, '430923', '安化县', '430900', 'Anhua Xian', 'ANH');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1878, '430981', '沅江市', '430900', 'Yuanjiang Shi', 'YJS');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1879, '431001', '市辖区', '431000', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1880, '431002', '北湖区', '431000', 'Beihu Qu', 'BHQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1882, '431021', '桂阳县', '431000', 'Guiyang Xian', 'GYX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1883, '431022', '宜章县', '431000', 'yizhang Xian', 'YZA');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1884, '431023', '永兴县', '431000', 'Yongxing Xian', 'YXX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1885, '431024', '嘉禾县', '431000', 'Jiahe Xian', 'JAH');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1886, '431025', '临武县', '431000', 'Linwu Xian', 'LWX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1887, '431026', '汝城县', '431000', 'Rucheng Xian', 'RCE');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1888, '431027', '桂东县', '431000', 'Guidong Xian', 'GDO');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1889, '431028', '安仁县', '431000', 'Anren Xian', 'ARN');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1890, '431081', '资兴市', '431000', 'Zixing Shi', 'ZXG');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1891, '431101', '市辖区', '431100', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1892, '431102', '芝山区', '431100', 'Zhishan Qu', 'ZSY');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1893, '431103', '冷水滩区', '431100', 'Lengshuitan Qu', 'LST');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1894, '431121', '祁阳县', '431100', 'Qiyang Xian', 'QJY');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1895, '431122', '东安县', '431100', 'Dong,an Xian', 'DOA');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1896, '431123', '双牌县', '431100', 'Shuangpai Xian', 'SPA');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1897, '431124', '道　县', '431100', 'Dao Xian', 'DAO');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1898, '431125', '江永县', '431100', 'Jiangyong Xian', 'JYD');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1899, '431126', '宁远县', '431100', 'Ningyuan Xian', 'NYN');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1900, '431127', '蓝山县', '431100', 'Lanshan Xian', 'LNS');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1901, '431128', '新田县', '431100', 'Xintian Xian', 'XTN');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1902, '431129', '江华瑶族自治县', '431100', 'Jianghua Yaozu Zizhixian', 'JHX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1903, '431201', '市辖区', '431200', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1904, '431202', '鹤城区', '431200', 'Hecheng Qu', 'HCG');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1905, '431221', '中方县', '431200', 'Zhongfang Xian', 'ZFX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1906, '431222', '沅陵县', '431200', 'Yuanling Xian', 'YNL');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1907, '431223', '辰溪县', '431200', 'Chenxi Xian', 'CXX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1908, '431224', '溆浦县', '431200', 'Xupu Xian', 'XUP');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1909, '431225', '会同县', '431200', 'Huitong Xian', 'HTG');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1910, '431226', '麻阳苗族自治县', '431200', 'Mayang Miaozu Zizhixian', 'MYX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1911, '431227', '新晃侗族自治县', '431200', 'Xinhuang Dongzu Zizhixian', 'XHD');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1912, '431228', '芷江侗族自治县', '431200', 'Zhijiang Dongzu Zizhixian', 'ZJX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1913, '431229', '靖州苗族侗族自治县', '431200', 'Jingzhou Miaozu Dongzu Zizhixian', 'JZO');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1914, '431230', '通道侗族自治县', '431200', 'Tongdao Dongzu Zizhixian', 'TDD');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1915, '431281', '洪江市', '431200', 'Hongjiang Shi', 'HGJ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1922, '433101', '吉首市', '433100', 'Jishou Shi', 'JSO');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1923, '433122', '泸溪县', '433100', 'Luxi Xian', 'LXW');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1924, '433123', '凤凰县', '433100', 'Fenghuang Xian', 'FHX');
commit;
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1925, '433124', '花垣县', '433100', 'Huayuan Xian', 'HYH');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1926, '433125', '保靖县', '433100', 'Baojing Xian', 'BJG');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1927, '433126', '古丈县', '433100', 'Guzhang Xian', 'GZG');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1928, '433127', '永顺县', '433100', 'Yongshun Xian', 'YSF');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1929, '433130', '龙山县', '433100', 'Longshan Xian', 'LSR');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1964, '440404', '金湾区', '440400', 'Jinwan Qu', 'JW Q');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1930, '440101', '市辖区', '440100', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1931, '440102', '东山区', '440100', 'Dongshan Qu', 'DSG');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1932, '440103', '荔湾区', '440100', 'Liwan Qu', 'LWQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1933, '440104', '越秀区', '440100', 'Yuexiu Qu', 'YXU');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1934, '440105', '海珠区', '440100', 'Haizhu Qu', 'HZU');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1935, '440106', '天河区', '440100', 'Tianhe Qu', 'THQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1936, '440107', '芳村区', '440100', 'Fangcun Qu', 'FCN');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1937, '440111', '白云区', '440100', 'Baiyun Qu', 'BYN');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1938, '440112', '黄埔区', '440100', 'Huangpu Qu', 'HPU');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1939, '440113', '番禺区', '440100', 'Panyu Qu', 'PNY');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1940, '440114', '花都区', '440100', 'Huadu Qu', 'HDU');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1941, '440183', '增城市', '440100', 'Zengcheng Shi', 'ZEC');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1942, '440184', '从化市', '440100', 'Conghua Shi', 'CNH');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1943, '440201', '市辖区', '440200', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1944, '440203', '武江区', '440200', 'Wujiang Qu', 'WJQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1945, '440204', '浈江区', '440200', 'Zhenjiang Qu', 'ZJQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1947, '440222', '始兴县', '440200', 'Shixing Xian', 'SXX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1948, '440224', '仁化县', '440200', 'Renhua Xian', 'RHA');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1949, '440229', '翁源县', '440200', 'Wengyuan Xian', 'WYN');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1950, '440232', '乳源瑶族自治县', '440200', 'Ruyuan Yaozu Zizhixian', 'RYN');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1951, '440233', '新丰县', '440200', 'Xinfeng Xian', 'XFY');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1952, '440281', '乐昌市', '440200', 'Lechang Shi', 'LEC');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1953, '440282', '南雄市', '440200', 'Nanxiong Shi', 'NXS');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1954, '440301', '市辖区', '440300', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1955, '440303', '罗湖区', '440300', 'Luohu Qu', 'LHQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1956, '440304', '福田区', '440300', 'Futian Qu', 'FTN');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1957, '440305', '南山区', '440300', 'Nanshan Qu', 'NSN');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1958, '440306', '宝安区', '440300', 'Bao,an Qu', 'BAQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1959, '440307', '龙岗区', '440300', 'Longgang Qu', 'LGG');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1960, '440308', '盐田区', '440300', 'Yan Tian Qu', 'YTQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1961, '440401', '市辖区', '440400', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1962, '440402', '香洲区', '440400', 'Xiangzhou Qu', 'XZQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1963, '440403', '斗门区', '440400', 'Doumen Qu', 'DOU');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1965, '440501', '市辖区', '440500', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1970, '440514', '潮南区', '440500', 'Chaonan Qu', 'CN Q');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1966, '440507', '龙湖区', '440500', 'Longhu Qu', 'LHH');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1967, '440511', '金平区', '440500', 'Jinping Qu', 'JPQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1999, '440903', '茂港区', '440900', 'Maogang Qu', 'MGQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1972, '440523', '南澳县', '440500', 'Nan,ao Xian', 'NAN');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1969, '440513', '潮阳区', '440500', 'Chaoyang  Qu', 'CHY');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1971, '440515', '澄海区', '440500', 'Chenghai QU', 'CHS');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1973, '440601', '市辖区', '440600', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1974, '440604', '禅城区', '440600', 'Chancheng Qu', 'CC Q');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1976, '440606', '顺德区', '440600', 'Shunde Shi', 'SUD');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1975, '440605', '南海区', '440600', 'Nanhai Shi', 'NAH');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1977, '440607', '三水区', '440600', 'Sanshui Shi', 'SJQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1978, '440608', '高明区', '440600', 'Gaoming Shi', 'GOM');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1979, '440701', '市辖区', '440700', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1980, '440703', '蓬江区', '440700', 'Pengjiang Qu', 'PJJ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1981, '440704', '江海区', '440700', 'Jianghai Qu', 'JHI');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1983, '440781', '台山市', '440700', 'Taishan Shi', 'TSS');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1982, '440705', '新会区', '440700', 'Xinhui Shi', 'XIN');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1984, '440783', '开平市', '440700', 'Kaiping Shi', 'KPS');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1985, '440784', '鹤山市', '440700', 'Heshan Shi', 'HES');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1986, '440785', '恩平市', '440700', 'Enping Shi', 'ENP');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1987, '440801', '市辖区', '440800', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1988, '440802', '赤坎区', '440800', 'Chikan Qu', 'CKQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1989, '440803', '霞山区', '440800', 'Xiashan Qu', 'XAS');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1990, '440804', '坡头区', '440800', 'Potou Qu', 'PTU');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1991, '440811', '麻章区', '440800', 'Mazhang Qu', 'MZQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1992, '440823', '遂溪县', '440800', 'Suixi Xian', 'SXI');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1993, '440825', '徐闻县', '440800', 'Xuwen Xian', 'XWN');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1994, '440881', '廉江市', '440800', 'Lianjiang Shi', 'LJS');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1995, '440882', '雷州市', '440800', 'Leizhou Shi', 'LEZ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1996, '440883', '吴川市', '440800', 'Wuchuan Shi', 'WCS');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1997, '440901', '市辖区', '440900', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1998, '440902', '茂南区', '440900', 'Maonan Qu', 'MNQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2000, '440923', '电白县', '440900', 'Dianbai Xian', 'DBI');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2001, '440981', '高州市', '440900', 'Gaozhou Shi', 'GZO');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2002, '440982', '化州市', '440900', 'Huazhou Shi', 'HZY');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2003, '440983', '信宜市', '440900', 'Xinyi Shi', 'XYY');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2004, '441201', '市辖区', '441200', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2005, '441202', '端州区', '441200', 'Duanzhou Qu', 'DZQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2006, '441203', '鼎湖区', '441200', 'Dinghu Qu', 'DGH');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2007, '441223', '广宁县', '441200', 'Guangning Xian', 'GNG');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2008, '441224', '怀集县', '441200', 'Huaiji Xian', 'HJX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2009, '441225', '封开县', '441200', 'Fengkai Xian', 'FKX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2010, '441226', '德庆县', '441200', 'Deqing Xian', 'DQY');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2011, '441283', '高要市', '441200', 'Gaoyao Xian', 'GYY');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2012, '441284', '四会市', '441200', 'Sihui Shi', 'SHI');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2013, '441301', '市辖区', '441300', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2014, '441302', '惠城区', '441300', 'Huicheng Qu', 'HCQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2016, '441322', '博罗县', '441300', 'Boluo Xian', 'BOL');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2017, '441323', '惠东县', '441300', 'Huidong Xian', 'HID');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2018, '441324', '龙门县', '441300', 'Longmen Xian', 'LMN');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2015, '441303', '惠阳区', '441300', 'Huiyang Shi', 'HUY');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2019, '441401', '市辖区', '441400', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2020, '441402', '梅江区', '441400', 'Meijiang Qu', 'MJQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2021, '441421', '梅　县', '441400', 'Mei Xian', 'MEX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2022, '441422', '大埔县', '441400', 'Dabu Xian', 'DBX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2023, '441423', '丰顺县', '441400', 'Fengshun Xian', 'FES');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2024, '441424', '五华县', '441400', 'Wuhua Xian', 'WHY');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2025, '441426', '平远县', '441400', 'Pingyuan Xian', 'PYY');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2026, '441427', '蕉岭县', '441400', 'Jiaoling Xian', 'JOL');
commit;
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2027, '441481', '兴宁市', '441400', 'Xingning Shi', 'XNG');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2028, '441501', '市辖区', '441500', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2029, '441502', '城　区', '441500', 'Chengqu', 'CQS');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2030, '441521', '海丰县', '441500', 'Haifeng Xian', 'HIF');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2031, '441523', '陆河县', '441500', 'Luhe Xian', 'LHY');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2032, '441581', '陆丰市', '441500', 'Lufeng Shi', 'LUF');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2033, '441601', '市辖区', '441600', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2034, '441602', '源城区', '441600', 'Yuancheng Qu', 'YCQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2035, '441621', '紫金县', '441600', 'Zijin Xian', 'ZJY');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2036, '441622', '龙川县', '441600', 'Longchuan Xian', 'LCY');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2037, '441623', '连平县', '441600', 'Lianping Xian', 'LNP');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2038, '441624', '和平县', '441600', 'Heping Xian', 'HPY');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2039, '441625', '东源县', '441600', 'Dongyuan Xian', 'DYN');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2040, '441701', '市辖区', '441700', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2041, '441702', '江城区', '441700', 'Jiangcheng Qu', 'JCQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2042, '441721', '阳西县', '441700', 'Yangxi Xian', 'YXY');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2043, '441723', '阳东县', '441700', 'Yangdong Xian', 'YGD');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2044, '441781', '阳春市', '441700', 'Yangchun Shi', 'YCU');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2045, '441801', '市辖区', '441800', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2046, '441802', '清城区', '441800', 'Qingcheng Qu', 'QCQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2047, '441821', '佛冈县', '441800', 'Fogang Xian', 'FGY');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2048, '441823', '阳山县', '441800', 'Yangshan Xian', 'YSN');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2049, '441825', '连山壮族瑶族自治县', '441800', 'Lianshan Zhuangzu Yaozu Zizhixian', 'LSZ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2050, '441826', '连南瑶族自治县', '441800', 'Lianshan Yaozu Zizhixian', 'LNN');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2051, '441827', '清新县', '441800', 'Qingxin Xian', 'QGX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2052, '441881', '英德市', '441800', 'Yingde Shi', 'YDS');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2053, '441882', '连州市', '441800', 'Lianzhou Shi', 'LZO');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2054, '445101', '市辖区', '445100', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2055, '445102', '湘桥区', '445100', 'Xiangqiao Qu', 'XQO');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2056, '445121', '潮安县', '445100', 'Chao,an Xian', 'CAY');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2057, '445122', '饶平县', '445100', 'Raoping Xian', 'RPG');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2058, '445201', '市辖区', '445200', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2059, '445202', '榕城区', '445200', 'Rongcheng Qu', 'RCH');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2060, '445221', '揭东县', '445200', 'Jiedong Xian', 'JDX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2061, '445222', '揭西县', '445200', 'Jiexi Xian', 'JEX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2062, '445224', '惠来县', '445200', 'Huilai Xian', 'HLY');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2063, '445281', '普宁市', '445200', 'Puning Shi', 'PNG');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2064, '445301', '市辖区', '445300', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2065, '445302', '云城区', '445300', 'Yuncheng Qu', 'YYF');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2066, '445321', '新兴县', '445300', 'Xinxing Xian', 'XNX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2067, '445322', '郁南县', '445300', 'Yunan Xian', 'YNK');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2068, '445323', '云安县', '445300', 'Yun,an Xian', 'YUA');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2069, '445381', '罗定市', '445300', 'Luoding Shi', 'LUO');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1968, '440512', '濠江区', '440500', 'Haojiang Qu', 'HJ Q');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2070, '450101', '市辖区', '450100', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2071, '450102', '兴宁区', '450100', 'Xingning Qu', 'XNE');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2072, '450103', '青秀区', '450100', 'Xincheng Qu', 'XCE');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2073, '450105', '江南区', '450100', 'Jiangnan Qu', 'JNA');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2077, '450122', '武鸣县', '450100', 'Wuming Xian', 'WMG');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2083, '450201', '市辖区', '450200', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2084, '450202', '城中区', '450200', 'Chengzhong Qu', 'CZG');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2085, '450203', '鱼峰区', '450200', 'Yufeng Qu', 'YFQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2086, '450204', '柳南区', '450200', 'Liunan Qu', 'LNU');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2087, '450205', '柳北区', '450200', 'Liubei Qu', 'LBE');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2088, '450221', '柳江县', '450200', 'Liujiang Xian', 'LUJ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2089, '450222', '柳城县', '450200', 'Liucheng Xian', 'LCB');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2094, '450301', '市辖区', '450300', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2095, '450302', '秀峰区', '450300', 'Xiufeng Qu', 'XUF');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2096, '450303', '叠彩区', '450300', 'Diecai Qu', 'DCA');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2097, '450304', '象山区', '450300', 'Xiangshan Qu', 'XSK');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2098, '450305', '七星区', '450300', 'Qixing Qu', 'QXG');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2099, '450311', '雁山区', '450300', 'Yanshan Qu', 'YSA');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2100, '450321', '阳朔县', '450300', 'Yangshuo Xian', 'YSO');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2101, '450322', '临桂县', '450300', 'Lingui Xian', 'LGI');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2102, '450323', '灵川县', '450300', 'Lingchuan Xian', 'LCU');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2103, '450324', '全州县', '450300', 'Quanzhou Xian', 'QZO');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2104, '450325', '兴安县', '450300', 'Xing,an Xian', 'XAG');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2105, '450326', '永福县', '450300', 'Yongfu Xian', 'YFU');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2106, '450327', '灌阳县', '450300', 'Guanyang Xian', 'GNY');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2107, '450328', '龙胜各族自治县', '450300', 'Longsheng Gezu Zizhixian', 'LSG');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2108, '450329', '资源县', '450300', 'Ziyuan Xian', 'ZYU');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2109, '450330', '平乐县', '450300', 'Pingle Xian', 'PLE');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2110, '450331', '荔蒲县', '450300', 'Lipu Xian', 'LPU');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2111, '450332', '恭城瑶族自治县', '450300', 'Gongcheng Yaozu Zizhixian', 'GGC');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2112, '450401', '市辖区', '450400', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2113, '450403', '万秀区', '450400', 'Wanxiu Qu', 'WXQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2114, '450404', '蝶山区', '450400', 'Dieshan Qu', 'DES');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2116, '450421', '苍梧县', '450400', 'Cangwu Xian', 'CAW');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2117, '450422', '藤　县', '450400', 'Teng Xian', 'TEG');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2118, '450423', '蒙山县', '450400', 'Mengshan Xian', 'MSA');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2119, '450481', '岑溪市', '450400', 'Cenxi Shi', 'CEX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2120, '450501', '市辖区', '450500', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2121, '450502', '海城区', '450500', 'Haicheng Qu', 'HCB');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2122, '450503', '银海区', '450500', 'Yinhai Qu', 'YHB');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2123, '450512', '铁山港区', '450500', 'Tieshangangqu ', 'TSG');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2124, '450521', '合浦县', '450500', 'Hepu Xian', 'HPX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2125, '450601', '市辖区', '450600', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2126, '450602', '港口区', '450600', 'Gangkou Qu', 'GKQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2127, '450603', '防城区', '450600', 'Fangcheng Qu', 'FCQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2128, '450621', '上思县', '450600', 'Shangsi Xian', 'SGS');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2129, '450681', '东兴市', '450600', 'Dongxing Shi', 'DOX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2130, '450701', '市辖区', '450700', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2131, '450702', '钦南区', '450700', 'Qinnan Qu', 'QNQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2132, '450703', '钦北区', '450700', 'Qinbei Qu', 'QBQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2133, '450721', '灵山县', '450700', 'Lingshan Xian', 'LSB');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2134, '450722', '浦北县', '450700', 'Pubei Xian', 'PBE');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2135, '450801', '市辖区', '450800', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2136, '450802', '港北区', '450800', 'Gangbei Qu', 'GBE');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2137, '450803', '港南区', '450800', 'Gangnan Qu', 'GNQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2139, '450821', '平南县', '450800', 'Pingnan Xian', 'PNN');
commit;
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2140, '450881', '桂平市', '450800', 'Guiping Shi', 'GPS');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2141, '450901', '市辖区', '450900', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2142, '450902', '玉州区', '450900', 'Yuzhou Qu', 'YZO');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2143, '450921', '容　县', '450900', 'Rong Xian', 'ROG');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2144, '450922', '陆川县', '450900', 'Luchuan Xian', 'LCJ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2145, '450923', '博白县', '450900', 'Bobai Xian', 'BBA');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2146, '450924', '兴业县', '450900', 'Xingye Xian', 'XGY');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2147, '450981', '北流市', '450900', 'Beiliu Shi', 'BLS');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2196, '460107', '琼山区', '460100', 'QiongShan Qu', 'QS');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2197, '460108', '美兰区', '460100', 'MeiLan Qu', 'ML');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2193, '460101', '市辖区', '460100', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2195, '460106', '龙华区', '460100', 'LongHua Qu', 'LH');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2194, '460105', '秀英区', '460100', 'Xiuying Qu', 'XYH');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2198, '460201', '市辖区', '460200', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2218, '500101', '万州区', '500100', 'Wanzhou Qu', 'WZO ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2219, '500102', '涪陵区', '500100', 'Fuling Qu', 'FLG');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2220, '500103', '渝中区', '500100', 'Yuzhong Qu', 'YZQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2221, '500104', '大渡口区', '500100', 'Dadukou Qu', 'DDK');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2222, '500105', '江北区', '500100', 'Jiangbei Qu', 'JBE');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2223, '500106', '沙坪坝区', '500100', 'Shapingba Qu', 'SPB');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2224, '500107', '九龙坡区', '500100', 'Jiulongpo Qu', 'JLP');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2225, '500108', '南岸区', '500100', 'Nan,an Qu', 'NAQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2226, '500109', '北碚区', '500100', 'Beibei Qu', 'BBE');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2227, '500110', '万盛区', '500100', 'Wansheng Qu', 'WSQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2228, '500111', '双桥区', '500100', 'Shuangqiao Qu', 'SQQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2229, '500112', '渝北区', '500100', 'Yubei Qu', 'YBE');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2230, '500113', '巴南区', '500100', 'Banan Qu', 'BNN');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2233, '500222', '綦江县', '500200', 'Qijiang Xian', 'QJG');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2234, '500223', '潼南县', '500200', 'Tongnan Xian', 'TNN');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2235, '500224', '铜梁县', '500200', 'Tongliang Xian', 'TGL');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2236, '500225', '大足县', '500200', 'Dazu Xian', 'DZX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2237, '500226', '荣昌县', '500200', 'Rongchang Xian', 'RGC');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2238, '500227', '璧山县', '500200', 'Bishan Xian', 'BSY');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2239, '500228', '梁平县', '500200', 'Liangping Xian', 'LGP');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2240, '500229', '城口县', '500200', 'Chengkou Xian', 'CKO');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2241, '500230', '丰都县', '500200', 'Fengdu Xian', 'FDU');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2242, '500231', '垫江县', '500200', 'Dianjiang Xian', 'DJG');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2243, '500232', '武隆县', '500200', 'Wulong Xian', 'WLG');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2244, '500233', '忠　县', '500200', 'Zhong Xian', 'ZHX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2245, '500234', '开　县', '500200', 'Kai Xian', 'KAI');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2246, '500235', '云阳县', '500200', 'Yunyang Xian', 'YNY');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2247, '500236', '奉节县', '500200', 'Fengjie Xian', 'FJE');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2248, '500237', '巫山县', '500200', 'Wushan Xian', 'WSN');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2249, '500238', '巫溪县', '500200', 'Wuxi Xian', 'WXX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2250, '500240', '石柱土家族自治县', '500200', 'Shizhu Tujiazu Zizhixian', 'SZY');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2251, '500241', '秀山土家族苗族自治县', '500200', 'Xiushan Tujiazu Miaozu Zizhixian', 'XUS');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2252, '500242', '酉阳土家族苗族自治县', '500200', 'Youyang Tujiazu Miaozu Zizhixian', 'YUY');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2253, '500243', '彭水苗族土家族自治县', '500200', 'Pengshui Miaozu Tujiazu Zizhixian', 'PSU');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2254, '500381', '江津市', '500300', 'Jiangjin Shi', 'JJY');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2255, '500382', '合川市', '500300', 'Hechuan Shi', 'HEC');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2256, '500383', '永川市', '500300', 'Yongchuan Shi', 'YCP');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2257, '500384', '南川市', '500300', 'Nanchuan Shi', 'NCU');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2258, '510101', '市辖区', '510100', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2259, '510104', '锦江区', '510100', 'Jinjiang Qu', 'JJQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2260, '510105', '青羊区', '510100', 'Qingyang Qu', 'QYQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2261, '510106', '金牛区', '510100', 'Jinniu Qu', 'JNU');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2262, '510107', '武侯区', '510100', 'Wuhou Qu', 'WHQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2263, '510108', '成华区', '510100', 'Chenghua Qu', 'CHQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2264, '510112', '龙泉驿区', '510100', 'Longquanyi Qu', 'LQY');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2265, '510113', '青白江区', '510100', 'Qingbaijiang Qu', 'QBJ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2268, '510121', '金堂县', '510100', 'Jintang Xian', 'JNT');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2269, '510122', '双流县', '510100', 'Shuangliu Xian', 'SLU');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2270, '510124', '郫　县', '510100', 'Pi Xian', 'PIX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2271, '510129', '大邑县', '510100', 'Dayi Xian', 'DYI');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2272, '510131', '蒲江县', '510100', 'Pujiang Xian', 'PJX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2273, '510132', '新津县', '510100', 'Xinjin Xian', 'XJC');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2274, '510181', '都江堰市', '510100', 'Dujiangyan Shi', 'DJY');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2275, '510182', '彭州市', '510100', 'Pengzhou Shi', 'PZS');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2276, '510183', '邛崃市', '510100', 'Qionglai Shi', 'QLA');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2277, '510184', '崇州市', '510100', 'Chongzhou Shi', 'CZO');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2278, '510301', '市辖区', '510300', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2279, '510302', '自流井区', '510300', 'Ziliujing Qu', 'ZLJ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2280, '510303', '贡井区', '510300', 'Gongjing Qu', 'GJQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2281, '510304', '大安区', '510300', 'Da,an Qu', 'DAQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2282, '510311', '沿滩区', '510300', 'Yantan Qu', 'YTN');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2283, '510321', '荣　县', '510300', 'Rong Xian', 'RGX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2284, '510322', '富顺县', '510300', 'Fushun Xian', 'FSH');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2285, '510401', '市辖区', '510400', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2286, '510402', '东　区', '510400', 'Dong Qu', 'DQP');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2287, '510403', '西　区', '510400', 'Xi Qu', 'XIQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2288, '510411', '仁和区', '510400', 'Renhe Qu', 'RHQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2289, '510421', '米易县', '510400', 'Miyi Xian', 'MIY');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2290, '510422', '盐边县', '510400', 'Yanbian Xian', 'YBN');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2291, '510501', '市辖区', '510500', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2292, '510502', '江阳区', '510500', 'Jiangyang Qu', 'JYB');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2293, '510503', '纳溪区', '510500', 'Naxi Qu', 'NXI');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2294, '510504', '龙马潭区', '510500', 'Longmatan Qu', 'LMT');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2295, '510521', '泸　县', '510500', 'Lu Xian', 'LUX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2296, '510522', '合江县', '510500', 'Hejiang Xian', 'HEJ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2297, '510524', '叙永县', '510500', 'Xuyong Xian', 'XYO');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2298, '510525', '古蔺县', '510500', 'Gulin Xian', 'GUL');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2299, '510601', '市辖区', '510600', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2300, '510603', '旌阳区', '510600', 'Jingyang Qu', 'JYF');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2301, '510623', '中江县', '510600', 'Zhongjiang Xian', 'ZGJ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2302, '510626', '罗江县', '510600', 'Luojiang Xian', 'LOJ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2303, '510681', '广汉市', '510600', 'Guanghan Shi', 'GHN');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2304, '510682', '什邡市', '510600', 'Shifang Shi', 'SFS');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2305, '510683', '绵竹市', '510600', 'Jinzhou Shi', 'MZU');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2306, '510701', '市辖区', '510700', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2307, '510703', '涪城区', '510700', 'Fucheng Qu', 'FCM');
commit;
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2308, '510704', '游仙区', '510700', 'Youxian Qu', 'YXM');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2309, '510722', '三台县', '510700', 'Santai Xian', 'SNT');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2310, '510723', '盐亭县', '510700', 'Yanting Xian', 'YTC');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2311, '510724', '安　县', '510700', 'An Xian', 'AXN');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2312, '510725', '梓潼县', '510700', 'Zitong Xian', 'ZTG');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2313, '510726', '北川羌族自治县', '510700', 'Beichuan Xian', 'BCN');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2314, '510727', '平武县', '510700', 'Pingwu Xian', 'PWU');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2315, '510781', '江油市', '510700', 'Jiangyou Shi', 'JYO');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2316, '510801', '市辖区', '510800', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2317, '510802', '市中区', '510800', 'Shizhong Qu', 'SZG');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2318, '510811', '元坝区', '510800', 'Yuanba Qu', 'YBQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2319, '510812', '朝天区', '510800', 'Chaotian Qu', 'CTN');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2320, '510821', '旺苍县', '510800', 'Wangcang Xian', 'WGC');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2321, '510822', '青川县', '510800', 'Qingchuan Xian', 'QCX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2322, '510823', '剑阁县', '510800', 'Jiange Xian', 'JGE');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2323, '510824', '苍溪县', '510800', 'Cangxi Xian', 'CXC');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2324, '510901', '市辖区', '510900', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2327, '510921', '蓬溪县', '510900', 'Pengxi Xian', 'PXI');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2328, '510922', '射洪县', '510900', 'Shehong Xian', 'SHE');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2329, '510923', '大英县', '510900', 'Daying Xian', 'DAY');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2330, '511001', '市辖区', '511000', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2331, '511002', '市中区', '511000', 'Shizhong Qu', 'SZM');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2332, '511011', '东兴区', '511000', 'Dongxing Qu', 'DXQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2333, '511024', '威远县', '511000', 'Weiyuan Xian', 'WYU');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2334, '511025', '资中县', '511000', 'Zizhong Xian', 'ZZC');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2335, '511028', '隆昌县', '511000', 'Longchang Xian', 'LCC');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2336, '511101', '市辖区', '511100', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2337, '511102', '市中区', '511100', 'Shizhong Qu', 'SZP');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2338, '511111', '沙湾区', '511100', 'Shawan Qu', 'SWN');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2339, '511112', '五通桥区', '511100', 'Wutongqiao Qu', 'WTQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2340, '511113', '金口河区', '511100', 'Jinkouhe Qu', 'JKH');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2341, '511123', '犍为县', '511100', 'Qianwei Xian', 'QWE');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2342, '511124', '井研县', '511100', 'Jingyan Xian', 'JYA');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2343, '511126', '夹江县', '511100', 'Jiajiang Xian', 'JJC');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2344, '511129', '沐川县', '511100', 'Muchuan Xian', 'MCH');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2345, '511132', '峨边彝族自治县', '511100', 'Ebian Yizu Zizhixian', 'EBN');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2346, '511133', '马边彝族自治县', '511100', 'Mabian Yizu Zizhixian', 'MBN');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2347, '511181', '峨眉山市', '511100', 'Emeishan Shi', 'EMS');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2348, '511301', '市辖区', '511300', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2349, '511302', '顺庆区', '511300', 'Shunqing Xian', 'SQG');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2350, '511303', '高坪区', '511300', 'Gaoping Qu', 'GPQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2351, '511304', '嘉陵区', '511300', 'Jialing Qu', 'JLG');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2352, '511321', '南部县', '511300', 'Nanbu Xian', 'NBU');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2353, '511322', '营山县', '511300', 'Yingshan Xian', 'YGS');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2354, '511323', '蓬安县', '511300', 'Peng,an Xian', 'PGA');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2355, '511324', '仪陇县', '511300', 'Yilong Xian', 'YLC');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2356, '511325', '西充县', '511300', 'Xichong Xian', 'XCO');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2357, '511381', '阆中市', '511300', 'Langzhong Shi', 'LZJ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2365, '511501', '市辖区', '511500', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2366, '511502', '翠屏区', '511500', 'Cuiping Qu', 'CPQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2367, '511521', '宜宾县', '511500', 'Yibin Xian', 'YBX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2368, '511522', '南溪县', '511500', 'Nanxi Xian', 'NNX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2369, '511523', '江安县', '511500', 'Jiang,an Xian', 'JAC');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2370, '511524', '长宁县', '511500', 'Changning Xian', 'CNX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2371, '511525', '高　县', '511500', 'Gao Xian', 'GAO');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2372, '511526', '珙　县', '511500', 'Gong Xian', 'GOG');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2373, '511527', '筠连县', '511500', 'Junlian Xian', 'JNL');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2374, '511528', '兴文县', '511500', 'Xingwen Xian', 'XWC');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2375, '511529', '屏山县', '511500', 'Pingshan Xian', 'PSC');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2376, '511601', '市辖区', '511600', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2377, '511602', '广安区', '511600', 'Guang,an Qu', 'GAQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2378, '511621', '岳池县', '511600', 'Yuechi Xian', 'YCC');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2379, '511622', '武胜县', '511600', 'Wusheng Xian', 'WSG');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2380, '511623', '邻水县', '511600', 'Linshui Xian', 'LSH');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2381, '511681', '华莹市', '511600', 'Huaying Shi', 'HYC');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2774, '610202', '王益区', '610200', 'Chengqu', 'CQT');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2775, '610203', '印台区', '610200', 'Jiaoqu', 'JTC');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2777, '610222', '宜君县', '610200', 'Yijun Xian', 'YJU');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2778, '610301', '市辖区', '610300', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2779, '610302', '渭滨区', '610300', 'Weibin Qu', 'WBQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2780, '610303', '金台区', '610300', 'Jintai Qu', 'JTQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2782, '610322', '凤翔县', '610300', 'Fengxiang Xian', 'FXG');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2783, '610323', '岐山县', '610300', 'Qishan Xian', 'QIS');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2784, '610324', '扶风县', '610300', 'Fufeng Xian', 'FFG');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2785, '610326', '眉　县', '610300', 'Mei Xian', 'MEI');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2786, '610327', '陇　县', '610300', 'Long Xian', 'LON');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2787, '610328', '千阳县', '610300', 'Qianyang Xian', 'QNY');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2788, '610329', '麟游县', '610300', 'Linyou Xian', 'LYP');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2789, '610330', '凤　县', '610300', 'Feng Xian', 'FEG');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2790, '610331', '太白县', '610300', 'Taibai Xian', 'TBA');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2791, '610401', '市辖区', '610400', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2792, '610402', '秦都区', '610400', 'Qindu Qu', 'QDU');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2793, '610403', '杨凌区', '610400', 'Yangling Qu', 'YGL');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2794, '610404', '渭城区', '610400', 'Weicheng Qu', 'WIC');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2795, '610422', '三原县', '610400', 'Sanyuan Xian', 'SYN');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2796, '610423', '泾阳县', '610400', 'Jingyang Xian', 'JGY');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2797, '610424', '乾　县', '610400', 'Qian Xian', 'QIA');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2798, '610425', '礼泉县', '610400', 'Liquan Xian', 'LIQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2799, '610426', '永寿县', '610400', 'Yongshou Xian', 'YSH');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2800, '610427', '彬　县', '610400', 'Bin Xian', 'BIX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2801, '610428', '长武县', '610400', 'Changwu Xian', 'CWU');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2802, '610429', '旬邑县', '610400', 'Xunyi Xian', 'XNY');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2803, '610430', '淳化县', '610400', 'Chunhua Xian', 'CHU');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2804, '610431', '武功县', '610400', 'Wugong Xian', 'WGG');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2805, '610481', '兴平市', '610400', 'Xingping Shi', 'XPG');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2806, '610501', '市辖区', '610500', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2807, '610502', '临渭区', '610500', 'Linwei Qu', 'LWE');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2808, '610521', '华　县', '610500', 'Hua Xian', 'HXN');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2809, '610522', '潼关县', '610500', 'Tongguan Xian', 'TGN');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2810, '610523', '大荔县', '610500', 'Dali Xian', 'DAL');
commit;
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2811, '610524', '合阳县', '610500', 'Heyang Xian', 'HYK');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2812, '610525', '澄城县', '610500', 'Chengcheng Xian', 'CCG');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2813, '610526', '蒲城县', '610500', 'Pucheng Xian', 'PUC');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2814, '610527', '白水县', '610500', 'Baishui Xian', 'BSU');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2815, '610528', '富平县', '610500', 'Fuping Xian', 'FPX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2816, '610581', '韩城市', '610500', 'Hancheng Shi', 'HCE');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2817, '610582', '华阴市', '610500', 'Huayin Shi', 'HYI');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2818, '610601', '市辖区', '610600', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2819, '610602', '宝塔区', '610600', 'Baota Qu', 'BTA');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2820, '610621', '延长县', '610600', 'Yanchang Xian', 'YCA');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2821, '610622', '延川县', '610600', 'Yanchuan Xian', 'YCT');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2822, '610623', '子长县', '610600', 'Zichang Xian', 'ZCA');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2823, '610624', '安塞县', '610600', 'Ansai Xian', 'ANS');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2824, '610625', '志丹县', '610600', 'Zhidan Xian', 'ZDN');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2825, '610626', '吴旗县', '610600', 'Wuqi Xian', 'WQI');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2826, '610627', '甘泉县', '610600', 'Ganquan Xian', 'GQN');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2827, '610628', '富　县', '610600', 'Fu Xian', 'FUX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2828, '610629', '洛川县', '610600', 'Luochuan Xian', 'LCW');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2829, '610630', '宜川县', '610600', 'Yichuan Xian', 'YIC');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2830, '610631', '黄龙县', '610600', 'Huanglong Xian', 'HGL');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2831, '610632', '黄陵县', '610600', 'Huangling Xian', 'HLG');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2832, '610701', '市辖区', '610700', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2833, '610702', '汉台区', '610700', 'Hantai Qu', 'HTQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2834, '610721', '南郑县', '610700', 'Nanzheng Xian', 'NZG');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2835, '610722', '城固县', '610700', 'Chenggu Xian', 'CGU');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2836, '610723', '洋　县', '610700', 'Yang Xian', 'YGX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2837, '610724', '西乡县', '610700', 'Xixiang Xian', 'XXA');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2838, '610725', '勉　县', '610700', 'Mian Xian', 'MIA');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2839, '610726', '宁强县', '610700', 'Ningqiang Xian', 'NQG');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2840, '610727', '略阳县', '610700', 'Lueyang Xian', 'LYC');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2841, '610728', '镇巴县', '610700', 'Zhenba Xian', 'ZBA');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2842, '610729', '留坝县', '610700', 'Liuba Xian', 'LBA');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2843, '610730', '佛坪县', '610700', 'Foping Xian', 'FPG');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2876, '620101', '市辖区', '620100', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2877, '620102', '城关区', '620100', 'Chengguan Qu', 'CLZ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2878, '620103', '七里河区', '620100', 'Qilihe Qu', 'QLH');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2879, '620104', '西固区', '620100', 'Xigu Qu', 'XGU');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2880, '620105', '安宁区', '620100', 'Anning Qu', 'ANQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2881, '620111', '红古区', '620100', 'Honggu Qu', 'HOG');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2882, '620121', '永登县', '620100', 'Yongdeng Xian', 'YDG');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2883, '620122', '皋兰县', '620100', 'Gaolan Xian', 'GAL');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2884, '620123', '榆中县', '620100', 'Yuzhong Xian', 'YZX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2885, '620201', '市辖区', '620200', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2886, '620301', '市辖区', '620300', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2887, '620302', '金川区', '620300', 'Jinchuan Qu', 'JCU');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2888, '620321', '永昌县', '620300', 'Yongchang Xian', 'YCF');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2889, '620401', '市辖区', '620400', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2890, '620402', '白银区', '620400', 'Baiyin Qu', 'BYB');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2891, '620403', '平川区', '620400', 'Pingchuan Qu', 'PCQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2892, '620421', '靖远县', '620400', 'Jingyuan Xian', 'JYH');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2893, '620422', '会宁县', '620400', 'Huining xian', 'HNI');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2894, '620423', '景泰县', '620400', 'Jingtai Xian', 'JGT');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2895, '620501', '市辖区', '620500', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2896, '620502', '秦城区', '620500', 'Qincheng Qu', 'QCG');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2897, '620503', '北道区', '620500', 'Beidao Qu', 'BDQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2898, '620521', '清水县', '620500', 'Qingshui Xian', 'QSG');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2899, '620522', '秦安县', '620500', 'Qin,an Xian', 'QNA');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2900, '620523', '甘谷县', '620500', 'Gangu Xian', 'GGU');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2901, '620524', '武山县', '620500', 'Wushan Xian', 'WSX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2902, '620525', '张家川回族自治县', '620500', 'Zhangjiachuan Huizu Zizhixian', 'ZJC');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2958, '622901', '临夏市', '622900', 'Linxia Shi', 'LXR');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2959, '622921', '临夏县', '622900', 'Linxia Xian', 'LXF');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2960, '622922', '康乐县', '622900', 'Kangle Xian', 'KLE');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2961, '622923', '永靖县', '622900', 'Yongjing Xian', 'YJG');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2962, '622924', '广河县', '622900', 'Guanghe Xian', 'GHX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2963, '622925', '和政县', '622900', 'Hezheng Xian', 'HZG');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2964, '622926', '东乡族自治县', '622900', 'Dongxiangzu Zizhixian', 'DXZ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2965, '622927', '积石山保安族东乡族撒拉族自治县', '622900', 'Jishishan Bonanzu Dongxiangzu Salarzu Zizhixian', 'JSN');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2966, '623001', '合作市', '623000', 'Hezuo Shi', 'HEZ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2967, '623021', '临潭县', '623000', 'Lintan Xian', 'LTN');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2968, '623022', '卓尼县', '623000', 'Jone', 'JON');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2969, '623023', '舟曲县', '623000', 'Zhugqu Xian', 'ZQU');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2970, '623024', '迭部县', '623000', 'Tewo Xian', 'TEW');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2971, '623025', '玛曲县', '623000', 'Maqu Xian', 'MQU');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2972, '623026', '碌曲县', '623000', 'Luqu Xian', 'LQU');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2973, '623027', '夏河县', '623000', 'Xiahe Xian', 'XHN');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2974, '630101', '市辖区', '630100', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2975, '630102', '城东区', '630100', 'Chengdong Qu', 'CDQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2976, '630103', '城中区', '630100', 'Chengzhong Qu', 'CZQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2977, '630104', '城西区', '630100', 'Chengxi Qu', 'CXQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2978, '630105', '城北区', '630100', 'Chengbei Qu', 'CBE');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2979, '630121', '大通回族土族自治县', '630100', 'Datong Huizu Tuzu Zizhixian', 'DAT');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2982, '632121', '平安县', '632100', 'Ping,an Xian', 'PAN');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2983, '632122', '民和回族土族自治县', '632100', 'Minhe Huizu Tuzu Zizhixian', 'MHE');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2984, '632123', '乐都县', '632100', 'Ledu Xian', 'LDU');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2985, '632126', '互助土族自治县', '632100', 'Huzhu Tuzu Zizhixian', 'HZT');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2986, '632127', '化隆回族自治县', '632100', 'Hualong Huizu Zizhixian', 'HLO');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2987, '632128', '循化撒拉族自治县', '632100', 'Xunhua Salazu Zizhixian', 'XUH');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2988, '632221', '门源回族自治县', '632200', 'Menyuan Huizu Zizhixian', 'MYU');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2989, '632222', '祁连县', '632200', 'Qilian Xian', 'QLN');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2990, '632223', '海晏县', '632200', 'Haiyan Xian', 'HIY');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2991, '632224', '刚察县', '632200', 'Gangca Xian', 'GAN');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2992, '632321', '同仁县', '632300', 'Tongren Xian', 'TRN');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2993, '632322', '尖扎县', '632300', 'Jainca Xian', 'JAI');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2994, '632323', '泽库县', '632300', 'Zekog Xian', 'ZEK');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2995, '632324', '河南蒙古族自治县', '632300', 'Henan Mongolzu Zizhixian', 'HNM');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2996, '632521', '共和县', '632500', 'Gonghe Xian', 'GHE');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2997, '632522', '同德县', '632500', 'Tongde Xian', 'TDX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2998, '632523', '贵德县', '632500', 'Guide Xian', 'GID');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2999, '632524', '兴海县', '632500', 'Xinghai Xian', 'XHA');
commit;
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (3000, '632525', '贵南县', '632500', 'Guinan Xian', 'GNN');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (3001, '632621', '玛沁县', '632600', 'Maqen Xian', 'MAQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (3002, '632622', '班玛县', '632600', 'Baima Xian', 'BMX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (3003, '632623', '甘德县', '632600', 'Gade Xian', 'GAD');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (3004, '632624', '达日县', '632600', 'Tarlag Xian', 'TAR');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (3005, '632625', '久治县', '632600', 'Jigzhi Xian', 'JUZ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (3006, '632626', '玛多县', '632600', 'Madoi Xian', 'MAD');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (3007, '632721', '玉树县', '632700', 'Yushu Xian', 'YSK');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (3008, '632722', '杂多县', '632700', 'Zadoi Xian', 'ZAD');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (3009, '632723', '称多县', '632700', 'Chindu Xian', 'CHI');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (3010, '632724', '治多县', '632700', 'Zhidoi Xian', 'ZHI');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (3011, '632725', '囊谦县', '632700', 'Nangqen Xian', 'NQN');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (3012, '632726', '曲麻莱县', '632700', 'Qumarleb Xian', 'QUM');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (3013, '632801', '格尔木市', '632800', 'Golmud Shi', 'GOS');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (3014, '632802', '德令哈市', '632800', 'Delhi Shi', 'DEL');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (3015, '632821', '乌兰县', '632800', 'Ulan Xian', 'ULA');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (3016, '632822', '都兰县', '632800', 'Dulan Xian', 'DUL');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (3017, '632823', '天峻县', '632800', 'Tianjun Xian', 'TJN');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (3018, '640101', '市辖区', '640100', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (3022, '640121', '永宁县', '640100', 'Yongning Xian', 'YGN');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (3023, '640122', '贺兰县', '640100', 'Helan Xian', 'HLN');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (3025, '640201', '市辖区', '640200', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (3026, '640202', '大武口区', '640200', 'Dawukou Qu', 'DWK');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (3028, '640221', '平罗县', '640200', 'Pingluo Xian', 'PLO');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (3029, '640301', '市辖区', '640300', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (3030, '640302', '利通区', '640300', 'Litong Qu', 'LTW');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (3031, '640323', '盐池县', '640300', 'Yanchi Xian', 'YCY');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (3032, '640324', '同心县', '640300', 'Tongxin Xian', 'TGX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (3033, '640381', '青铜峡市', '640300', 'Qingtongxia Xian', 'QTX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (3044, '650101', '市辖区', '650100', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (3045, '650102', '天山区', '650100', 'Tianshan Qu', 'TSL');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (3046, '650103', '沙依巴克区', '650100', 'Saybag Qu', 'SAY');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (3047, '650104', '新市区', '650100', 'Xinshi Qu', 'XSU');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (3048, '650105', '水磨沟区', '650100', 'Shuimogou Qu', 'SMG');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (3049, '650106', '头屯河区', '650100', 'Toutunhe Qu', 'TTH');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (3050, '650107', '达坂城区', '650100', 'Nanshan Kuangqu', 'NSK');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (3051, '650108', '东山区', '650100', 'Dongshan Qu', 'DSU');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (3052, '650121', '乌鲁木齐县', '650100', 'Urumqi Xian', 'URX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (3053, '650201', '市辖区', '650200', 'Shixiaqu', null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (3054, '650202', '独山子区', '650200', 'Dushanzi Qu', 'DSZ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (3055, '650203', '克拉玛依区', '650200', 'Karamay Qu', 'KRQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (3056, '650204', '白碱滩区', '650200', 'Baijiantan Qu', 'BJT');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (3057, '650205', '乌尔禾区', '650200', 'Orku Qu', 'ORK');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (3058, '652101', '吐鲁番市', '652100', 'Turpan Shi', 'TUR');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (3059, '652122', '鄯善县', '652100', 'Shanshan(piqan) Xian', 'SSX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (3060, '652123', '托克逊县', '652100', 'Toksun Xian', 'TOK');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (3061, '652201', '哈密市', '652200', 'Hami(kumul) Shi', 'HAM');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (3062, '652222', '巴里坤哈萨克自治县', '652200', 'Barkol Kazak Zizhixian', 'BAR');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (3063, '652223', '伊吾县', '652200', 'Yiwu(Araturuk) Xian', 'YWX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (3064, '652301', '昌吉市', '652300', 'Changji Shi', 'CJS');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (3065, '652302', '阜康市', '652300', 'Fukang Shi', 'FKG');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (3066, '652303', '米泉市', '652300', 'Miquan Shi', 'MQS');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (3067, '652323', '呼图壁县', '652300', 'Hutubi Xian', 'HTB');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (3068, '652324', '玛纳斯县', '652300', 'Manas Xian', 'MAS');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (3069, '652325', '奇台县', '652300', 'Qitai Xian', 'QTA');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (3070, '652327', '吉木萨尔县', '652300', 'Jimsar Xian', 'JIM');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (3071, '652328', '木垒哈萨克自治县', '652300', 'Mori Kazak Zizhixian', 'MOR');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (3072, '652701', '博乐市', '652700', 'Bole(Bortala) Shi', 'BLE');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (3073, '652722', '精河县', '652700', 'Jinghe(Jing) Xian', 'JGH');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (3074, '652723', '温泉县', '652700', 'Wenquan(Arixang) Xian', 'WNQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (3075, '652801', '库尔勒市', '652800', 'Korla Shi', 'KOR');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (3076, '652822', '轮台县', '652800', 'Luntai(Bugur) Xian', 'LTX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (3077, '652823', '尉犁县', '652800', 'Yuli(Lopnur) Xian', 'YLI');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (3078, '652824', '若羌县', '652800', 'Ruoqiang(Qakilik) Xian', 'RQG');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (3079, '652825', '且末县', '652800', 'Qiemo(Qarqan) Xian', 'QMO');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (3080, '652826', '焉耆回族自治县', '652800', 'Yanqi Huizu Zizhixian', 'YQI');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (3081, '652827', '和静县', '652800', 'Hejing Xian', 'HJG');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (3082, '652828', '和硕县', '652800', 'Hoxud Xian', 'HOX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (3083, '652829', '博湖县', '652800', 'Bohu(Bagrax) Xian', 'BHU');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (3084, '652901', '阿克苏市', '652900', 'Aksu Shi', 'AKS');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (3085, '652922', '温宿县', '652900', 'Wensu Xian', 'WSU');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (3086, '652923', '库车县', '652900', 'Kuqa Xian', 'KUQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (3087, '652924', '沙雅县', '652900', 'Xayar Xian', 'XYR');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (3088, '652925', '新和县', '652900', 'Xinhe(Toksu) Xian', 'XHT');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (3089, '652926', '拜城县', '652900', 'Baicheng(Bay) Xian', 'BCG');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (3090, '652927', '乌什县', '652900', 'Wushi(Uqturpan) Xian', 'WSH');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (3091, '652928', '阿瓦提县', '652900', 'Awat Xian', 'AWA');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (3092, '652929', '柯坪县', '652900', 'Kalpin Xian', 'KAL');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (3093, '653001', '阿图什市', '653000', 'Artux Shi', 'ART');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (3094, '653022', '阿克陶县', '653000', 'Akto Xian', 'AKT');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (3095, '653023', '阿合奇县', '653000', 'Akqi Xian', 'AKQ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (3096, '653024', '乌恰县', '653000', 'Wuqia(Ulugqat) Xian', 'WQA');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (3097, '653101', '喀什市', '653100', 'Kashi (Kaxgar) Shi', 'KHG');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (3098, '653121', '疏附县', '653100', 'Shufu Xian', 'SFU');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (3099, '653122', '疏勒县', '653100', 'Shule Xian', 'SHL');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (3100, '653123', '英吉沙县', '653100', 'Yengisar Xian', 'YEN');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (3101, '653124', '泽普县', '653100', 'Zepu(Poskam) Xian', 'ZEP');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (3102, '653125', '莎车县', '653100', 'Shache(Yarkant) Xian', 'SHC');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (3103, '653126', '叶城县', '653100', 'Yecheng(Kargilik) Xian', 'YEC');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (3104, '653127', '麦盖提县', '653100', 'Markit Xian', 'MAR');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (3105, '653128', '岳普湖县', '653100', 'Yopurga Xian', 'YOP');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (3106, '653129', '伽师县', '653100', 'Jiashi(Payzawat) Xian', 'JSI');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (3107, '653130', '巴楚县', '653100', 'Bachu(Maralbexi) Xian', 'BCX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (3108, '653131', '塔什库尔干塔吉克自治县', '653100', 'Taxkorgan Tajik Zizhixian', 'TXK');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (3109, '653201', '和田市', '653200', 'Hotan Shi', 'HTS');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (3110, '653221', '和田县', '653200', 'Hotan Xian', 'HOT');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (3111, '653222', '墨玉县', '653200', 'Moyu(Karakax) Xian', 'MOY');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (3112, '653223', '皮山县', '653200', 'Pishan(Guma) Xian', 'PSA');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (3113, '653224', '洛浦县', '653200', 'Lop Xian', 'LOP');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (3114, '653225', '策勒县', '653200', 'Qira Xian', 'QIR');
commit;
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (3115, '653226', '于田县', '653200', 'Yutian(Keriya) Xian', 'YUT');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (3116, '653227', '民丰县', '653200', 'Minfeng(Niya) Xian', 'MFG');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (3127, '654201', '塔城市', '654200', 'Tacheng(Qoqek) Shi', 'TCS');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (3128, '654202', '乌苏市', '654200', 'Usu Shi', 'USU');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (3129, '654221', '额敏县', '654200', 'Emin(Dorbiljin) Xian', 'EMN');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (3130, '654223', '沙湾县', '654200', 'Shawan Xian', 'SWX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (3131, '654224', '托里县', '654200', 'Toli Xian', 'TLI');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (3132, '654225', '裕民县', '654200', 'Yumin(Qagantokay) Xian', 'YMN');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (3133, '654226', '和布克赛尔蒙古自治县', '654200', 'Hoboksar Mongol Zizhixian', 'HOB');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (3134, '654301', '阿勒泰市', '654300', 'Altay Shi', 'ALT');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (3135, '654321', '布尔津县', '654300', 'Burqin Xian', 'BUX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (3136, '654322', '富蕴县', '654300', 'Fuyun(Koktokay) Xian', 'FYN');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (3137, '654323', '福海县', '654300', 'Fuhai(Burultokay) Xian', 'FHI');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (3138, '654324', '哈巴河县', '654300', 'Habahe(Kaba) Xian', 'HBH');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (3139, '654325', '青河县', '654300', 'Qinghe(Qinggil) Xian', 'QHX');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (3140, '654326', '吉木乃县', '654300', 'Jeminay Xian', 'JEM');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (3141, '659001', '石河子市', '659000', 'Shihezi Shi', 'SHZ');
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2618, '530901', '市辖区', '530900', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (311, '140927', '神池县', '140900', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2872, '611023', '商南县', '611000', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1447, '371103', '岚山区', '371100', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2174, '451227', '巴马瑶族自治县', '451200', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2488, '520402', '西秀区', '520400', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (395, '150581', '霍林郭勒市', '150500', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2584, '530502', '隆阳区', '530500', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2583, '530501', '市辖区', '530500', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2845, '610802', '榆阳区', '610800', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (308, '140924', '繁峙县', '140900', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2201, '469003', '儋州市', '469000', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (773, '231223', '青冈县', '231200', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1230, '350921', '霞浦县', '350900', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (777, '231281', '安达市', '231200', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1491, '371623', '无棣县', '371600', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2590, '530602', '昭阳区', '530600', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2942, '621121', '通渭县', '621100', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2937, '621025', '正宁县', '621000', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2932, '621002', '西峰区', '621000', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (3041, '640502', '沙坡头区', '640500', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1946, '440205', '曲江区', '440200', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (390, '150522', '科尔沁左翼后旗', '150500', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2492, '520424', '关岭布依族苗族自治县', '520400', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2181, '451322', '象州县', '451300', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (391, '150523', '开鲁县', '150500', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (307, '140923', '代　县', '140900', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (348, '141181', '孝义市', '141100', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1918, '431321', '双峰县', '431300', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1315, '360922', '万载县', '360900', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (302, '140882', '河津市', '140800', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2598, '530628', '彝良县', '530600', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2776, '610204', '耀州区', '610200', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (992, '330803', '衢江区', '330800', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (3118, '654003', '奎屯市', '654000', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (339, '141122', '交城县', '141100', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (3117, '654002', '伊宁市', '654000', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (581, '220181', '九台市', '220100', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1137, '341802', '宣州区', '341800', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1318, '360925', '靖安县', '360900', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1920, '431381', '冷水江市', '431300', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1660, '411602', '川汇区', '411600', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1133, '341721', '东至县', '341700', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (812, '320115', '江宁区', '320100', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2176, '451229', '大化瑶族自治县', '451200', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (321, '141022', '翼城县', '141000', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2159, '451030', '西林县', '451000', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (305, '140921', '定襄县', '140900', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2384, '511721', '达　县', '511700', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2610, '530822', '墨江哈尼族自治县', '530800', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1139, '341822', '广德县', '341800', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2491, '520423', '镇宁布依族苗族自治县', '520400', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2621, '530922', '云　县', '530900', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2217, '469039', '中沙群岛的岛礁及其海域', '469000', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2919, '620823', '崇信县', '620800', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2850, '610825', '定边县', '610800', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2781, '610304', '陈仓区', '610300', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (771, '231221', '望奎县', '231200', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1613, '411103', '郾城区', '411100', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (3123, '654025', '新源县', '654000', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (306, '140922', '五台县', '140900', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (286, '140728', '平遥县', '140700', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1164, '350213', '翔安区', '350200', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (3020, '640105', '西夏区', '640100', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1916, '431301', '市辖区', '431300', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (394, '150526', '扎鲁特旗', '150500', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (402, '150626', '乌审旗', '150600', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (424, '150825', '乌拉特后旗', '150800', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2215, '469037', '西沙群岛', '469000', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2927, '620923', '肃北蒙古族自治县', '620900', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2864, '610926', '平利县', '610900', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2202, '469005', '文昌市', '469000', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2613, '530825', '镇沅彝族哈尼族拉祜族自治县', '530800', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (3043, '640522', '海原县', '640500', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2398, '511827', '宝兴县', '511800', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (43, '130108', '裕华区', '130100', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (851, '320507', '相城区', '320500', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1121, '341521', '寿　县', '341500', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2626, '530927', '沧源佤族自治县', '530900', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2163, '451121', '昭平县', '451100', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1346, '361130', '婺源县', '361100', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1323, '361001', '市辖区', '361000', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (298, '140828', '夏　县', '140800', null, null);
commit;
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1122, '341522', '霍邱县', '341500', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2092, '450225', '融水苗族自治县', '450200', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (324, '141025', '古　县', '141000', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1017, '331124', '松阳县', '331100', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1306, '360826', '泰和县', '360800', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (849, '320505', '虎丘区', '320500', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2138, '450804', '覃塘区', '450800', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (435, '150928', '察哈尔右翼后旗', '150900', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2609, '530821', '普洱哈尼族彝族自治县', '530800', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2847, '610822', '府谷县', '610800', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (344, '141127', '岚　县', '141100', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1881, '431003', '苏仙区', '431000', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1668, '411628', '鹿邑县', '411600', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1488, '371602', '滨城区', '371600', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2873, '611024', '山阳县', '611000', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2620, '530921', '凤庆县', '530900', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2936, '621024', '合水县', '621000', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (885, '320903', '盐都区', '320900', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2149, '451002', '右江区', '451000', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (421, '150822', '磴口县', '150800', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1662, '411622', '西华县', '411600', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1492, '371624', '沾化县', '371600', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1316, '360923', '上高县', '360900', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2948, '621201', '市辖区', '621200', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (287, '140729', '灵石县', '140700', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (293, '140823', '闻喜县', '140800', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2585, '530521', '施甸县', '530500', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2846, '610821', '神木县', '610800', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2080, '450125', '上林县', '450100', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (3039, '640425', '彭阳县', '640400', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1665, '411625', '郸城县', '411600', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1129, '341622', '蒙城县', '341600', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2358, '511401', '市辖区', '511400', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2493, '520425', '紫云苗族布依族自治县', '520400', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1669, '411681', '项城市', '411600', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2914, '620725', '山丹县', '620700', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (322, '141023', '襄汾县', '141000', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2949, '621202', '武都区', '621200', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2394, '511823', '汉源县', '511800', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1130, '341623', '利辛县', '341600', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2920, '620824', '华亭县', '620800', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2854, '610829', '吴堡县', '610800', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1120, '341503', '裕安区', '341500', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1131, '341701', '市辖区', '341700', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (416, '150784', '额尔古纳市', '150700', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2945, '621124', '临洮县', '621100', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2171, '451224', '东兰县', '451200', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1334, '361030', '广昌县', '361000', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2168, '451221', '南丹县', '451200', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2386, '511723', '开江县', '511700', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2165, '451123', '富川瑶族自治县', '451100', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1014, '331121', '青田县', '331100', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2212, '469034', '陵水黎族自治县', '469000', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (968, '330502', '吴兴区', '330500', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2400, '511902', '巴州区', '511900', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2210, '469031', '昌江黎族自治县', '469000', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2911, '620722', '民乐县', '620700', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2153, '451024', '德保县', '451000', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2389, '511781', '万源市', '511700', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1142, '341825', '旌德县', '341800', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1319, '360926', '铜鼓县', '360900', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2161, '451101', '市辖区', '451100', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (280, '140722', '左权县', '140700', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2623, '530924', '镇康县', '530900', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (320, '141021', '曲沃县', '141000', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1115, '341422', '无为县', '341400', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1659, '411601', '市辖区', '411600', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1782, '421381', '广水市', '421300', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1140, '341823', '泾　县', '341800', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1188, '350505', '泉港区', '350500', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1324, '361002', '临川区', '361000', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (317, '140981', '原平市', '140900', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1141, '341824', '绩溪县', '341800', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2603, '530721', '玉龙纳西族自治县', '530700', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (335, '141082', '霍州市', '141000', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2912, '620723', '临泽县', '620700', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2857, '610901', '市辖区', '610900', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2155, '451026', '那坡县', '451000', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2382, '511701', '市辖区', '511700', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2938, '621026', '宁　县', '621000', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1138, '341821', '郎溪县', '341800', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (279, '140721', '榆社县', '140700', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2922, '620826', '静宁县', '620800', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (413, '150781', '满洲里市', '150700', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2611, '530823', '景东彝族自治县', '530800', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2157, '451028', '乐业县', '451000', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (404, '150701', '市辖区', '150700', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (3143, '659003', '图木舒克市', '659000', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (423, '150824', '乌拉特中旗', '150800', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (333, '141034', '汾西县', '141000', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (277, '140701', '市辖区', '140700', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1354, '370113', '长清区', '370100', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2266, '510114', '新都区', '510100', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1741, '420804', '掇刀区', '420800', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (409, '150724', '鄂温克族自治旗', '150700', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (319, '141002', '尧都区', '141000', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (3040, '640501', '市辖区', '640500', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1500, '371724', '巨野县', '371700', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (411, '150726', '新巴尔虎左旗', '150700', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1326, '361022', '黎川县', '361000', null, null);
commit;
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2859, '610921', '汉阴县', '610900', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1921, '431382', '涟源市', '431300', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2363, '511424', '丹棱县', '511400', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2361, '511422', '彭山县', '511400', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2870, '611021', '洛南县', '611000', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2183, '451324', '金秀瑶族自治县', '451300', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1328, '361024', '崇仁县', '361000', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2204, '469007', '东方市', '469000', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1679, '411728', '遂平县', '411700', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2150, '451021', '田阳县', '451000', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1021, '331181', '龙泉市', '331100', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1917, '431302', '娄星区', '431300', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (340, '141123', '兴　县', '141100', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1344, '361128', '鄱阳县', '361100', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2076, '450109', '邕宁区', '450100', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (343, '141126', '石楼县', '141100', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1493, '371625', '博兴县', '371600', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (408, '150723', '鄂伦春自治旗', '150700', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (326, '141027', '浮山县', '141000', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2944, '621123', '渭源县', '621100', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1308, '360828', '万安县', '360800', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (310, '140926', '静乐县', '140900', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2115, '450405', '长洲区', '450400', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1680, '411729', '新蔡县', '411700', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2390, '511801', '市辖区', '511800', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1303, '360823', '峡江县', '360800', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (928, '330109', '萧山区', '330100', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (336, '141101', '市辖区', '141100', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (821, '320206', '惠山区', '320200', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (982, '330703', '金东区', '330700', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2588, '530524', '昌宁县', '530500', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2404, '512001', '市辖区', '512000', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (292, '140822', '万荣县', '140800', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (284, '140726', '太谷县', '140700', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1330, '361026', '宜黄县', '361000', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1919, '431322', '新化县', '431300', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2166, '451201', '市辖区', '451200', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1168, '350304', '荔城区', '350300', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2956, '621227', '徽　县', '621200', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1114, '341421', '庐江县', '341400', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2399, '511901', '市辖区', '511900', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2602, '530702', '古城区', '530700', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1321, '360982', '樟树市', '360900', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1235, '350926', '柘荣县', '350900', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (297, '140827', '垣曲县', '140800', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (420, '150821', '五原县', '150800', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2397, '511826', '芦山县', '511800', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2918, '620822', '灵台县', '620800', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2625, '530926', '耿马傣族佤族自治县', '530900', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2858, '610902', '汉滨区', '610900', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2407, '512022', '乐至县', '512000', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (3121, '654023', '霍城县', '654000', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (820, '320205', '锡山区', '320200', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2471, '520222', '盘　县', '520200', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1490, '371622', '阳信县', '371600', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2405, '512002', '雁江区', '512000', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2191, '451425', '天等县', '451400', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (418, '150801', '市辖区', '150800', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (778, '231282', '肇东市', '231200', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (434, '150927', '察哈尔右翼中旗', '150900', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1678, '411727', '汝南县', '411700', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1234, '350925', '周宁县', '350900', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2606, '530724', '宁蒗彝族自治县', '530700', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2090, '450223', '鹿寨县', '450200', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (389, '150521', '科尔沁左翼中旗', '150500', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2160, '451031', '隆林各族自治县', '451000', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2216, '469038', '南沙群岛', '469000', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (401, '150625', '杭锦旗', '150600', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2614, '530826', '江城哈尼族彝族自治县', '530800', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (396, '150602', '东胜区', '150600', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1338, '361122', '广丰县', '361100', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1124, '341524', '金寨县', '341500', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1501, '371725', '郓城县', '371700', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (334, '141081', '侯马市', '141000', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2587, '530523', '龙陵县', '530500', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2904, '620602', '凉州区', '620600', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2208, '469028', '临高县', '469000', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (427, '150902', '集宁区', '150900', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2474, '520303', '汇川区', '520300', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2186, '451402', '江洲区', '451400', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2395, '511824', '石棉县', '511800', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2402, '511922', '南江县', '511900', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (309, '140925', '宁武县', '140900', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2408, '512081', '简阳市', '512000', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2074, '450107', '西乡塘区', '450100', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1671, '411702', '驿城区', '411700', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1494, '371626', '邹平县', '371600', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2075, '450108', '良庆区', '450100', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2199, '469001', '五指山市', '469000', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (813, '320116', '六合区', '320100', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2946, '621125', '漳　县', '621100', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1317, '360924', '宜丰县', '360900', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1728, '420607', '襄阳区', '420600', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2916, '620802', '崆峒区', '620800', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2156, '451027', '凌云县', '451000', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2909, '620702', '甘州区', '620700', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2915, '620801', '市辖区', '620800', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2078, '450123', '隆安县', '450100', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2592, '530622', '巧家县', '530600', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2593, '530623', '盐津县', '530600', null, null);
commit;
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1118, '341501', '市辖区', '341500', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (398, '150622', '准格尔旗', '150600', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2326, '510904', '安居区', '510900', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (278, '140702', '榆次区', '140700', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (917, '321311', '宿豫区', '321300', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (288, '140781', '介休市', '140700', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1016, '331123', '遂昌县', '331100', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1128, '341621', '涡阳县', '341600', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2924, '620902', '肃州区', '620900', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1135, '341723', '青阳县', '341700', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (3120, '654022', '察布查尔锡伯自治县', '654000', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2917, '620821', '泾川县', '620800', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (331, '141032', '永和县', '141000', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2930, '620982', '敦煌市', '620900', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (399, '150623', '鄂托克前旗', '150600', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1435, '370903', '岱岳区', '370900', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2608, '530802', '翠云区', '530800', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2860, '610922', '石泉县', '610900', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2933, '621021', '庆城县', '621000', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (283, '140725', '寿阳县', '140700', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2203, '469006', '万宁市', '469000', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1342, '361126', '弋阳县', '361100', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2849, '610824', '靖边县', '610800', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2184, '451381', '合山市', '451300', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1309, '360829', '安福县', '360800', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (417, '150785', '根河市', '150700', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2177, '451281', '宜州市', '451200', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (3125, '654027', '特克斯县', '654000', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (285, '140727', '祁　县', '140700', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2848, '610823', '横山县', '610800', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2079, '450124', '马山县', '450100', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2597, '530627', '镇雄县', '530600', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1343, '361127', '余干县', '361100', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (876, '320803', '楚州区', '320800', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1112, '341401', '市辖区', '341400', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (392, '150524', '库伦旗', '150500', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2616, '530828', '澜沧拉祜族自治县', '530800', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1169, '350305', '秀屿区', '350300', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1301, '360821', '吉安县', '360800', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2910, '620721', '肃南裕固族自治县', '620700', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2913, '620724', '高台县', '620700', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (387, '150501', '市辖区', '150500', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1670, '411701', '市辖区', '411700', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1310, '360830', '永新县', '360800', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (904, '321112', '丹徒区', '321100', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2923, '620901', '市辖区', '620900', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (426, '150901', '市辖区', '150900', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1327, '361023', '南丰县', '361000', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (3122, '654024', '巩留县', '654000', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (316, '140932', '偏关县', '140900', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1300, '360803', '青原区', '360800', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1314, '360921', '奉新县', '360900', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1780, '421301', '市辖区', '421300', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2952, '621223', '宕昌县', '621200', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (341, '141124', '临　县', '141100', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1664, '411624', '沈丘县', '411600', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1136, '341801', '市辖区', '341800', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2189, '451423', '龙州县', '451400', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (895, '321003', '邗江区', '321000', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1822, '430405', '珠晖区', '430400', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1307, '360827', '遂川县', '360800', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2851, '610826', '绥德县', '610800', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (289, '140801', '市辖区', '140800', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1233, '350924', '寿宁县', '350900', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2600, '530630', '水富县', '530600', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2164, '451122', '钟山县', '451100', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1487, '371601', '市辖区', '371600', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (877, '320804', '淮阴区', '320800', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2162, '451102', '八步区', '451100', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2624, '530925', '双江拉祜族佤族布朗族傣族自治县', '530900', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (3142, '659002', '阿拉尔市', '659000', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (3042, '640521', '中宁县', '640500', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1535, '410307', '洛龙区', '410300', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (328, '141029', '乡宁县', '141000', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1341, '361125', '横峰县', '361100', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (346, '141129', '中阳县', '141100', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1015, '331122', '缙云县', '331100', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2905, '620621', '民勤县', '620600', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2853, '610828', '佳　县', '610800', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1311, '360881', '井冈山市', '360800', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2856, '610831', '子洲县', '610800', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1335, '361101', '市辖区', '361100', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2939, '621027', '镇原县', '621000', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2487, '520401', '市辖区', '520400', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1345, '361129', '万年县', '361100', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (775, '231225', '明水县', '231200', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (303, '140901', '市辖区', '140900', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2943, '621122', '陇西县', '621100', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2926, '620922', '安西县', '620900', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1499, '371723', '成武县', '371700', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2852, '610827', '米脂县', '610800', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1559, '410505', '殷都区', '410500', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (3034, '640401', '市辖区', '640400', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (3144, '659004', '五家渠市', '659000', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2231, '500114', '黔江区', '500100', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (300, '140830', '芮城县', '140800', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2213, '469035', '保亭黎族苗族自治县', '469000', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2867, '610929', '白河县', '610900', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (425, '150826', '杭锦后旗', '150800', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2594, '530624', '大关县', '530600', null, null);
commit;
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (393, '150525', '奈曼旗', '150500', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (338, '141121', '文水县', '141100', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (3037, '640423', '隆德县', '640400', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (325, '141026', '安泽县', '141000', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2868, '611001', '市辖区', '611000', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2489, '520421', '平坝县', '520400', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (403, '150627', '伊金霍洛旗', '150600', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1495, '371701', '市辖区', '371700', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (406, '150721', '阿荣旗', '150700', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (332, '141033', '蒲　县', '141000', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1012, '331101', '市辖区', '331100', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (318, '141001', '市辖区', '141000', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (649, '230111', '呼兰区', '230100', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2981, '630123', '湟源县', '630100', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1332, '361028', '资溪县', '361000', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (349, '141182', '汾阳市', '141100', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1614, '411104', '召陵区', '411100', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2601, '530701', '市辖区', '530700', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2093, '450226', '三江侗族自治县', '450200', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1299, '360802', '吉州区', '360800', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1560, '410506', '龙安区', '410500', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2768, '610116', '长安区', '610100', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1113, '341402', '居巢区', '341400', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2595, '530625', '永善县', '530600', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2869, '611002', '商州区', '611000', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (323, '141024', '洪洞县', '141000', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1823, '430406', '雁峰区', '430400', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2951, '621222', '文　县', '621200', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2908, '620701', '市辖区', '620700', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2862, '610924', '紫阳县', '610900', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2359, '511402', '东坡区', '511400', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2081, '450126', '宾阳县', '450100', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2935, '621023', '华池县', '621000', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (431, '150924', '兴和县', '150900', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2871, '611022', '丹凤县', '611000', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (345, '141128', '方山县', '141100', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (330, '141031', '隰　县', '141000', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2393, '511822', '荥经县', '511800', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (412, '150727', '新巴尔虎右旗', '150700', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1489, '371621', '惠民县', '371600', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2091, '450224', '融安县', '450200', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1117, '341424', '和　县', '341400', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (301, '140881', '永济市', '140800', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (414, '150782', '牙克石市', '150700', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (315, '140931', '保德县', '140900', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2169, '451222', '天峨县', '451200', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (3119, '654021', '伊宁县', '654000', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2401, '511921', '通江县', '511900', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (66, '130207', '丰南区', '130200', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1126, '341601', '市辖区', '341600', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1677, '411726', '泌阳县', '411700', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2490, '520422', '普定县', '520400', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (405, '150702', '海拉尔区', '150700', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2206, '469026', '屯昌县', '469000', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2607, '530801', '市辖区', '530800', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2188, '451422', '宁明县', '451400', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (415, '150783', '扎兰屯市', '150700', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1119, '341502', '金安区', '341500', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2396, '511825', '天全县', '511800', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1781, '421302', '曾都区', '421300', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2865, '610927', '镇坪县', '610900', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2903, '620601', '市辖区', '620600', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2863, '610925', '岚皋县', '610900', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1305, '360825', '永丰县', '360800', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (772, '231222', '兰西县', '231200', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2586, '530522', '腾冲县', '530500', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (941, '330212', '鄞州区', '330200', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1228, '350901', '市辖区', '350900', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (347, '141130', '交口县', '141100', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (400, '150624', '鄂托克旗', '150600', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2928, '620924', '阿克塞哈萨克族自治县', '620900', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (3024, '640181', '灵武市', '640100', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1347, '361181', '德兴市', '361100', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2931, '621001', '市辖区', '621000', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2383, '511702', '通川区', '511700', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (314, '140930', '河曲县', '140900', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2619, '530902', '临翔区', '530900', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2604, '530722', '永胜县', '530700', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1304, '360824', '新干县', '360800', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1667, '411627', '太康县', '411600', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2207, '469027', '澄迈县', '469000', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (779, '231283', '海伦市', '231200', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1503, '371727', '定陶县', '371700', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1125, '341525', '霍山县', '341500', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (329, '141030', '大宁县', '141000', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (388, '150502', '科尔沁区', '150500', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (648, '230109', '松北区', '230100', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2406, '512021', '安岳县', '512000', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2154, '451025', '靖西县', '451000', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1134, '341722', '石台县', '341700', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2947, '621126', '岷　县', '621100', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2622, '530923', '永德县', '530900', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2267, '510115', '温江区', '510100', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2591, '530621', '鲁甸县', '530600', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (312, '140928', '五寨县', '140900', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1232, '350923', '屏南县', '350900', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2192, '451481', '凭祥市', '451400', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (397, '150621', '达拉特旗', '150600', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1322, '360983', '高安市', '360900', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1013, '331102', '莲都区', '331100', null, null);
commit;
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2185, '451401', '市辖区', '451400', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (850, '320506', '吴中区', '320500', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1123, '341523', '舒城县', '341500', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2615, '530827', '孟连傣族拉祜族佤族自治县', '530800', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (199, '131003', '广阳区', '131000', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (3027, '640205', '惠农区', '640200', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1676, '411725', '确山县', '411700', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (407, '150722', '莫力达瓦达斡尔族自治旗', '150700', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (969, '330503', '南浔区', '330500', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1127, '341602', '谯城区', '341600', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2861, '610923', '宁陕县', '610900', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1313, '360902', '袁州区', '360900', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2955, '621226', '礼　县', '621200', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1320, '360981', '丰城市', '360900', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (342, '141125', '柳林县', '141100', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (67, '130208', '丰润区', '130200', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2187, '451421', '扶绥县', '451400', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (3038, '640424', '泾源县', '640400', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2232, '500115', '长寿区', '500100', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2179, '451302', '兴宾区', '451300', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1116, '341423', '含山县', '341400', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (291, '140821', '临猗县', '140800', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2364, '511425', '青神县', '511400', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2152, '451023', '平果县', '451000', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1674, '411723', '平舆县', '411700', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1716, '420506', '夷陵区', '420500', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2844, '610801', '市辖区', '610800', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (776, '231226', '绥棱县', '231200', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2907, '620623', '天祝藏族自治县', '620600', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (282, '140724', '昔阳县', '140700', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1497, '371721', '曹　县', '371700', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2921, '620825', '庄浪县', '620800', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1231, '350922', '古田县', '350900', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2167, '451202', '金城江区', '451200', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1504, '371728', '东明县', '371700', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2957, '621228', '两当县', '621200', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (769, '231201', '市辖区', '231200', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2596, '530626', '绥江县', '530600', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1143, '341881', '宁国市', '341800', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1673, '411722', '上蔡县', '411700', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2599, '530629', '威信县', '530600', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2391, '511802', '雨城区', '511800', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2151, '451022', '田东县', '451000', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2209, '469030', '白沙黎族自治县', '469000', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2173, '451226', '环江毛南族自治县', '451200', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (436, '150929', '四子王旗', '150900', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2190, '451424', '大新县', '451400', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (433, '150926', '察哈尔右翼前旗', '150900', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (304, '140902', '忻府区', '140900', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (3021, '640106', '金凤区', '640100', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2463, '520114', '小河区', '520100', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2360, '511421', '仁寿县', '511400', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2612, '530824', '景谷傣族彝族自治县', '530800', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2362, '511423', '洪雅县', '511400', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1237, '350982', '福鼎市', '350900', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1663, '411623', '商水县', '411600', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (313, '140929', '岢岚县', '140900', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1825, '430408', '蒸湘区', '430400', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1502, '371726', '鄄城县', '371700', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (437, '150981', '丰镇市', '150900', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (3019, '640104', '兴庆区', '640100', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2605, '530723', '华坪县', '530700', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2388, '511725', '渠　县', '511700', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2082, '450127', '横　县', '450100', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (337, '141102', '离石区', '141100', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2214, '469036', '琼中黎族苗族自治县', '469000', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2906, '620622', '古浪县', '620600', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2617, '530829', '西盟佤族自治县', '530800', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2180, '451321', '忻城县', '451300', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (294, '140824', '稷山县', '140800', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2385, '511722', '宣汉县', '511700', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2874, '611025', '镇安县', '611000', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1337, '361121', '上饶县', '361100', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2950, '621221', '成　县', '621200', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (422, '150823', '乌拉特前旗', '150800', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2925, '620921', '金塔县', '620900', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2172, '451225', '罗城仫佬族自治县', '451200', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (299, '140829', '平陆县', '140800', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1019, '331126', '庆元县', '331100', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2387, '511724', '大竹县', '511700', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2940, '621101', '市辖区', '621100', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (419, '150802', '临河区', '150800', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2325, '510903', '船山区', '510900', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2403, '511923', '平昌县', '511900', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (842, '320412', '武进区', '320400', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (327, '141028', '吉　县', '141000', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2170, '451223', '凤山县', '451200', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (428, '150921', '卓资县', '150900', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1298, '360801', '市辖区', '360800', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1498, '371722', '单　县', '371700', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2875, '611026', '柞水县', '611000', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2211, '469033', '乐东黎族自治县', '469000', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1336, '361102', '信州区', '361100', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1666, '411626', '淮阳县', '411600', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1675, '411724', '正阳县', '411700', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2392, '511821', '名山县', '511800', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2929, '620981', '玉门市', '620900', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1824, '430407', '石鼓区', '430400', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1302, '360822', '吉水县', '360800', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (410, '150725', '陈巴尔虎旗', '150700', null, null);
commit;
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2178, '451301', '市辖区', '451300', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2866, '610928', '旬阳县', '610900', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1333, '361029', '东乡县', '361000', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2941, '621102', '安定区', '621100', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2148, '451001', '市辖区', '451000', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (3036, '640422', '西吉县', '640400', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1229, '350902', '蕉城区', '350900', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1339, '361123', '玉山县', '361100', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2589, '530601', '市辖区', '530600', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1020, '331127', '景宁畲族自治县', '331100', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1329, '361025', '乐安县', '361000', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2953, '621224', '康　县', '621200', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (929, '330110', '余杭区', '330100', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (430, '150923', '商都县', '150900', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (770, '231202', '北林区', '231200', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1496, '371702', '牡丹区', '371700', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1236, '350981', '福安市', '350900', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2158, '451029', '田林县', '451000', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2182, '451323', '武宣县', '451300', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1661, '411621', '扶沟县', '411600', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2200, '469002', '琼海市', '469000', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2855, '610830', '清涧县', '610800', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2205, '469025', '定安县', '469000', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2175, '451228', '都安瑶族自治县', '451200', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1312, '360901', '市辖区', '360900', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2980, '630122', '湟中县', '630100', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1018, '331125', '云和县', '331100', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1672, '411721', '西平县', '411700', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (774, '231224', '庆安县', '231200', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (281, '140723', '和顺县', '140700', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (432, '150925', '凉城县', '150900', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (3124, '654026', '昭苏县', '654000', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1325, '361021', '南城县', '361000', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (3126, '654028', '尼勒克县', '654000', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (295, '140825', '新绛县', '140800', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1340, '361124', '铅山县', '361100', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (296, '140826', '绛　县', '140800', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (3035, '640402', '原州区', '640400', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2934, '621022', '环　县', '621000', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1132, '341702', '贵池区', '341700', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (429, '150922', '化德县', '150900', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (1331, '361027', '金溪县', '361000', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (290, '140802', '盐湖区', '140800', null, null);
insert into AREA (ID, CODE, NAME, CITY_CODE, PINYIN, SIMPLE_CODE)
values (2954, '621225', '西和县', '621200', null, null);
commit;
