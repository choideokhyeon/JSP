select * from tbl_board;

create sequence board_seq
increment by 1
start with 1
MINVALUE 1
MAXVALUE 9999
NOCYCLE;

commit;