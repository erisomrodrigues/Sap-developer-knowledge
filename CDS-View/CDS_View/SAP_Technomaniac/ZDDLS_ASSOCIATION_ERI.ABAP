@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Diferença entre associations'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZDDLS_ASSOCIATION_ERI
  as select from vbak as head
  association [1..*] to vbak as _item on head.vbeln = _item.vbeln
{
  head.vbeln as so,
  head.kunnr,
  _item
}
