create table tbl_order(
    orderId VARCHAR2(50),
    addressee varchar2(50) not null,
    mid varchar2(150),
    memberAddr1 varchar2(100) not null,
    memberAddr2 varchar2(100) not null,
    memberAddr3 varchar2(100) not null,
    orderState varchar2(30) not null,
    deliveryCost NUMBER not null,
    usePoint NUMBER not null,
    savePoint NUMBER not null,
    i_CATEGORY VARCHAR2(100),
    orderDate DATE DEFAULT SYSDATE,
    orderFinalSalePrice NUMBER not null,
    CONSTRAINT pk_order_orderId PRIMARY KEY(orderId)
)

create table tbl_orderItem(
    oid NUMBER,
    orderId varchar2(50),
    iId NUMBER,
    iName varchar2(60),
      iCount NUMBER not null,
    iPrice NUMBER not null,
    iDc NUMBER not null,
    orderState VARCHAR2(30),
    orderDate DATE DEFAULT SYSDATE,
    i_CATEGORY VARCHAR2(100),
    ifilename VARCHAR2(100),
    savePoint NUMBER not null,
    CONSTRAINT pk_orderItem_oid PRIMARY KEY(oid),
    CONSTRAINT fk_orderItem_orderId FOREIGN KEY (orderId) REFERENCES tbl_order(orderId)
)

create sequence seq_orderItem_oid

