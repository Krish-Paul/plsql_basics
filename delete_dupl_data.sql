
---delete duplicate elements when primary key is known
create table XX_DELIVERY_DATA_TL (
    id number primary key,
    order_num  varchar2(500 byte),
    trx_type  varchar2(500 byte),
    vender varchar2(100 byte),
    proc varchar2(5 byte)
)
select * from XX_DELIVERY_DATA_TL
create sequence XX_DEL_SEQ

 
INSERT INTO XX_DELIVERY_DATA_TL
select XX_DEL_SEQ.NEXTVAL, '98981210001', 'Delivery Feed', 'Cun Mun', 'N' FROM DUAL
 
INSERT INTO XX_DELIVERY_DATA_TL
select XX_DEL_SEQ.NEXTVAL, '98981210002', 'Delivery Feed', 'Vishal maga Mart', 'N'  FROM DUAL
 
INSERT INTO XX_DELIVERY_DATA_TL
select XX_DEL_SEQ.NEXTVAL, '98981210003', 'Delivery Feed', 'India Pvt Ltd', 'N'  FROM DUAL

SELECT MAX(ID) FROM XX_DELIVERY_DATA_TL where VENDER = 'Cun Mun'
 GROUP BY ORDER_NUM, TRX_TYPE, VENDER,PROC;

DELETE XX_DELIVERY_DATA_TL A
--select * from  XX_DELIVERY_DATA_TL A
WHERE 1=1
AND A.VENDer = 'Cun Mun'
AND ID NOT IN ( SELECT MIN(ID) FROM XX_DELIVERY_DATA_TL Z WHERE A.VENDer = Z.VENder  GROUP BY ORDER_NUM, TRX_TYPE, VENDer,PROC );         



-----when primary key is not there...delete using rowid
delete from XX_DELIVERY_DATA_TL

WHERE rowid NOT IN ( SELECT MIN(rowid) FROM XX_DELIVERY_DATA_TL GROUP BY ORDER_NUMBER, TRX_TYPE, VENDOR_CODE,PROCESS_FLAG );        


----find duplicate elements using rownum and partition by
select * from (
select --rownum,                                                                                                                             
EMPNO , ENAME   , JOB    , MGR     , HIREDATE , SAL   , COMM , DEPTNO,
 row_number ()
 over (Partition by EMPNO , ENAME   , JOB    , MGR     , HIREDATE , SAL   , COMM , DEPTNO order by rownum) Record_Count
from XX_EMP_DISTINCT_TL ) AA
where AA.RECORD_COUNT = 1
 
