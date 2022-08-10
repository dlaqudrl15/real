CREATE TABLE tbl_member(
mid VARCHAR2(150),
mpw VARCHAR2(600),
mname VARCHAR2(15),
memail VARCHAR2(300),
mphone VARCHAR2(15),
maddress1 VARCHAR2(300),
maddress2 VARCHAR2(300),
maddress3 VARCHAR2(300),
mbirth DATE,
macount NUMBER,
mmoney number default 10000000,
mpoint NUMBER,
msocial NUMBER default 0,
CONSTRAINT pk_member_mid PRIMARY KEY(mid)
)


