create table t_board (
	board_idx int(11) not null auto_increment comment '글 번호',
    title varchar(300) not null,
    contents text not null,
    hit_cnt smallint(10) not null default '0',
    created_datetime datetime not null,
    creator_id varchar(50) not null,
    updated_datetime datetime,
    updater_id varchar(50),
    deleted_yn char(1) not null default 'N',
    primary key (board_idx)
)



insert into t_board (title, contents, creator_id, created_datetime) values (
'second title',
'second contents',
'admin',
now()
)

create table t_file (
	idx int(10) unsigned not null auto_increment,
    board_idx int(10) unsigned not null,
    original_file_name varchar(255) not null,
    stored_file_path varchar(500) not null,
    file_size int(15) unsigned not null,
    creator_id varchar(50) not null,
    created_datetime datetime not null,
    updator_id varchar(50) default null,
    updated_datetime datetime default null,
    deleted_yn char(1) not null default 'N',
    primary key (idx)
)
    
    
    