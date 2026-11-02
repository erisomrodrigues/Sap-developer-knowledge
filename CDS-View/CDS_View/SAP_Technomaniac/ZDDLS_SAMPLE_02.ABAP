@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Define view entity'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZDDLS_SAMPLE_02
  with parameters
    P_VBELN : vbeln,
//    @Environment.systemField: #SYSTEM_DATE
    p_date  : abap.dats
  as select from vbak as head
    inner join   vbap as item on head.vbeln = item.vbeln
{
  key head.vbeln as so,
      head.vkorg as sales_org,
      head.vkgrp,
      item.posnr,
      item.matnr,
      0.23       as num_lit,
      'CDS'      as char_lit

}
where
  head.vbeln = $parameters.P_VBELN
