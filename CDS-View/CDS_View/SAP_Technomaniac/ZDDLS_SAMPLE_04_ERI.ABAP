@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Cardinalidade'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZDDLS_SAMPLE_04_ERI
  as select from vbak
  association [1..1] to vbap as _ITEM on vbak.vbeln = _ITEM.vbeln
{
  key vbak.vbeln as so,
      vbak.kunnr,
      vbak.waerk,
      @Semantics.amount.currencyCode: 'waerk'
      vbak.netwr,
      _ITEM.posnr,
      _ITEM.matnr

}
