update ACT_GE_PROPERTY set VALUE_ = '6.7.0.0' where NAME_ = 'common.schema.version';

update ACT_GE_PROPERTY set VALUE_ = '6.7.0.0' where NAME_ = 'entitylink.schema.version';

update ACT_GE_PROPERTY set VALUE_ = '6.7.0.0' where NAME_ = 'identitylink.schema.version';

create index ACT_IDX_TJOB_DUEDATE on ACT_RU_TIMER_JOB(DUEDATE_);

update ACT_GE_PROPERTY set VALUE_ = '6.7.0.0' where NAME_ = 'job.schema.version';

update ACT_GE_PROPERTY set VALUE_ = '6.7.0.0' where NAME_ = 'batch.schema.version';

update ACT_GE_PROPERTY set VALUE_ = '6.7.0.0' where NAME_ = 'task.schema.version';

update ACT_GE_PROPERTY set VALUE_ = '6.7.0.0' where NAME_ = 'variable.schema.version';

update ACT_GE_PROPERTY set VALUE_ = '6.7.0.0' where NAME_ = 'eventsubscription.schema.version';
alter table ACT_HI_PROCINST add PROPAGATED_STAGE_INST_ID_ NVARCHAR2(255);

create index ACT_IDX_EXEC_REF_ID_ on ACT_RU_EXECUTION(REFERENCE_ID_);
create index ACT_IDX_RU_ACTI_TASK on ACT_RU_ACTINST(TASK_ID_);

update ACT_GE_PROPERTY set VALUE_ = '6.7.0.0' where NAME_ = 'schema.version';
update ACT_ID_PROPERTY set VALUE_ = '6.7.0.0' where NAME_ = 'schema.version';

UPDATE FLOWABLE.ACT_APP_DATABASECHANGELOGLOCK SET LOCKED = 1, LOCKEDBY = '192.168.10.1 (192.168.10.1)', LOCKGRANTED = TO_TIMESTAMP('2021-08-30 13:46:13.533', 'YYYY-MM-DD HH24:MI:SS.FF') WHERE ID = 1 AND LOCKED = 0;

UPDATE FLOWABLE.ACT_APP_DATABASECHANGELOGLOCK SET LOCKED = 0, LOCKEDBY = NULL, LOCKGRANTED = NULL WHERE ID = 1;


UPDATE FLOWABLE.ACT_CMMN_DATABASECHANGELOGLOCK SET LOCKED = 1, LOCKEDBY = '192.168.10.1 (192.168.10.1)', LOCKGRANTED = TO_TIMESTAMP('2021-08-30 13:46:16.949', 'YYYY-MM-DD HH24:MI:SS.FF') WHERE ID = 1 AND LOCKED = 0;

ALTER TABLE FLOWABLE.ACT_CMMN_RU_CASE_INST ADD LAST_REACTIVATION_TIME_ TIMESTAMP(3);

ALTER TABLE FLOWABLE.ACT_CMMN_RU_CASE_INST ADD LAST_REACTIVATION_USER_ID_ VARCHAR2(255);

ALTER TABLE FLOWABLE.ACT_CMMN_HI_CASE_INST ADD LAST_REACTIVATION_TIME_ TIMESTAMP(3);

ALTER TABLE FLOWABLE.ACT_CMMN_HI_CASE_INST ADD LAST_REACTIVATION_USER_ID_ VARCHAR2(255);

INSERT INTO FLOWABLE.ACT_CMMN_DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('14', 'flowable', 'org/flowable/cmmn/db/liquibase/flowable-cmmn-db-changelog.xml', SYSTIMESTAMP, 13, '8:086b40b3a05596dcc8a8d7479922d494', 'addColumn tableName=ACT_CMMN_RU_CASE_INST; addColumn tableName=ACT_CMMN_HI_CASE_INST', '', 'EXECUTED', NULL, NULL, '4.3.5', '0331179599');

UPDATE FLOWABLE.ACT_CMMN_DATABASECHANGELOGLOCK SET LOCKED = 0, LOCKEDBY = NULL, LOCKGRANTED = NULL WHERE ID = 1;


UPDATE FLOWABLE.FLW_EV_DATABASECHANGELOGLOCK SET LOCKED = 1, LOCKEDBY = '192.168.10.1 (192.168.10.1)', LOCKGRANTED = TO_TIMESTAMP('2021-08-30 13:46:20.013', 'YYYY-MM-DD HH24:MI:SS.FF') WHERE ID = 1 AND LOCKED = 0;

UPDATE FLOWABLE.FLW_EV_DATABASECHANGELOGLOCK SET LOCKED = 0, LOCKEDBY = NULL, LOCKGRANTED = NULL WHERE ID = 1;


UPDATE FLOWABLE.ACT_DMN_DATABASECHANGELOGLOCK SET LOCKED = 1, LOCKEDBY = '192.168.10.1 (192.168.10.1)', LOCKGRANTED = TO_TIMESTAMP('2021-08-30 13:46:23.077', 'YYYY-MM-DD HH24:MI:SS.FF') WHERE ID = 1 AND LOCKED = 0;

UPDATE FLOWABLE.ACT_DMN_DATABASECHANGELOGLOCK SET LOCKED = 0, LOCKEDBY = NULL, LOCKGRANTED = NULL WHERE ID = 1;


UPDATE FLOWABLE.ACT_FO_DATABASECHANGELOGLOCK SET LOCKED = 1, LOCKEDBY = '192.168.10.1 (192.168.10.1)', LOCKGRANTED = TO_TIMESTAMP('2021-08-30 13:46:26.319', 'YYYY-MM-DD HH24:MI:SS.FF') WHERE ID = 1 AND LOCKED = 0;

CREATE INDEX FLOWABLE.ACT_IDX_FORM_TASK ON FLOWABLE.ACT_FO_FORM_INSTANCE(TASK_ID_);

CREATE INDEX FLOWABLE.ACT_IDX_FORM_PROC ON FLOWABLE.ACT_FO_FORM_INSTANCE(PROC_INST_ID_);

CREATE INDEX FLOWABLE.ACT_IDX_FORM_SCOPE ON FLOWABLE.ACT_FO_FORM_INSTANCE(SCOPE_ID_, SCOPE_TYPE_);

INSERT INTO FLOWABLE.ACT_FO_DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('6', 'flowable', 'org/flowable/form/db/liquibase/flowable-form-db-changelog.xml', SYSTIMESTAMP, 5, '8:384bbd364a649b67c3ca1bcb72fe537f', 'createIndex indexName=ACT_IDX_FORM_TASK, tableName=ACT_FO_FORM_INSTANCE; createIndex indexName=ACT_IDX_FORM_PROC, tableName=ACT_FO_FORM_INSTANCE; createIndex indexName=ACT_IDX_FORM_SCOPE, tableName=ACT_FO_FORM_INSTANCE', '', 'EXECUTED', NULL, NULL, '4.3.5', '0331189147');

UPDATE FLOWABLE.ACT_FO_DATABASECHANGELOGLOCK SET LOCKED = 0, LOCKEDBY = NULL, LOCKGRANTED = NULL WHERE ID = 1;


UPDATE FLOWABLE.ACT_CO_DATABASECHANGELOGLOCK SET LOCKED = 1, LOCKEDBY = '192.168.10.1 (192.168.10.1)', LOCKGRANTED = TO_TIMESTAMP('2021-08-30 13:46:29.559', 'YYYY-MM-DD HH24:MI:SS.FF') WHERE ID = 1 AND LOCKED = 0;

UPDATE FLOWABLE.ACT_CO_DATABASECHANGELOGLOCK SET LOCKED = 0, LOCKEDBY = NULL, LOCKGRANTED = NULL WHERE ID = 1;

