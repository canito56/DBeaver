--CR respuestas
-- Los mensajes suelen venir en desorden, por ejemplo el "ENVIADO MH" puede venir antes que el "Aprobado MH",
-- con lo cual hay que cambiar las fechas de creación y salvar para cambiar el orden y que puedan procesarce.
-- o sea, hay que cambiar el campo message_timestamp.
select * from cr_gosocket_message cgm 
where document_number like '%2090000009704%' 
order by message_timestamp

