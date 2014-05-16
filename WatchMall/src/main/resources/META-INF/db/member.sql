-- user id : watch
-- user pw : oracle123

create table member (
    m_num   number(3) primary key,
    m_id    varchar2(15) unique,
    m_pw    varchar2(15) not null,
    m_name  varchar2(20) not null,
    m_age	number(3) not null,
    m_phone varchar2(15) not null,
    m_addr  varchar2(30) not null
);

create sequence member_seq;

insert into member values(member_seq.nextval, 'admin', 'admin', 'admin', 28, '010-123-1234', '�����');
insert into member values(member_seq.nextval, 'kim01', '1234', '�����01', 10, '010-123-1234', '�����01');
insert into member values(member_seq.nextval, 'kim02', '1234', '�����02', 20, '010-123-1234', '�����02');
insert into member values(member_seq.nextval, 'kim03', '1234', '�����03', 30, '010-123-1234', '�����03');
insert into member values(member_seq.nextval, 'kim04', '1234', '�����04', 40, '010-123-1234', '�����04');