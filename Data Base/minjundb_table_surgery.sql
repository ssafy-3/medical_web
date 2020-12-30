DROP TABLE surgery;

CREATE TABLE `surgery` (
	`snum` INT(9) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT COMMENT 'surgery number, 진료 번호' PRIMARY KEY,
	`pnum` INT(9) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'patients number, 환자 번호',
	`ppart` VARCHAR(10) NOT NULL DEFAULT '' COMMENT 'patients part, 부위',
	`edept` VARCHAR(10) NOT NULL DEFAULT '' COMMENT 'employee dept, 진료과',
	`enum` INT(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'employee name, 담당 의사 직원 번호',
	`insu` INT(1) NOT NULL DEFAULT 0 COMMENT 'type of insurance, 보험 종류',
	`rtime` DATETIME NOT NULL DEFAULT '1900-01-01 00:00:00' COMMENT 'registration time, 등록시간',
	`opinion` VARCHAR(200) NULL DEFAULT '' COMMENT 'opinion, 의사 소견'
)
COLLATE='utf8mb4_general_ci';

#외래키를 연결해 줍니다.
ALTER TABLE surgery ADD FOREIGN KEY (pnum) REFERENCES patients (pnum);
ALTER TABLE surgery ADD FOREIGN KEY (enum) REFERENCES employee (enum);


INSERT INTO surgery VALUES(NULL, 1, '턱관절', '정형외과', 1, 5,'2020-12-30 12:00:10', '어떠한 소견입니다.');
INSERT INTO surgery VALUES(NULL, 4, '다발성', '정형외과', 1, 5,'2020-12-30 12:00:10', '어떠한 소견입니다.');
INSERT INTO surgery VALUES(NULL, 3, '다발성', '정형외과', 1, 5,'2020-12-30 12:00:10', '어떠한 소견입니다.');
INSERT INTO surgery VALUES(NULL, 5, '턱관절', '한방과', 5, 5,'2020-12-30 12:00:10', '어떠한 소견입니다.');
INSERT INTO surgery VALUES(NULL, 2, '턱관절', '정형외과', 1, 5,'2020-12-30 12:00:10', '어떠한 소견입니다.');
INSERT INTO surgery VALUES(NULL, 5, '손목', '한방과', 5, 5,'2020-12-30 12:00:10', '어떠한 소견입니다.');
INSERT INTO surgery VALUES(NULL, 2, '손목', '정형외과', 1, 5,'2020-12-30 12:00:10', '어떠한 소견입니다.');
INSERT INTO surgery VALUES(NULL, 2, '다발성', '정형외과', 1, 5,'2020-12-30 12:00:10', '어떠한 소견입니다.');
INSERT INTO surgery VALUES(NULL, 2, '턱관절', '정형외과', 1, 5,'2020-12-30 12:00:10', '어떠한 소견입니다.');
INSERT INTO surgery VALUES(NULL, 3, '코', '이비인후과', 6, 5,'2020-12-30 12:00:10', '어떠한 소견입니다.');
INSERT INTO surgery VALUES(NULL, 1, '다발성', '정형외과', 1, 5,'2020-12-30 12:00:10', '어떠한 소견입니다.');
INSERT INTO surgery VALUES(NULL, 6, '등', '한방과', 1, 5,'2020-12-30 12:00:10', '어떠한 소견입니다.');
INSERT INTO surgery VALUES(NULL, 3, '턱관절', '정형외과', 1, 5,'2020-12-30 12:00:10', '어떠한 소견입니다.');
INSERT INTO surgery VALUES(NULL, 5, '허리', '한방과', 5, 5,'2020-12-30 12:00:10', '어떠한 소견입니다.');

SELECT * FROM patients;
SELECT * FROM employee;
SELECT * FROM surgery;
