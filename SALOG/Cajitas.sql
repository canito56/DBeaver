--CONTROL PENDIENTES
select * from lex_pending_cajitas
where created < CURRENT_DATE
-- where company_id in ('COKN')
order by process_id, sequential_criterion, created

--CONTROL DE QUILOMBOS
select * from lex_pending_cajitas
where status not in ('Running', 'NotExecuted', 'WaitingForAsyncExec')
order by process_id, sequential_criterion, created

--CAJITAS - ESTADO DEL PROCESO POR DOCUMENTO (cabecera)
select * from wf_process_instance wpi where key = '0fb7064f5ace4fe3bdacee8792250cdb'

--CAJITAS - POR DOCUMENTO (detalle)
select * from wf_task_instance wti where key = '0fb7064f5ace4fe3bdacee8792250cdb' order by id 

-- CONTROL ARCHIVADOS
select * from lex_archive_control lac where production_date < current_date order by country, production_date 

--CUALES FALTAN PROCESAR EN UN PAIS
select * from wf_task_instance wti where key in ( 
	select key from wf_process_instance wpi where process_id = 'wf-ec-invoice' and status not in ('Success')
) order by id 

--RECHAZOS
select * from lex_invoice_history lih where invoice_status = 'RE' and created > '20200801' order by error_message 

--D3
select process, status, count(1) from lex_d3_document_request group by process, status  

--TIPOS DE FACTURA POR PAIS
select * from invoice_type it where create_user = 'AR'

--INVOICE HISTORY 
select * from ar_invoice_history aih where branch_id = 'ARBUE' and department_id = 'AI' order by id desc 

--SETTINGS COUNTRY 
select * from lex_settings ls where country_code = 'CL'

select * from br_invoice_history bih where document_id = '0fb7064f5ace4fe3bdacee8792250cdb'

--CREAR RANGOS
select * from invoice_number_range inr where create_user = 'DO' and is_active = true

select * from company_invoice_criteria cic where create_user = 'DO' and id_invoice_number_range between 0 and 215
