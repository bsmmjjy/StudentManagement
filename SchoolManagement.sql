-- 创建数据库（如果不存在）
CREATE DATABASE IF NOT EXISTS school_management;

-- 使用该数据库
USE school_management;

-- 创建班级表（对应 ClassEntity）
CREATE TABLE IF NOT EXISTS class_entity (
    class_id BIGINT AUTO_INCREMENT PRIMARY KEY,
    class_name VARCHAR(255)
);

-- 创建学生表（对应 StudentEntity）
CREATE TABLE IF NOT EXISTS student_entity (
    student_id BIGINT AUTO_INCREMENT PRIMARY KEY,
    student_name VARCHAR(255),
    education_level VARCHAR(255),
    violation_count INT,
    class_id BIGINT,
    FOREIGN KEY (class_id) REFERENCES class_entity(class_id)
);

-- 插入 3 个班级数据
INSERT INTO class_entity (class_name) VALUES
('计算机科学与技术 1 班'),
('软件工程 2 班'),
('数据科学与大数据技术 3 班');

-- 插入 60 条学生数据，每个班级 20 条
-- 计算机科学与技术 1 班
INSERT INTO student_entity (student_name, education_level, violation_count, class_id) VALUES
('赵一', '本科', FLOOR(RAND() * 5), 1),
('钱二', '本科', FLOOR(RAND() * 5), 1),
('孙三', '本科', FLOOR(RAND() * 5), 1),
('李四', '本科', FLOOR(RAND() * 5), 1),
('周五', '本科', FLOOR(RAND() * 5), 1),
('吴六', '本科', FLOOR(RAND() * 5), 1),
('郑七', '本科', FLOOR(RAND() * 5), 1),
('王八', '本科', FLOOR(RAND() * 5), 1),
('冯九', '本科', FLOOR(RAND() * 5), 1),
('陈十', '本科', FLOOR(RAND() * 5), 1),
('褚十一', '本科', FLOOR(RAND() * 5), 1),
('卫十二', '本科', FLOOR(RAND() * 5), 1),
('蒋十三', '本科', FLOOR(RAND() * 5), 1),
('沈十四', '本科', FLOOR(RAND() * 5), 1),
('韩十五', '本科', FLOOR(RAND() * 5), 1),
('杨十六', '本科', FLOOR(RAND() * 5), 1),
('朱十七', '本科', FLOOR(RAND() * 5), 1),
('秦十八', '本科', FLOOR(RAND() * 5), 1),
('尤十九', '本科', FLOOR(RAND() * 5), 1),
('许二十', '本科', FLOOR(RAND() * 5), 1);

-- 软件工程 2 班
INSERT INTO student_entity (student_name, education_level, violation_count, class_id) VALUES
('何二十一', '本科', FLOOR(RAND() * 5), 2),
('吕二十二', '本科', FLOOR(RAND() * 5), 2),
('施二十三', '本科', FLOOR(RAND() * 5), 2),
('张二十四', '本科', FLOOR(RAND() * 5), 2),
('孔二十五', '本科', FLOOR(RAND() * 5), 2),
('曹二十六', '本科', FLOOR(RAND() * 5), 2),
('严二十七', '本科', FLOOR(RAND() * 5), 2),
('华二十八', '本科', FLOOR(RAND() * 5), 2),
('金二十九', '本科', FLOOR(RAND() * 5), 2),
('魏三十', '本科', FLOOR(RAND() * 5), 2),
('陶三十一', '本科', FLOOR(RAND() * 5), 2),
('姜三十二', '本科', FLOOR(RAND() * 5), 2),
('戚三十三', '本科', FLOOR(RAND() * 5), 2),
('谢三十四', '本科', FLOOR(RAND() * 5), 2),
('邹三十五', '本科', FLOOR(RAND() * 5), 2),
('喻三十六', '本科', FLOOR(RAND() * 5), 2),
('柏三十七', '本科', FLOOR(RAND() * 5), 2),
('水三十八', '本科', FLOOR(RAND() * 5), 2),
('窦三十九', '本科', FLOOR(RAND() * 5), 2),
('章四十', '本科', FLOOR(RAND() * 5), 2);

-- 数据科学与大数据技术 3 班
INSERT INTO student_entity (student_name, education_level, violation_count, class_id) VALUES
('云四十一', '本科', FLOOR(RAND() * 5), 3),
('苏四十二', '本科', FLOOR(RAND() * 5), 3),
('潘四十三', '本科', FLOOR(RAND() * 5), 3),
('葛四十四', '本科', FLOOR(RAND() * 5), 3),
('奚四十五', '本科', FLOOR(RAND() * 5), 3),
('范四十六', '本科', FLOOR(RAND() * 5), 3),
('彭四十七', '本科', FLOOR(RAND() * 5), 3),
('郎四十八', '本科', FLOOR(RAND() * 5), 3),
('鲁四十九', '本科', FLOOR(RAND() * 5), 3),
('韦五十', '本科', FLOOR(RAND() * 5), 3),
('昌五十一', '本科', FLOOR(RAND() * 5), 3),
('马五十二', '本科', FLOOR(RAND() * 5), 3),
('苗五十三', '本科', FLOOR(RAND() * 5), 3),
('凤五十四', '本科', FLOOR(RAND() * 5), 3),
('花五十五', '本科', FLOOR(RAND() * 5), 3),
('方五十六', '本科', FLOOR(RAND() * 5), 3),
('俞五十七', '本科', FLOOR(RAND() * 5), 3),
('任五十八', '本科', FLOOR(RAND() * 5), 3),
('袁五十九', '本科', FLOOR(RAND() * 5), 3),
('柳六十', '本科', FLOOR(RAND() * 5), 3);
# @author 重庆邮电大学2024届软件工程12班郭景顥