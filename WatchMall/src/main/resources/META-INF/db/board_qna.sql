-- user id: watch
-- user pw: oracle123

create table board_qna (
    bq_num      number(4) primary key,
    bq_title    varchar2(100) not null,
    bq_writer   varchar2(20) default 'guest',
    bq_content  varchar2(1000) default 'none',
    bq_regdate  date not null,
    bq_hitcount number(4) default 0
);

create sequence board_qna_seq;

insert into board_qna values(board_qna_seq.nextval,'title01','guest01','hello spring01',sysdate, 0);
insert into board_qna values(board_qna_seq.nextval,'title02','guest02','hello spring02',sysdate, 0);
insert into board_qna values(board_qna_seq.nextval,'title03','guest03','hello spring03',sysdate, 0);
insert into board_qna values(board_qna_seq.nextval,'title04','guest04','hello spring04',sysdate, 0);
insert into board_qna values(board_qna_seq.nextval,'title05','guest05','hello spring05',sysdate, 0);
insert into board_qna values(board_qna_seq.nextval,'title06','guest06','hello spring06',sysdate, 0);
insert into board_qna values(board_qna_seq.nextval,'title07','guest07','hello spring07',sysdate, 0);
insert into board_qna values(board_qna_seq.nextval,'title08','guest08','hello spring08',sysdate, 0);
insert into board_qna values(board_qna_seq.nextval,'title09','guest09','hello spring09',sysdate, 0);
insert into board_qna values(board_qna_seq.nextval,'title10','guest10','hello spring10',sysdate, 0);
insert into board_qna values(board_qna_seq.nextval,'title11','guest11','hello spring11',sysdate, 0);
insert into board_qna values(board_qna_seq.nextval,'title12','guest12','hello spring12',sysdate, 0);
insert into board_qna values(board_qna_seq.nextval,'title13','guest13','hello spring13',sysdate, 0);

select * from board_qna;
