INSERT INTO USER_ (USER_NAME, E_MAIL, USER_PASSWORD, CPF, USER_ESPA) 
VALUES ('João do Maranhão', 'joaomaranhao@gmail.com', '123456789', '00000000000', '880000');

INSERT INTO USER_ADDRESS (CEP, COUNTRY, REGION, CITY, DISTRICT, STREET, STREET_NUMBER, USER_ADDRESS_ESPA, USER_ID) 
VALUES (48495051, 'BRASIL', 'MARANHÃO', 'NÃO SEI', 'CENTRO', 'RUA MARANHÃO', 642, '880000', 1);

INSERT INTO USER_PURCHASE (VALUE_PURCHASE, USER_PURCHASE_ESPA, USER_ADDRESS_ID)
VALUES (20.45, '880000', 1);

INSERT INTO USER_PURCHASE (VALUE_PURCHASE, USER_PURCHASE_ESPA, USER_ADDRESS_ID)
VALUES (542.22, '880000', 1);

INSERT INTO USER_ (USER_NAME, E_MAIL, USER_PASSWORD, CPF, USER_ESPA) 
VALUES ('Arnaldo do Pará', 'arnaldopara@gmail.com', '123456789', '00000000000', '880000');

INSERT INTO USER_ADDRESS (CEP, COUNTRY, REGION, CITY, DISTRICT, STREET, STREET_NUMBER, USER_ADDRESS_ESPA, USER_ID) 
VALUES (48495051, 'BRASIL', 'PARA', 'NÃO SEI', 'CENTRO', 'RUA PARA', 751, '880000', 2);

INSERT INTO USER_PURCHASE (VALUE_PURCHASE, USER_PURCHASE_ESPA, USER_ADDRESS_ID)
VALUES (36.88, '880000', 2);

INSERT INTO USER_PURCHASE (VALUE_PURCHASE, USER_PURCHASE_ESPA, USER_ADDRESS_ID)
VALUES (987.78, '880000', 2);