alter table t_project add column type INTEGER NOT NULL DEFAULT 0;
update t_project set type=1;