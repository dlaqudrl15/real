CREATE TABLE tbl_admin(
aid VARCHAR2(150),
apw VARCHAR2(600),
aauth  NUMBER DEFAULT 2,
aname VARCHAR2(100),
CONSTRAINT pk_admin_aid PRIMARY KEY(aid)
)
