DROP TABLE employee;

CREATE TABLE `employee` (
	`enum` INT(9) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'employee number, 직원 번호' PRIMARY KEY,
	`ename` VARCHAR(10) NOT NULL DEFAULT '' COMMENT 'employee name,  직원 이름',
	`egen` VARCHAR(10) NOT NULL DEFAULT '' COMMENT 'employee gender,  직원 성별',
	`eage` INT(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'employee age, 직원 나이',
	`erenum` VARCHAR(15) NOT NULL DEFAULT 0 COMMENT 'employee registration number, 주민 번호' UNIQUE KEY,
	`eadd` VARCHAR(100) NOT NULL DEFAULT '0' COMMENT 'employee address, 직원 주소',
	`eph` VARCHAR(15) NOT NULL DEFAULT '0' COMMENT 'employee phone number, 직원 핸드폰 번호' UNIQUE KEY,
	`eday` DATE NOT NULL DEFAULT '1900-01-01' COMMENT 'registration day, 최초 등록일',
	`edept` VARCHAR(10) NOT NULL DEFAULT '' COMMENT 'employee dept, 직원 부서',
	`epost` VARCHAR(10) NOT NULL DEFAULT '' COMMENT 'employee post, 직책'
)
COLLATE='utf8mb4_general_ci';


INSERT INTO employee VALUES(NULL, '왕껄껄', '여', 44, '750203-0020300', '경기도 성남시 어쩌구', '017-5234-1214', '2004-02-12', '사무과', '사장');
INSERT INTO employee VALUES(NULL, '박땡땡', '남', 24, '850203-1000300', '경기도 성남시 어쩌구', '010-5234-1214', '2010-02-12', '신경외과', '신경전문의');
INSERT INTO employee VALUES(NULL, '박땅땅', '여', 47, '850203-2000030', '경기도 성남시 어쩌구', '010-5234-1734', '2010-12-12', '한방재활과','한방전문의');
INSERT INTO employee VALUES(NULL, '박호호', '남', 47, '800203-3000030', '경기도 성남시 어쩌구', '010-5534-1734', '2013-10-12', '기획과','기획담당자');
INSERT INTO employee VALUES(NULL, '박하', '여', 57, '700203-0000030', '경기도 성남시 어쩌구', '010-5534-1739', '2010-10-12','한방재활과','한방전문의');
INSERT INTO employee VALUES(NULL, '박오오', '남', 37, '770203-3000030', '경기도 성남시 어쩌구', '010-5534-9734', '2010-12-12','이비인후과','이비인후전문의');
INSERT INTO employee VALUES(NULL, '박호호', '여', 37, '780203-4000030', '경기도 성남시 어쩌구', '010-5534-1934', '2013-10-12','사무과','사무보조');

SELECT * FROM employee;
