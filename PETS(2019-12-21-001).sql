/*
    번호        re_seq        NUMBER
    작성자      re_auth       nVARCHAR2(20)
    작성일      re_date       VARCHAR2(10)
    제목        re_subject    nVARCHAR2(125)
    내용        re_text       nVARCHAR2(1000)
*/

DROP TABLE tbl_review;
DELETE FROM tbl_review;

CREATE TABLE tbl_review (
    re_seq      NUMBER          NOT NULL    PRIMARY KEY,
    re_auth     nVARCHAR2(20)   NOT NULL,
    re_date     VARCHAR2(10)    NOT NULL,
    re_subject  nVARCHAR2(125)  NOT NULL,
    re_text     nVARCHAR2(1000) NOT NULL
);

CREATE SEQUENCE SEQ_RE
START WITH 1 INCREMENT BY 1;
	
INSERT INTO tbl_review (re_seq, re_auth, re_date, re_subject, re_text)
VALUES(SEQ_RE.NEXTVAL, '홍길동', '2019-12-21', '광주 동물병원 후기','광주 동물병원 후기입니다.');

SELECT * FROM tbl_review;