@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Path expresson'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZDDLS_SAMPLE_06_ERI
  as select from vbak
  association [1..*] to vbap as _item    on vbak.vbeln = _item.vbeln
  association [1..1] to kna1 as _cust    on vbak.kunnr = _cust.kunnr
  association [1..*] to makt as _matdesc on $projection.matnr = _matdesc.matnr
  association [0..*] to vbfa as _docflow on vbak.vbeln = _docflow.vbelv
{
  key vbeln as so,
      kunnr,
      _item.matnr,
      _item.posnr,
      _cust[inner].name1,
      _docflow,
      _matdesc

}
