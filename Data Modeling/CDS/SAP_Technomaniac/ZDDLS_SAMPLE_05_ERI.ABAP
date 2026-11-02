@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Inner join'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
//1ª Forma de fazer
//define view entity ZDDLS_SAMPLE_05_ERI
//  as select from ZDDLS_SAMPLE_04_ERI._ITEM
//  association [*] to makt on $projection.matnr = makt.matnr


define view entity ZDDLS_SAMPLE_05_ERI
  as select from ZDDLS_SAMPLE_04_ERI._ITEM as ITEM
  association [*] to makt as _MATDESC on  ITEM.matnr = _MATDESC.matnr
  association [*] to vbfa as _docflow on  ITEM.vbeln       = _docflow.vbelv
                                      and ITEM.posnr       = _docflow.posnv
                                      and _docflow.vbtyp_v = 'C'
                                      and _docflow.vbtyp_n = 'M'

{
  vbeln,
  posnr,
  matnr,
  _MATDESC[spras = 'P'].maktx,
  _docflow[inner].vbeln as INVOICE
}
//where
//  vbeln = '0010000002'
