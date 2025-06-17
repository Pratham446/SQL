SET autocommit = 0;
start transaction;

update data set new_age=new_age+1 where id=1;

select * from data;
rollback; -- The ROLLBACK statement is used to undo changes made in the current transaction. It is useful if something goes wrong or a condition is not met.
select * from data;

commit; -- The COMMIT statement is used to permanently save all the changes made in the current transaction.
