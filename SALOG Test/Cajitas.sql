--CONTROL PENDIENTES
select * from lex_pending_cajitas
where created < CURRENT_DATE
order by process_id, sequential_criterion, created

--CONTROL DE QUILOMBOS
select * from lex_pending_cajitas
where status not in ('Running', 'NotExecuted', 'WaitingForAsyncExec')
order by process_id, sequential_criterion, created

--ESTADO DEL PROCESO POR DOCUMENTO 
select * from wf_process_instance wpi where key = 'bcd14509feb549a8a64ad574135c90d9'

--CAJITAS POR DOCUMENTO
select * from wf_task_instance wti where key = 'bcd14509feb549a8a64ad574135c90d9' order by id 

select * from wf_task_instance wti where finished > '2020-01-01' order by finished 

select * from co_invoice_history where created > '2022-01-01' order by created 