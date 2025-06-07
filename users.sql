-- DB(스키마) > 테이블 --
-- 회원(users) 테이블 생성
-- PRIMARY KEY : 중복 저장할 수 없고, NOT NULL 속성이 됨
CREATE TABLE users(
    userid  VARCHAR2(10) PRIMARY KEY,  -- 아이디(기본키)
    passwd  VARCHAR2(100) NOT NULL,  -- 비밀번호
    age NUMBER(3)  -- 나이
);

-- 자료 삽입
-- INSERT INTO 테이블이름 VALUES (칼럼1값, 칼럼2값)
INSERT INTO users(userid, passwd) VALUES ('today', '1234abcd##');
INSERT INTO users(userid, passwd) VALUES ('cloud', '1234abcd@@');
INSERT INTO users VALUES ('sky', '1234aabb', 21);

COMMIT; -- 수행 완료(변경된 내용 DB에 반영)

-- 검색
-- SELECT 칼럼이름 FROM 테이블 이름
SELECT * FROM users;

-- 회원의 아이디와 비밀번호를 검색
SELECT userid, passwd FROM users;

-- 아이디가 today인 회원의 정보 출력
SELECT * FROM users WHERE userid = 'today';

-- 테이블 삭제
DROP TABLE users;