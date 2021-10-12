/* ȸ�� ���� ���̺� */
create table member_info(
	mem_id varchar2(20) not null
	constraint member_info_pk primary key,
	mem_pw varchar2(20) not null,
	mem_username varchar2(20) not null,
	mem_nickname varchar2(20) not null,
	mem_email varchar2(50) not null,
	mem_tel varchar2(50) not null,
	mem_address varchar2(100) not null,
	mem_sign_up_date date not null
);

select * from member_info;

/* ������ ���̺� */
create table contest(
	cnt_num number(5) not null
	constraint contest_pk primary key,
	cnt_name varchar2(200) not null,
	cnt_host varchar2(50) not null,
	cnt_field varchar2(100) not null,
	cnt_qualification varchar2(50) not null,
	cnt_from_date date not null,
	cnt_to_date date not null,
	cnt_homepage varchar2(100) not null,
	cnt_content varchar2(4000) not null,
    cnt_img_big varchar(50),
    cnt_img_small varchar(50)
);

/* ������ ��ȣ ������ */
create sequence contest_number
	increment by 1
	start with 1
	minvalue 1
	maxvalue 99999
	nocycle
	nocache;

/* �����Խ��� ���̺� */
create table recruit_post(
	rp_num number(5) not null
	constraint recruit_post_pk primary key,
	mem_id varchar(20) not null,
	cnt_num number(5) not null,	
	rp_title varchar2(100) not null,
	rp_mem_num number(1) not null,
	rp_field number(1) not null,
	rp_content varchar2(4000),
	rp_date date not null,
	rp_progress number(1) not null,
	constraint rp_mem_id_fk foreign key(mem_id)
	references member_info(mem_id),
	constraint rp_cnt_num_fk foreign key(cnt_num)
	references contest(cnt_num)
);

/* ���� �Խ��� ��ȣ ������ */
create sequence recruit_post_number
	increment by 1
	start with 1
	minvalue 1
	maxvalue 99999
	nocycle
	nocache;

/* ���� ������ ���� ���̺� */
create table personal_contest(
	pcnt_num number(5) not null
	constraint personal_contest_pk primary key,
	mem_id varchar2(20) not null,
	cnt_num number(5) not null,
	pcnt_position varchar2(100) not null,
	pcnt_content varchar2(4000),
	pcnt_type number(1) not null,
	constraint pcnt_mem_id_fk foreign key(mem_id)
	references member_info(mem_id),
	constraint pcnt_cnt_num_fk foreign key(cnt_num)
	references contest(cnt_num)
);

/* ���� ������ ���� ��ȣ ������ */
create sequence personal_contest_number
	increment by 1
	start with 1
	minvalue 1
	maxvalue 99999
	nocycle
	nocache;

/* ���� ���̺� */
create table score(
	sc_num number(5) not null
	constraint score_pk primary key,
	mem_id varchar2(20),
	cnt_num number(5),
	sc_receive_id varchar2(20) not null,
	sc_receive number(1) not null,
	constraint sc_mem_id_fk foreign key (mem_id)
	references member_info(mem_id),
	constraint sc_cnt_num_fk foreign key (cnt_num)
	references contest(cnt_num)
);

/* ���� ���̺� ��ȣ ������ */
create sequence score_number
	increment by 1
	start with 1
	minvalue 1
	maxvalue 99999
	nocycle
	nocache;

/* ��� ���� ���̺� */
create table post_comment(
	pc_num number(5) not null
	constraint post_comment_pk primary key,
	rp_num number(5) not null,
	mem_id varchar2(20) not null,
	pc_content varchar2(4000),
	pc_date date not null,
	constraint pc_rp_num_fk foreign key(rp_num)
	references recruit_post(rp_num),
    constraint pc_mem_id_fk foreign key(mem_id)
	references member_info(mem_id)
);

/* ��� ���� ��ȣ ������ */
create sequence post_comment_number
	increment by 1
	start with 1
	minvalue 1
	maxvalue 99999
	nocycle
	nocache;

/* ���� ���� ���̺� */
create table message(
	m_num number(5) not null
	constraint note_pk primary key,
	m_send_id varchar2(20) not null,
	m_receive_id varchar2(20) not null,
	m_content varchar2(4000),
	m_send_date date not null,
	m_receive_date date not null,
	m_state number(1) not null
);


/* ���� ���� ��ȣ ������ */
create sequence message_number
	increment by 1
	start with 1
	minvalue 1
	maxvalue 99999
	nocycle
	nocache;