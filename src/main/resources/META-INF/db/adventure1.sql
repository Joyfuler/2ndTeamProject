-- 1. DROP TABLE
DROP TABLE MEMBER;
DROP SEQUENCE CART_SEQ;
DROP TABLE CART;
DROP SEQUENCE ORDER_SEQ;
DROP TABLE ORDER;
DROP SEQUENCE BANNER_SEQ;
DROP TABLE BANNER;
DROP SEQUENCE EVENT_SEQ;
DROP TABLE EVENT;
DROP SEQUENCE PARADE_SEQ;
DROP TABLE PARADE;
SELECT * FROM MEMBER;
SELECT * FROM CART;
-- 2. CREATE TABLE
CREATE TABLE MEMBER
(
	MID VARCHAR2(20) NOT NULL PRIMARY KEY,
	MPW VARCHAR2(20) NOT NULL,
	MNAME VARCHAR2(20) NOT NULL,
	MPHONE VARCHAR2(20) NOT NULL,
	MEMAIL VARCHAR2(40) NOT NULL,
	MADDRESS1 VARCHAR2 (9),
	MADDRESS2 VARCHAR2 (1000),
    MADDRESS3 VARCHAR2 (1000),
    MRDATE DATE DEFAULT SYSDATE,	
    MLEVEL VARCHAR2 (1) DEFAULT '1',
    MPOINT NUMBER(9) DEFAULT 1000
);

CREATE SEQUENCE CART_SEQ MAXVALUE 99999
NOCACHE NOCYCLE;
CREATE TABLE CART(
    CID NUMBER(10) PRIMARY KEY,
    P1 NUMBER(10),
    P2 NUMBER(10),
    TYPE NUMBER(2),
    ATNAME1 VARCHAR2 (100),
    ATNAME2 VARCHAR2 (100),
    ATNAME3 VARCHAR2 (100),
    PRICE1 NUMBER(10),
    PRICE2 NUMBER(10),
    RESULT NUMBER(1),
    CRDATE DATE DEFAULT SYSDATE,
    VISITDATE DATE DEFAULT SYSDATE,
    MID VARCHAR2 (20)
    REFERENCES MEMBER(MID) NOT NULL
);

select A.*, (A.OP1 * A.OPRICE1 * OTYPE) AS FREE_TOTAL_ADULT,
(A.OP2 * A.OPRICE2 * OTYPE
from order_list A where cid in (3,4);

SELECT * FROM CART;
select * from member;

CREATE SEQUENCE ORDER_LIST_SEQ MAXVALUE 99999 NOCACHE NOCYCLE;
CREATE TABLE ORDER_LIST(
    OID NUMBER(10) PRIMARY KEY,
    OP1 NUMBER(10),
    OP2 NUMBER(10),
    OTYPE NUMBER(2),
    OATNAME1 VARCHAR2 (100),
    OATNAME2 VARCHAR2 (100),
    OATNAME3 VARCHAR2 (100),
    OPRICE1 NUMBER(10),
    OPRICE2 NUMBER(10),
    ORESULT NUMBER(1),
    OCRDATE DATE DEFAULT SYSDATE,
    OVISITDATE DATE DEFAULT SYSDATE,
    MID VARCHAR2 (20) REFERENCES MEMBER (MID) NOT NULL,
    CID NUMBER(10) REFERENCES CART (CID) NOT NULL
    
);
SELECT * FROM ORDER_LIST;
CREATE SEQUENCE BANNER_SEQ MAXVALUE 99999 NOCACHE NOCYCLE;
CREATE TABLE BANNER(
    BNO NUMBER(5) PRIMARY KEY,
    BTITLE VARCHAR2 (30),
    BORDER NUMBER(3) DEFAULT 1,
    USAGE VARCHAR2(1) DEFAULT 'Y',
    BRDATE DATE DEFAULT SYSDATE,
    BIMG VARCHAR2 (30)
    );  
CREATE SEQUENCE EVENT_SEQ MAXVALUE 99999 NOCACHE NOCYCLE;
CREATE TABLE EVENT(
    ENO NUMBER(5) PRIMARY KEY,
    EPERIOD VARCHAR2 (300),
    EINFO VARCHAR2 (1000),
    EINFO2 VARCHAR2 (1000),
    EIMAGE VARCHAR2 (100)
);

CREATE SEQUENCE ATTRACTION_SEQ MAXVALUE 99999 NOCACHE NOCYCLE;
CREATE TABLE ATTRACTION(
    AID NUMBER(5) PRIMARY KEY,
    ANAME VARCHAR2 (100) NOT NULL,
    ACONTENT CLOB,
    HEIGHT VARCHAR2(1000),
    AGE VARCHAR2 (1000),
    BEST VARCHAR2 (1), 
    STOPDAY VARCHAR2 (1),
    TAG1 VARCHAR2 (100),
    TAG2 VARCHAR2 (100),
    AIMAGE VARCHAR2 (255),
    HEADCOUNT NUMBER(4)
    );
    
CREATE SEQUENCE PARADE_SEQ MAXVALUE 99999 NOCACHE NOCYCLE;
CREATE TABLE PARADE(
    PNO NUMBER(5) PRIMARY KEY,
    PTITLE VARCHAR2 (100),
    PINFO VARCHAR2 (1000),
    PPLACE VARCHAR2 (300),
    PPERIOD VARCHAR2 (300),
    PCAUTION VARCHAR2 (1000),
    PIMG VARCHAR2 (300)
);

-- 3. Member Query

-- 1) 회원가입 joinMember
    INSERT INTO MEMBER (MID, MPW, MNAME, MPHONE, MEMAIL, 
    MADDRESS1, MADDRESS2, MADDRESS3)
    VALUES
    ('KIM', '1234', '김나리', '010-2525-3535', 'acc@ac.com',
    '133-100', '서울시 성동구 성수동', '1번지 21호');
    
-- 2) 회원정보수정 modifyMember
UPDATE MEMBER SET MPW = '222', 
    MNAME = '김김김',
    MPHONE = '010-2525-3535',
    MEMAIL = 'tt@rr.com',
    MADDRESS1 = '011336',
    MADDRESS2 = '서울시 잠수동',
    MADDRESS3 = '프로아파트'
    WHERE MID = 'one';
    
-- 3) 특정회원 정보 가져오기 getMember
    SELECT * FROM MEMBER WHERE MID = 'one';

-- 4) 회원탈퇴 withDrawalMember
    UPDATE MEMBER SET MLEVEL = '0' WHERE MID = 'one';

-- 5) 회원 장바구니 목록 cartList
    SELECT * FROM 
    (SELECT ROWNUM RN, A.* FROM
    (SELECT * FROM CART WHERE MID = 'one' ORDER BY CRDATE DESC) A) 
    WHERE RN BETWEEN 1 AND 2;

-- 6) 회원 주문내역 orderList
    SELECT * FROM 
    (SELECT ROWNUM RN, A.* FROM
    (SELECT * FROM ORDER_LIST WHERE MID = 'one' ORDER BY OCRDATE DESC) A) 
    WHERE RN BETWEEN 1 AND 2;


-- 4. CART QUERY
-- 장바구니 담기

INSERT INTO CART (CID,P1,P2,TYPE,ATNAME1,ATNAME2,ATNAME3,
PRICE1,PRICE2,RESULT)
    VALUES (CART_SEQ.NEXTVAL, 1,2,'1','아틀란티스','박물관','지하동굴',
    '25000','18000',0);

-- 5. ORDER QUERY
-- 주문내역 담기

INSERT INTO ORDER_LIST
(OID, OP1, OP2, OTYPE, OATNAME1, OATNAME2, OATNAME3,
OPRICE1, OPRICE2, ORESULT, MID)
    VALUES (ORDER_LIST_SEQ.NEXTVAL, 1,2,'1','아틀란티스','박물관','지하동굴',
'25000','18000',0, 'two');

-- 6. EVENT QUERY
-- 이벤트 추가
INSERT INTO EVENT (ENO, EPERIOD, EINFO, EINFO2, EIMAGE)
    VALUES
    (EVENT_SEQ.NEXTVAL, '2023년 5월 1일 ~ 5월 31일','월드카드로 최대 10만원 캐시백 혜택 챙겨요! 40000원', '행사기간 동안 월드카드 1회 이상 이용 및 2023.6.15(월)까지 국내외 가맹점에서 일시불 및 할부 합산 10만원 이상 이용 시 8만원 캐시백,
종합 자유이용권-어른: 40000원 청소년: 30000원 어린이: 28000원','card');

-- 7. ATTRACTION QUERY
-- 어트랙션 추가
INSERT INTO ATTRACTION (AID, ANAME, ACONTENT, HEIGHT, AGE, BEST, STOPDAY, TAG1, TAG2, AIMAGE, HEADCOUNT)
VALUES
(ATTRACTION_SEQ.NEXTVAL, '범퍼카' ,'화려한 조명과 신나는 음악 속에서 스릴만점의 자동차 경주가 펼쳐진다. 
앞에서 쾅~ 뒤에서 쾅~ 어디서 달려들지 모르는 좌충우돌 범퍼카! 부딪칠수록 즐거움이 더욱 커집니다.',
'125cm 이상 탑승가능', '65세 이하 탑승 가능', 'Y', 'N', '익사이팅', '어린이', 'car.jpg', 1);

-- 8. PARADE QUERY
-- 퍼레이드 추가
INSERT INTO PARADE (PNO, PTITLE, PINFO, PPLACE, PPERIOD, PCAUTION,PIMG,PIMG2)
VALUES (PARADE_SEQ.NEXTVAL, '카니발 판타지 퍼레이드', '브라질의 삼바, 베니스의 가면, 카리브 축제가 한자리에 모였다!<br>
		세계 유명 축제를 한 번에 즐길 수 있는 기회를 놓치지 마세요!','퍼레이드 길, 카니발 광장 (가이드맵 167)','11.17(금) ~ 12.18(일)',
        '※ 현장 상황 및 기상 예보에 따라 공연 일정이 변경 및 취소될 수 있습니다.
		※ 이용 정보-운영시간에서 공연시간 확인 가능합니다.','parade1.jpg','paradeDetail1');
commit;

select * from cart where cid in (3,4,7) and type=0;
select count(*) type0Cnt, sum(price1)+sum(price2) type0Sum from cart where cid in (3,4,7) and type=0;
select count(*) type0Cnt, sum(price1)+sum(price2) type1Sum from cart where cid in (3,4,7) and type=1;
select 
    (select count(*) from cart where cid in (3,4,7) and type=0) type0Cnt,
    (select sum(price1)+sum(price2) from cart where cid in (3,4,7) and type=0) type0Sum,
    (select count(*) from cart where cid in (3,4,7) and type=1) type1Cnt,
    (select sum(price1)+sum(price2) from cart where cid in (3,4,7) and type=1) type1Sum
    from dual;
