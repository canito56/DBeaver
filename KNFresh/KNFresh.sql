SELECT * FROM USUARIO u 
WHERE [LOGIN] = 'AAbate'

SELECT u.CODIGO_USUARIO, u.[LOGIN], u.NOMBRE, p.*
FROM USUARIO u
	left outer join PERFILXUSUARIO p 
		on p.CODIGO_USUARIO = u.CODIGO_USUARIO 
WHERE [LOGIN] = 'AAbate'
AND FLAG_ACTIVO = 'S'

hibernate:
select
    useraccoun0_.CODIGO_USUARIO as codigo_u1_31_,
    useraccoun0_.FLAG_ACTIVO as flag_act2_31_,
    useraccoun0_.EMAIL as email3_31_,
    useraccoun0_.FKEY_COMPANIA as fkey_com4_31_,
    useraccoun0_.LOGIN as login5_31_,
    useraccoun0_.NOMBRE as nombre6_31_,
    useraccoun0_.PASSWD as passwd7_31_,
    useraccoun0_.CARGO as cargo8_31_,
    useraccoun0_.ID_USUARIO as id_usuar9_31_ 
from
    USUARIO useraccoun0_ 
where
    (
        useraccoun0_.FLAG_ACTIVO='S'
    ) 
    and useraccoun0_.LOGIN='AAbate'
    
select
    userprofil0_.CODIGO_PERFIL_USUARIO as codigo_p1_20_0_,
    customer2_.codigo_cliente as codigo_c1_34_1_,
    country3_.PKEY_PAIS as pkey_pai1_18_2_,
    branch4_.PKEY_SEDE as pkey_sed1_22_3_,
    city5_.PKEY_CIUDAD as pkey_ciu1_5_4_,
    country6_.PKEY_PAIS as pkey_pai1_18_5_,
    profile7_.CODIGO_PERFIL as codigo_p1_19_6_,
    userprofil0_.FKEY_SEDE as fkey_sed6_20_0_,
    userprofil0_.CODIGO_CLIENTE as codigo_c7_20_0_,
    userprofil0_.STR_CODCLIENTE as str_codc2_20_0_,
    userprofil0_.CODIGO_TIPO_CLIENTE as codigo_t3_20_0_,
    userprofil0_.FLAG_VER_RESERVA as flag_ver4_20_0_,
    userprofil0_.NOMBRE as nombre5_20_0_,
    userprofil0_.CODIGO_PERFIL as codigo_p8_20_0_,
    userprofil0_.CODIGO_USUARIO as codigo_u9_20_0_,
    customer2_.FLAG_ACTIVO as flag_act2_34_1_,
    customer2_.FLAG_CARGA_PO as flag_car3_34_1_,
    customer2_.str_nomciudad as str_nomc4_34_1_,
    customer2_.FKEY_PAIS as fkey_pa33_34_1_,
    customer2_.FLAG_REQUIERE_DESCRIPCION as flag_req5_34_1_,
    customer2_.FLAG_REQUIEREDIMENSION as flag_req6_34_1_,
    customer2_.str_dircliente as str_dirc7_34_1_,
    customer2_.fkey_ciudad as fkey_ciu8_34_1_,
    customer2_.FKEY_COMERCIAL as fkey_com9_34_1_,
    customer2_.FKEY_MODO_CONSOLIDADO as fkey_mo10_34_1_,
    customer2_.FKEY_ZONA as fkey_zo11_34_1_,
    customer2_.FLAG_BARCODE as flag_ba12_34_1_,
    customer2_.FLAG_BLOQCARTERA as flag_bl13_34_1_,
    customer2_.INDIREQUBROK as indireq14_34_1_,
    customer2_.FLAG_VALIDAETIQUETAS as flag_va15_34_1_,
    customer2_.str_nomcliente as str_nom16_34_1_,
    customer2_.FLAG_REQUIERE_PO as flag_re17_34_1_,
    customer2_.str_codcliente as str_cod18_34_1_,
    customer2_.STR_CODIEURI as str_cod19_34_1_,
    customer2_.STR_NOMCONTA1 as STR_NOM20_34_1_,
    customer2_.STR_NOMCONTA2 as STR_NOM21_34_1_,
    customer2_.str_faxcliente as str_fax22_34_1_,
    customer2_.STR_MAILCONTA1 as STR_MAI23_34_1_,
    customer2_.STR_MAILCONTA2 as STR_MAI24_34_1_,
    customer2_.str_nomaduanas as str_nom25_34_1_,
    customer2_.STR_OBSERVACIONES as str_obs26_34_1_,
    customer2_.str_telcliente as str_tel27_34_1_,
    customer2_.STR_PPDCOL as str_ppd28_34_1_,
    customer2_.FLAG_REQUIERE_CAMION as flag_re29_34_1_,
    customer2_.str_tipcliente as str_tip30_34_1_,
    customer2_.FLAG_REQUIEREVARIEDAD as flag_re31_34_1_,
    customer2_.ZIPCODE as zipcode32_34_1_,
    country3_.STR_CI as str_ci2_18_2_,
    country3_.STR_NOMPAIS as str_nomp3_18_2_,
    branch4_.CHR_CODAERORIG as chr_coda2_22_3_,
    branch4_.CHR_DIGIVERINEGO as chr_digi3_22_3_,
    branch4_.FKEY_CIUDAD as fkey_ci15_22_3_,
    branch4_.COD_SEDE_PUERTO as cod_sede4_22_3_,
    branch4_.CODIGOBRANCH as codigobr5_22_3_,
    branch4_.COD_SEDE_ADUANA as cod_sede6_22_3_,
    branch4_.FKEYCOMPANIA as fkeycomp7_22_3_,
    branch4_.msrepl_tran_version as msrepl_t8_22_3_,
    branch4_.STR_CODIDEPAACON as str_codi9_22_3_,
    branch4_.STR_LOGICARECEIV as str_log10_22_3_,
    branch4_.STR_NOMSEDE as str_nom11_22_3_,
    branch4_.STR_NOMBCONFBDE as str_nom12_22_3_,
    branch4_.STR_PREFHIJAACON as str_pre13_22_3_,
    branch4_.STR_TEXTOFIRMA as str_tex14_22_3_,
    city5_.FKEY_PAIS as fkey_pai3_5_4_,
    city5_.STR_NOMCIUDAD as str_nomc2_5_4_,
    country6_.STR_CI as str_ci2_18_5_,
    country6_.STR_NOMPAIS as str_nomp3_18_5_,
    profile7_.PERFIL as perfil2_19_6_,
    profile7_.FKEY_ROL as fkey_rol3_19_6_ 
from
    PERFILXUSUARIO userprofil0_ 
left outer join
    vclienteall customer2_ 
        on userprofil0_.CODIGO_CLIENTE=customer2_.codigo_cliente 
left outer join
    PAIS country3_ 
        on customer2_.FKEY_PAIS=country3_.PKEY_PAIS 
left outer join
    SEDE branch4_ 
        on userprofil0_.FKEY_SEDE=branch4_.PKEY_SEDE 
left outer join
    CIUDAD city5_ 
        on branch4_.FKEY_CIUDAD=city5_.PKEY_CIUDAD 
left outer join
    PAIS country6_ 
        on city5_.FKEY_PAIS=country6_.PKEY_PAIS 
left outer join
    PERFIL profile7_ 
        on userprofil0_.CODIGO_PERFIL=profile7_.CODIGO_PERFIL cross 
join
    USUARIO useraccoun1_ 
where
    userprofil0_.CODIGO_USUARIO=useraccoun1_.CODIGO_USUARIO 
    and useraccoun1_.LOGIN='AAbate'
    and userprofil0_.CODIGO_CLIENTE<>0 
    and (
        userprofil0_.CODIGO_CLIENTE is not null
    )    

-- Administrar Reservas
SELECT 	NUM_PO,
		PKEYRESERVA,
		CULTIVO, 
		CLIENTE,
		DESTINO,
		COMERCIALIZADORA,
		SERIEGUIAMASTER, 
		GUIAHIJA,
		VUELO,
		TOTALFULLES,
		PIEZAS,
		CONVERT (varchar(10),FECHAPROGRAMACION,112) as FECHAPROGRAMACION,
		ESTADO, 
		FECHAPROGRAMACION 
FROM VLISTARESERVAS v 
WHERE FECHAPROGRAMACION BETWEEN '20220131' AND '20220131'
--   OR PKEYRESERVA = 6219500 --este es de fecha 20220129!!!!
ORDER BY PKEYRESERVA 

SELECT SERIEGUIAMASTER, CLIENTE, VUELO, ESTADO, v.* 
FROM VLISTARESERVAS v 
WHERE CLIENTE = 'SUNBURST FARMS INC.'
  AND CONVERT (varchar(10),FECHAPROGRAMACION,112) = '20210609'	
--AND NOMBREEXPORTADOR = 'MM FLOWERS LIMITED'
--AND SERIEGUIAMASTER = '001-52319794'

SELECT * FROM VLISTACARTERA v  

SELECT COMERCIALIZADORA, COUNT(1)  
FROM VLISTARESERVAS v 
group by COMERCIALIZADORA 
ORDER BY COMERCIALIZADORA 

SELECT CULTIVO, DESTINO, GUIAHIJA, FULLES, PIEZAS, v.*
FROM VLISTARESERVAS v 
WHERE COMERCIALIZADORA = 'MULTIFLORA COMERCIALIZADORA INTERNACIONAL S.A.S C.I.'
  AND CULTIVO <> 'MULTIFLORA COMERCIALIZADORA INTERNACIONAL S.A.S C.I.'


