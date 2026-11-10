# 🧩 Open SQL  

Esta pasta contém exemplos de código ABAP e apresentação de ferramentas SAP de modelagem.

As instruções presentes nos selects são tratadas diretamente na camada de banco de dado (Code PushDown)

---

## 📚 Lista

| Recurso | Descrição | Material | Fonte 
|---|---|---|---|
| `FIELD` | Comparação do antigo _`SELECT`_ com o _`SELECT`_ com _`FIELD`_ no S/4HANA  | [Acessar](./Code/zprg_opensql_syntax_00_eri.ABAP) | [Acessar](https://youtu.be/sKhpbrhO2HE?si=249cqgvGwU9k-C8g) |
| `RANGE`| Criando ranges no _`SELECT`_ para ser usado como filtro em outro _`SEELCT`_ evitando o uso de _`FOR ALL ENTRIES`_ no HANA| [Acessar](./Code/ZPRG_SELECTS_WITH_RANGE_ERI.ABAP) | [Acessar](https://youtu.be/jxVNcLK-5A8?si=gIqcF4fi20obL_mB) |
|`CEIL, FLOOR, ABS, ROUND, DIV, CAST e MOD`| Usando as funções aritméticas na instrução _`SELECT`_ |[Acessar](./Code/ZPRG_SELECT_ARITHMETIC_EXPRESS.ABAP) | [Acessar](https://www.youtube.com/watch?v=acXVko_ChGg&list=PLqz8SLrkjv2iNxQCtKdbzWa-E1e2m2XBX&index=12) |`_SUM`_, _`AVG`_, _`MAX`_, _`MIN`_, _`COUNT`_| Utilizando os operadores de agregação dentro do _`SELECT`_ | [Acessar](./Code/ZPRG_SELECT_AGGREGATION_EXPRES.ABAP) | [N/A]() |
|`CONCAR, CONCAT_WITH_SPACE, LENGHT,INSTR, LEFT, RIGHT, LPAD, RPAD, LTRIM, RTRIM, REPLACE, LOWER, UPPER e SUBSTRING` | Usando operações com strings pelo _`SELECT`_| [Acessar](./Code/ZPRG_SELECT_STRING_OPERATION.ABAP) | [N/A]() |
| _`CASE`_| Usando a instrução CASE (Simples e de Pesquisa) dentro do _`SELECT`_ para alterar valores de acordo com a condicional | [Acessar](./Code/ZPRG_SELECT_CASE_SIMPLES_ERI.ABAP) | [Acessar](https://www.youtube.com/watch?v=FJLEQFIQ2zc&list=PLqz8SLrkjv2iNxQCtKdbzWa-E1e2m2XBX&index=16) |
|_`LEFT OUTER JOIN e COALESCE`_| Uso do _`LEFT OUTER JOIN`_ para trazer dados dos pedidos e as respectivas faturas, e com _`CASE`_ como condicional dentro do _`SELECT`_ |[Acessar](./Code/ZPRG_SELECT_WITH_LEFT_OUT_JOIN.ABAP)|[Acessar](https://www.youtube.com/watch?v=poZVVwWSCsc&list=PLqz8SLrkjv2iNxQCtKdbzWa-E1e2m2XBX&index=16) |
|_`HOST EXPRESSION`_| Usando uma expressão de tabela para passar valor como filtro através da clausula _`WHERE`_ do _`SELECT`_ |[Acesso](./Code/ZPRG_HOST_EXPRE_WHERE_ERI.ABAP)|[Acesso](https://www.youtube.com/watch?v=i0PXo6fpLFo&list=PLqz8SLrkjv2iNxQCtKdbzWa-E1e2m2XBX&index=18)|
|`CLIENTE ESPECIFIED e USING CLIENT`| Buscando dados em MANDT diferentes  com a instrução _`SELECT`_ |[Acessar](./Code/ZPRG_USING_CLIENT_SPECIFIED.ABAP)|[Acessar](https://www.youtube.com/watch?v=lo2Uq3Pam5s&list=PLqz8SLrkjv2iNxQCtKdbzWa-E1e2m2XBX&index=18)|
---


