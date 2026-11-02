@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Sample'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZDDLS_SAMPLE_07_ERI
  as select from ZDDLS_SAMPLE_06_ERI
{
  key so,
      kunnr,
      posnr,
      matnr,
      name1,

      /* Associations */
      _docflow[ 1: posnv = $projection.posnr and vbtyp_n = 'M' ].vbeln as invoice,
      _docflow[ left outer where posnv = $projection.posnr and vbtyp_n = 'M' ].posnv,
      _docflow,
      _matdesc
}
where
     so = '0000001617'
  or so = '0000000310'
