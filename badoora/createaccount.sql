CREATE TABLE `test`.`create_account` (
`fname` VARCHAR(10) NULL COMMENT '',
`lname` VARCHAR(10) NULL COMMENT '',
`email` VARCHAR(45) NOT NULL COMMENT '',
`password` VARCHAR(45) NOT NULL COMMENT '',
`address` VARCHAR(45) NULL COMMENT '',
`gender` VARCHAR(10) NULL COMMENT '',
`counrty` VARCHAR(45) NULL COMMENT '',
`postal` VARCHAR(10) NULL COMMENT '',
`ccard` VARCHAR(20) NULL COMMENT '',
`cnum` VARCHAR(20) NULL COMMENT '',
`se` INT NULL COMMENT '',
`vnum` VARCHAR(10) NULL COMMENT '',
PRIMARY KEY (`email`)  COMMENT '');
