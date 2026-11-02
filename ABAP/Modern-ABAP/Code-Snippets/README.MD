# 🧩 ABAP Code Snippets

Esta pasta contém pequenos exemplos de código para consulta rápida sobre
recursos, comandos, expressões e boas práticas utilizadas no desenvolvimento ABAP.

Cada snippet apresenta:

- O que é o recurso.
- Para que serve.
- Quando utilizar.
- Sintaxe básica.
- Exemplo funcional.
- Comparação entre ABAP clássico e moderno, quando aplicável.
- Pontos de atenção.
- Fonte do estudo.

---

## 📚 Índice

- [Constructor Expressions](#constructor-expressions)
- [Declarações](#declarações)
- [Estruturas e tabelas internas](#estruturas-e-tabelas-internas)
- [Processamento de dados](#processamento-de-dados)
- [Open SQL](#open-sql)
- [Orientação a objetos](#orientação-a-objetos)
- [Tratamento de exceções](#tratamento-de-exceções)
- [Strings e formatação](#strings-e-formatação)
- [Datas e horas](#datas-e-horas)
- [Conversões](#conversões)
- [Outros recursos](#outros-recursos)

---

## Constructor Expressions

Recursos utilizados para criar, converter e inicializar valores por meio
de expressões ABAP.

| Recurso | Descrição | Material |
|---|---|---|
| `VALUE #( )` | Criação de estruturas e tabelas internas | [Acessar snippet](./constructor-expressions/value/README.md) |
| `NEW #( )` | Criação de referências e instâncias | [Acessar snippet](./constructor-expressions/new/README.md) |
| `CORRESPONDING #( )` | Transferência de campos entre estruturas e tabelas | [Acessar snippet](./constructor-expressions/corresponding/README.md) |
| `CONV #( )` | Conversão explícita de valores | [Acessar snippet](./constructor-expressions/conv/README.md) |
| `CAST #( )` | Conversão de referências | [Acessar snippet](./constructor-expressions/cast/README.md) |
| `COND #( )` | Definição condicional de valores | [Acessar snippet](./constructor-expressions/cond/README.md) |
| `SWITCH #( )` | Seleção de valores por comparação | [Acessar snippet](./constructor-expressions/switch/README.md) |
| `REDUCE #( )` | Agregação e redução de dados | [Acessar snippet](./constructor-expressions/reduce/README.md) |
| `FILTER #( )` | Filtragem de tabelas internas | [Acessar snippet](./constructor-expressions/filter/README.md) |
| `EXACT #( )` | Conversão com verificação de perda de dados | [Acessar snippet](./constructor-expressions/exact/README.md) |
| `REF #( )` | Criação de referência para um objeto de dados | [Acessar snippet](./constructor-expressions/ref/README.md) |

---

## Declarações

Sintaxes utilizadas para declarar dados, referências e símbolos de campo.

| Recurso | Descrição | Material |
|---|---|---|
| `DATA(...)` | Declaração inline de variável | [Acessar snippet](./declarations/data-inline/README.md) |
| `FINAL(...)` | Declaração inline de valor não reatribuível | [Acessar snippet](./declarations/final-inline/README.md) |
| `FIELD-SYMBOL(...)` | Declaração inline de field symbol | [Acessar snippet](./declarations/field-symbol-inline/README.md) |
| `REFERENCE INTO DATA(...)` | Declaração inline de referência | [Acessar snippet](./declarations/reference-inline/README.md) |

---

## Estruturas e tabelas internas

Recursos para leitura, validação, agrupamento e manipulação de tabelas internas.

| Recurso | Descrição | Material |
|---|---|---|
| Table Expression | Leitura de registro utilizando `itab[ ... ]` | [Acessar snippet](./internal-tables/table-expression/README.md) |
| `line_exists( )` | Verifica se um registro existe | [Acessar snippet](./internal-tables/line-exists/README.md) |
| `line_index( )` | Retorna o índice de um registro | [Acessar snippet](./internal-tables/line-index/README.md) |
| `LOOP AT ... GROUP BY` | Agrupamento de registros durante o loop | [Acessar snippet](./internal-tables/loop-group-by/README.md) |
| `FOR ... IN` | Construção de dados com iteração | [Acessar snippet](./internal-tables/for-expression/README.md) |
| `BASE` | Preserva dados existentes durante uma construção | [Acessar snippet](./internal-tables/value-base/README.md) |
| `MAPPING` | Mapeamento explícito entre campos | [Acessar snippet](./internal-tables/corresponding-mapping/README.md) |
| `EXCEPT` | Exclusão de campos no `CORRESPONDING` | [Acessar snippet](./internal-tables/corresponding-except/README.md) |

---

## Processamento de dados

Comandos e expressões para controle e processamento de dados.

| Recurso | Descrição | Material |
|---|---|---|
| `LET ... IN` | Declara variáveis auxiliares dentro de expressões | [Acessar snippet](./data-processing/let-expression/README.md) |
| `FOR ... THEN ... UNTIL` | Executa iteração controlada em expressões | [Acessar snippet](./data-processing/for-until/README.md) |
| `FOR ... THEN ... WHILE` | Executa iteração enquanto uma condição for atendida | [Acessar snippet](./data-processing/for-while/README.md) |
| `COND` com múltiplas condições | Retorna valores com base em condições | [Acessar snippet](./data-processing/cond-multiple/README.md) |
| `SWITCH` com múltiplos valores | Retorna valores com base em comparações | [Acessar snippet](./data-processing/switch-multiple/README.md) |

---

## Open SQL

Exemplos relacionados à leitura e manipulação de dados no banco.

| Recurso | Descrição | Material |
|---|---|---|
| Select inline | Declara resultado diretamente no `SELECT` | [Acessar snippet](./open-sql/select-inline/README.md) |
| Host Variables | Utilização do prefixo `@` no Open SQL | [Acessar snippet](./open-sql/host-variables/README.md) |
| `CASE` no `SELECT` | Criação de resultado condicional na consulta | [Acessar snippet](./open-sql/case-expression/README.md) |
| `COALESCE` | Substituição de resultado nulo | [Acessar snippet](./open-sql/coalesce/README.md) |
| `INNER JOIN` | Retorna registros relacionados entre tabelas | [Acessar snippet](./open-sql/inner-join/README.md) |
| `LEFT OUTER JOIN` | Mantém os registros da tabela principal | [Acessar snippet](./open-sql/left-outer-join/README.md) |
| Agregações | Utilização de `SUM`, `COUNT`, `AVG`, `MIN` e `MAX` | [Acessar snippet](./open-sql/aggregate-functions/README.md) |

---

## Orientação a objetos

Exemplos rápidos de recursos de ABAP Objects.

| Recurso | Descrição | Material |
|---|---|---|
| Constructor | Inicialização de instâncias | [Acessar snippet](./oop/constructor/README.md) |
| Class Constructor | Inicialização estática da classe | [Acessar snippet](./oop/class-constructor/README.md) |
| Herança | Especialização e reutilização de classes | [Acessar snippet](./oop/inheritance/README.md) |
| Interfaces | Definição de contratos entre classes | [Acessar snippet](./oop/interfaces/README.md) |
| Método estático | Execução de método sem instância | [Acessar snippet](./oop/static-method/README.md) |
| Singleton | Controle da criação de instância única | [Acessar snippet](./oop/singleton/README.md) |
| Read-only attributes | Proteção de atributos contra alteração externa | [Acessar snippet](./oop/read-only/README.md) |
| Class Friends | Acesso especial entre classes | [Acessar snippet](./oop/class-friends/README.md) |

---

## Tratamento de exceções

Exemplos de criação, captura e propagação de exceções.

| Recurso | Descrição | Material |
|---|---|---|
| `TRY ... CATCH` | Captura de exceções baseadas em classes | [Acessar snippet](./exceptions/try-catch/README.md) |
| `CLEANUP` | Tratamento após determinadas exceções | [Acessar snippet](./exceptions/cleanup/README.md) |
| `RAISE EXCEPTION` | Disparo explícito de uma exceção | [Acessar snippet](./exceptions/raise-exception/README.md) |
| `THROW` | Disparo de exceção dentro de uma expressão | [Acessar snippet](./exceptions/throw-expression/README.md) |
| Exceção customizada | Criação e utilização de classe de exceção | [Acessar snippet](./exceptions/custom-exception/README.md) |

---

## Strings e formatação

Recursos para montagem, transformação e formatação de textos.

| Recurso | Descrição | Material |
|---|---|---|
| String Template | Construção de texto utilizando `|...|` | [Acessar snippet](./strings/string-template/README.md) |
| String Expression | Uso de expressões dentro de templates | [Acessar snippet](./strings/string-expression/README.md) |
| `ALPHA` | Conversão utilizando exit ALPHA | [Acessar snippet](./strings/alpha-conversion/README.md) |
| `TO_UPPER` | Conversão de texto para maiúsculo | [Acessar snippet](./strings/to-upper/README.md) |
| `TO_LOWER` | Conversão de texto para minúsculo | [Acessar snippet](./strings/to-lower/README.md) |
| `CONDENSE` | Remoção de espaços excedentes | [Acessar snippet](./strings/condense/README.md) |
| `REPLACE` | Substituição de conteúdo em texto | [Acessar snippet](./strings/replace/README.md) |

---

## Datas e horas

Recursos para cálculo, conversão e formatação de datas e horários.

| Recurso | Descrição | Material |
|---|---|---|
| Formatação de data | Formata `SY-DATUM` em String Template | [Acessar snippet](./date-time/date-formatting/README.md) |
| Formatação de hora | Formata `SY-UZEIT` em String Template | [Acessar snippet](./date-time/time-formatting/README.md) |
| Timestamp | Criação e conversão de timestamp | [Acessar snippet](./date-time/timestamp/README.md) |
| Cálculo de datas | Adição e subtração de datas | [Acessar snippet](./date-time/date-calculation/README.md) |

---

## Conversões

Exemplos de conversão entre tipos de dados.

| Recurso | Descrição | Material |
|---|---|---|
| Conversão implícita | Conversão automática entre tipos compatíveis | [Acessar snippet](./conversions/implicit-conversion/README.md) |
| `CONV #( )` | Conversão explícita utilizando expressão | [Acessar snippet](./conversions/conv-expression/README.md) |
| `EXACT #( )` | Conversão com validação de precisão | [Acessar snippet](./conversions/exact-expression/README.md) |
| Conversion Exit | Conversão utilizando rotina standard | [Acessar snippet](./conversions/conversion-exit/README.md) |

---

## Outros recursos

Snippets que ainda não possuem uma categoria específica.

| Recurso | Descrição | Material |
|---|---|---|
| `IS INSTANCE OF` | Verifica o tipo de uma referência | [Acessar snippet](./others/is-instance-of/README.md) |
| `IS BOUND` | Verifica se uma referência está vinculada | [Acessar snippet](./others/is-bound/README.md) |
| `XSDBOOL` | Converte condição lógica em valor booleano | [Acessar snippet](./others/xsdbool/README.md) |
| `BOOLC` | Retorna resultado lógico como caractere | [Acessar snippet](./others/boolc/README.md) |

---

## 🔎 Busca rápida por finalidade

### Criar ou preencher dados

- [`VALUE #( )`](./constructor-expressions/value/README.md)
- [`NEW #( )`](./constructor-expressions/new/README.md)
- [`FOR ... IN`](./internal-tables/for-expression/README.md)
- [`BASE`](./internal-tables/value-base/README.md)

### Converter dados

- [`CONV #( )`](./constructor-expressions/conv/README.md)
- [`CAST #( )`](./constructor-expressions/cast/README.md)
- [`EXACT #( )`](./constructor-expressions/exact/README.md)
- [`CORRESPONDING #( )`](./constructor-expressions/corresponding/README.md)

### Verificar tabelas internas

- [`line_exists( )`](./internal-tables/line-exists/README.md)
- [`line_index( )`](./internal-tables/line-index/README.md)
- [Table Expression](./internal-tables/table-expression/README.md)

### Definir valores por condição

- [`COND #( )`](./constructor-expressions/cond/README.md)
- [`SWITCH #( )`](./constructor-expressions/switch/README.md)

### Agrupar ou consolidar dados

- [`LOOP AT ... GROUP BY`](./internal-tables/loop-group-by/README.md)
- [`REDUCE #( )`](./constructor-expressions/reduce/README.md)
- [`FILTER #( )`](./constructor-expressions/filter/README.md)

---

## 🗂️ Estrutura das pastas

```text
snippets/
├── README.md
├── constructor-expressions/
├── declarations/
├── internal-tables/
├── data-processing/
├── open-sql/
├── oop/
├── exceptions/
├── strings/
├── date-time/
├── conversions/
└── others/
