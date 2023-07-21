
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'B/L 내부번호 도움말'
@ObjectModel.resultSet.sizeCategory: #XS
// 미완성된 뷰 - lfa1 인터페이스 및 30n_c 필요
define view entity ZASIMV_BLINO as select from zasimt0030n as A
// inner join   lfa1   as B     on A.lifnr = B.lifnr
    inner join   zasimt0010n_c as C on  A.loekz           = C.loekz
                             and A.loekz           = ''
                             and C.loekz = ''
{
     key A.blino,
      A.bliyr,
      A.reqmu as REQMU,
      A.ebeln,
      A.lifnr as LIFNR,
//      B.name1,
      C.cont1,
      C.cont2,
      C.opnum,
      A.bleno,
      A.bldat,
      A.bleta,
      A.bletd,
      A.rqetd,
      A.rqeta,
      A.bldat2,
      A.blgrd,
      A.brgew,
      A.ntgew,
      A.gewei,
      A.lgnum,
      A.cntno,
      A.mosno,
      A.blamt,
      A.waers as WAERS,
      A.blitx
}
