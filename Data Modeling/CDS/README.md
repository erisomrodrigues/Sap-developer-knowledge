# CDS View - Core Data Services

1.  [PARAMETERS](CDS_View/SAP_Technomaniac/ZDDLS_SAMPLE_02.ABAP) -> Cds com parâmetros obrigtórios e não obrigatórios em um [report](CDS_View/SAP_Technomaniac/zprg_sample_02.ABAP).
2.  [ASSOCIENTION](CDS_View/SAP_Technomaniac/ZDDLS_ASSOCIATION_ERI.ABAP) -> Cds com association entre duas tabelas. Uso de report para exibir campo não passado na cds, usando [expressão de caminho](CDS_View/SAP_Technomaniac/ZPRG_ASSOCIATION_ERI.ABAP).
3.  Impacto da [cardinalidade](CDS_View/SAP_Technomaniac/ZDDLS_SAMPLE_04_ERI.ABAP) em associetions com exemplo report com _select sum_ e com uso do [REDUCE](CDS_View/SAP_Technomaniac/ZPRG_SAMPLE_04_ERI.ABAP) para somar valores da tabela interna.
4.  Uso de condicionais como [filtro](CDS_View/SAP_Technomaniac/ZDDLS_SAMPLE_05_ERI.ABAP) após as chaves primarias e com condicionais como filtro pelos campos de exibição.
5.  Cds com [asssociation entre 4 tabelas](CDS_View/SAP_Technomaniac/ZDDLS_SAMPLE_06_ERI.ABAP), porém ao usar _$projection_ em uma das tabelas, não permite exibir coluna de descrição. Sendo necessário [criar outra CDS](CDS_View/SAP_Technomaniac/ZDDLS_SAMPLE_07_ERI.ABAP) para consumir e exibir.
6.  [Programa](Projects/ZPRG_FIND_CDS_S4HANA_ERI.ABAP) para encontrar CDS Views a partir de tabelas no SAP _DDLDEPENDENCY_ e _DD03L_.


| Projeto | Assunto | Origem | Fonte |
| --- | --- | ---| --- |
| Business Application Studio | ABAP on Hana Gerando graficos com CDS | Anubhav Trainnings | [Link](https://www.youtube.com/watch?v=APU5g_S2tPY&list=PLcxqFaocb9WLtnq-rpXbRy5hnKECxr95G&index=1) |
