CREATE TABLE tbl_review(
rno NUMBER,
iId NUMBER,
mid VARCHAR2(150),
rtitle VARCHAR2(600),
rcontent VARCHAR2(3000),
regDay DATE DEFAULT SYSDATE,
updateDay DATE DEFAULT SYSDATE,
CONSTRAINT pk_review_rno PRIMARY KEY(rno), 
CONSTRAINT fk_review_iid FOREIGN KEY (iId) REFERENCES tbl_item(iId) ON DELETE CASCADE,
CONSTRAINT fk_review_mid FOREIGN KEY (mid) REFERENCES tbl_member(mid) ON DELETE CASCADE
)
create table reviewfileupload(
rfilename VARCHAR2(300),
rno NUMBER,
CONSTRAINT fk_tbl_review FOREIGN KEY (rno) REFERENCES tbl_review(rno) ON DELETE CASCADE
)

CREATE SEQUENCE seq_review_rno


