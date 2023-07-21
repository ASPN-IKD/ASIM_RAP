@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: '통관내부문서 도움말 뷰'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
// 미완성된 뷰 - lfa1 인터페이스 및 70n_c 필요
define view entity ZASIMV_CCLNO as select from zasimt0010n_c as A
// inner JOIN LFA1 AS B ON A.LIFNR = B.LIFNR
 inner join zasimt0030n as C on  A.reqno = C.reqno
 inner join zasimt0070n as D on C.blino = D.blino
{
D.cclno ,
D.cclyr ,
D.reqmu ,
A.lifnr ,
//B.NAME1 ,
A.cont1,
A.cont2,
A.opnum,
C.ebeln,
C.bleno,
C.bleta,
C.bletd,
C.blgrd,
@Semantics.amount.currencyCode: 'waers'
C.blamt,
C.waers,
D.decno,
D.cclif,
D.decdt,
D.ccldt,
D.ccper,
@Semantics.amount.currencyCode: 'ccwae'
D.ccamt,
@Semantics.amount.currencyCode: 'ccwaek'
D.ccamtk,
@Semantics.amount.currencyCode: 'ccwaek'
D.ccvat1,
@Semantics.amount.currencyCode: 'ccwaek'
D.ccvat2,
@Semantics.amount.currencyCode: 'ccwaek'
D.hwbas,
D.ccwae,
D.ccwaek,
D.ccrsf,
D.ccdat1,
D.ccdat2,
D.cclog,
D.ccltx
}
