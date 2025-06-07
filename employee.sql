-- 계정:system > DB: system > 테이블
-- PRIMARY KEY : 중복 불허, NULL(비어있음) 불허
CREATE TABLE employee(
    -- 칼럼명 자료형
    id      CHAR(4) PRIMARY KEY, -- 사번
    name    VARCHAR2(10) NOT NULL,  -- 이름
    salary  NUMBER         -- 급여
);

-- 사원 추가
INSERT INTO employee(id, name, salary) VALUES ('e101','장그래', 2000000);
INSERT INTO employee(id, name, salary) VALUES ('e102', '오상식', 3000000);
-- INSERT INTO employee(id, name, salary) VALUES ('e102', '한강', 5000000);
INSERT INTO employee(id, name) VALUES ('e103', '한강');
--INSERT INTO employee(id, salary) VALUES ('e104', 2500000);
INSERT INTO employee(id, name, salary) VALUES ('e104', '테스터', 3000000);

-- '테스터'인 사원 삭제
DELETE FROM employee
WHERE id = 'e104';

-- 복구(취소) ROLLBACK
ROLLBACK;

-- 수행(트랜잭션) 완료
-- 커밋(삽입, 수정, 삭제시 변경 내용을 DB에 반영함)
COMMIT;

-- 사원 검색
SELECT * FROM employee;

-- 급여가 300만원 이상인 사원 검색
SELECT * FROM employee WHERE salary >= 3000000;

-- '한강'의 급여를 400만원으로 수정
UPDATE employee SET salary = 4000000
WHERE id = 'e103';

-- 급여가 없는 사원 검색
SELECT * FROM employee 
WHERE salary IS NULL;

-- 방법1 - 이름이 '오상식'인 사원의 정보
SELECT * FROM employee 
WHERE name = '오상식';

-- 방법2 - 이름이 '오상식'인 사원의 정보
SELECT * FROM employee 
WHERE name LIKE '오상식';



-- 테이블 삭제
DROP TABLE employee;