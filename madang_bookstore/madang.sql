
CREATE TABLE NewPublisher
( 
	pubname              varchar(30)  NOT NULL ,
	stname               varchar(30)  NULL ,
	officephone          integer  NULL ,
	PRIMARY KEY  CLUSTERED (pubname ASC)
);

CREATE TABLE NewBook
( 
	bookid               integer  NOT NULL ,
	bookname             varchar(30)  NULL ,
	price                integer  NULL ,
	pubname              varchar(30)  NOT NULL ,
	PRIMARY KEY  CLUSTERED (bookid ASC),
	 FOREIGN KEY (pubname) REFERENCES NewPublisher(pubname)
);

CREATE TABLE NewCustomer
( 
	custid               integer  NOT NULL ,
	name                 varchar(30)  NULL ,
	address              varchar(40)  NULL ,
	phone                varchar(30)  NULL ,
	PRIMARY KEY  CLUSTERED (custid ASC)
);

CREATE TABLE NewOrder
( 
	orderid              integer  NOT NULL ,
	custid               integer  NOT NULL ,
	bookid               integer  NOT NULL ,
	orderdate            datetime  NULL ,
	saleprice            integer  NULL ,
	PRIMARY KEY  CLUSTERED (orderid ASC),
	 FOREIGN KEY (bookid) REFERENCES NewBook(bookid),
	 FOREIGN KEY (custid) REFERENCES NewCustomer(custid)
);
