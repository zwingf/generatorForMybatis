/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2017/7/3 17:43:52                            */
/*==============================================================*/


drop table if exists applicant;

drop table if exists applicant_flow_info;

/*==============================================================*/
/* Table: applicant                                             */
/*==============================================================*/
create table applicant
(
   applicant_id         int not null comment '应聘人员表主键',
   resume_id            int not null comment '简历编号',
   position             varchar(20) comment '岗位',
   level                int comment '级别',
   project              varchar(20) comment '项目',
   serviceLine          varchar(20) comment '业务线',
   state                int comment '简历状态',
   owner_id             int comment '简历使用人ID',
   owner_naem           varchar(20) comment '简历使用者姓名',
   comment              text(200) comment '备注',
   primary key (applicant_id)
);

alter table applicant comment '应聘人员表';

/*==============================================================*/
/* Table: applicant_flow_info                                   */
/*==============================================================*/
create table applicant_flow_info
(
   id                   int not null comment 'ID',
   recorder             varchar(20) comment '记录者',
   state                int comment '状态',
   operation            int comment '操作',
   create_time          datetime comment '时间',
   offer_result         int comment 'offer结果',
   offer_time           datetime comment 'offer时间',
   offer_pay            varchar(100) comment 'offer薪资',
   recruit_time         datetime comment '招聘时间',
   plan_job_time        datetime comment '预计入职时间',
   comment              text(200) comment '备注',
   primary key (id)
);

alter table applicant_flow_info comment '应聘流程信息';

