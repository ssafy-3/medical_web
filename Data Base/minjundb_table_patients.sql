DROP TABLE surgery;
DROP TABLE employee;
DROP TABLE patients;

CREATE TABLE `patients` (
	`pnum` INT(9) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'patients number, 환자 번호' PRIMARY KEY,
	`pname` VARCHAR(10) NOT NULL DEFAULT '' COMMENT 'patients name,  환자 이름',
	`pgen` VARCHAR(10) NOT NULL DEFAULT '' COMMENT 'patients gender,  환자 성별',
	`page` INT(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'patients age, 환자 나이',
	`prenum` VARCHAR(15) NOT NULL DEFAULT 0 COMMENT 'resident registration number, 주민 번호' UNIQUE KEY,
	`padd` VARCHAR(100) NOT NULL DEFAULT '0' COMMENT 'patients address, 환자 주소',
	`pph` VARCHAR(15) NOT NULL DEFAULT '0' COMMENT 'patients phone number, 환자 핸드폰 번호' UNIQUE KEY,
	`pday` DATE NOT NULL DEFAULT '1900-01-01' COMMENT 'registration day, 최초 등록일',
	`pnote` VARCHAR(100) NULL DEFAULT '0' COMMENT 'patients note, 비고란, 진상여부, 기타 코멘트'
)
COMMENT='#환자테이블\r\n속성: 환자번호(pnum),  환자이름(pname),  성별(pgen),  나이(page),  주소(padd),  핸드폰번호(pph),  최초등록일(pday),  비고(pnote)'
COLLATE='utf8mb4_general_ci'
;



INSERT INTO patients VALUES(NULL, '김땡땡', '남', 24, '950203-1000000', '경기도 성남시 어쩌구', '010-1234-1234', '2020-12-12','진상');
INSERT INTO patients VALUES(NULL, '김땅땅', '여', 27, '950203-2000030', '경기도 성남시 어쩌구', '010-1234-1734', '2020-12-12','');
INSERT INTO patients VALUES(NULL, '김호호', '남', 27, '000203-3000030', '경기도 성남시 어쩌구', '010-1534-1734', '2020-12-12','');
INSERT INTO patients VALUES(NULL, '김하', '여', 57, '500203-0000030', '경기도 성남시 어쩌구', '010-1534-1739', '2020-12-12','');
INSERT INTO patients VALUES(NULL, '김오오', '남', 17, '070203-3000030', '경기도 성남시 어쩌구', '010-1534-9734', '2020-12-12','');
INSERT INTO patients VALUES(NULL, '김호호', '여', 7, '080203-4000030', '경기도 성남시 어쩌구', '010-1534-1934', '2020-12-12','부모번호');

SELECT * FROM patients;
