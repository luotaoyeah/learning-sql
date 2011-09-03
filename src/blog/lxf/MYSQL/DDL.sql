-- 列出所有的数据库
SHOW DATABASES;

-- 创建数据库
CREATE DATABASE test01;

-- 删除数据库
DROP DATABASE test01;

-- 切换数据库
USE test;

-- --------------------------------------------------

-- 列出所有的表
SHOW TABLES;

-- 删除表
DROP TABLE IF EXISTS foo;

-- 创建表
CREATE TABLE foo
    (
        id   BIGINT       NOT NULL AUTO_INCREMENT,
        name VARCHAR(100) NULL,
        PRIMARY KEY (id)
    )
ENGINE = InnoDB
DEFAULT CHARSET = utf8mb4;

-- 查看表的结构
DESC foo;

-- 显示建表的语句
SHOW CREATE TABLE foo;

-- 添加列
ALTER TABLE foo ADD COLUMN foo BIGINT NULL DEFAULT 9;

-- 修改列
ALTER TABLE foo CHANGE COLUMN foo bar BIGINT NOT NULL DEFAULT 8;

-- 删除列
ALTER TABLE foo DROP COLUMN bar;

-- --------------------------------------------------
