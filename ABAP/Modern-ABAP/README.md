# 🧩 ABAP Mordeno  

Esta pasta contém exemplos de código ABAP e apresentação de ferramentas SAP de modelagem.

As instruções presentes nos selects são tratadas diretamente na camada de banco de dado (Code PushDown)

---

## 📚 TIPS & TRICK

| Recurso | Descrição | Material | Fonte 
|---|---|---|---|
| `INSERT: VALUE#()` | Inserindo varias linhas( Encadeadas ) em _`RANGES`_ com **ABAP INLINE** com o comando _`INSERT`_  | [Acessar](./Code/ZPRG_INSERT_ENCADEADO.ABAP) | [N/A]() |
|`𝗔𝗟𝗣𝗛𝗔 = 𝗢𝗨𝗧 e 𝗔𝗟𝗣𝗛𝗔 = IN`| Utilizando comando **INLINE** de conversão de zeros em vez de utilizar o modulo de função _`CONVERSION_EXIT_ALPHA_OUTPUT`_|[Acessar](./Code/ZPRG_OUTPUT_ALPHA.ABAP)|[Acessar](https://www.linkedin.com/feed/update/urn:li:activity:7470429587618025472/)|
|`FINAL(LV_VARIAVEL)`|Utilizado para criar uma variável **IMUTAVEL**, ou seja só existe em um canto e não pode ser alterado, não confundam  com CONSTANTS|[Acessar]()|[Acessar](https://www.linkedin.com/feed/update/urn:li:activity:7501138157506297856/)|
|`CORRESPONDING com FROM`|Utilizando o _`CORRESPONDING`_ com _`FROM`_ para buscar e atualizar dados de tabelas internas por chaves|[Acessar](./Code/ZPRG_CORRESPONDING_FROM_ERI.ABAP)|[Acessar](https://www.linkedin.com/feed/update/urn:li:activity:7377667613172113408/)|
|  | Usando [CASE dentro do SELECT](./Code/ZPROG_SELECT_WITH_CASE_ERI.ABAP) para modificar campos na tabela interna | [Acessar](N/A) | [Acessar](N/A) | 
|  | Formatação de texto para LOG [New Syntax WRITER](./Code/ZPROG_NEW_SYNTAX_TEXT_LOG_ERI.ABAP) baixando arquivo TXT com module funcção GUI_DOWNLOAD | [Acessar](N/A) | [Acessar](N/A) | 
|  | Realizando um [LOOP AT reverso](./Code/ZPROG_LOOP_REVERSE_STEP_ERI.ABAP) com a instrução STEP e o comando COLOR para mudar sobra de textos | [Acessar](N/A) | [Acessar](N/A) | 
|  | Formatação de textos com [TO_UPPER CASE, TO_LOWER CASE e TRANSLATE](./Code/ZPROG_TRANSLATE_UPPER_LOWER.ABAP) | [Acessar](N/A) | [Acessar](N/A) | 
|  | Expressões incorporadas em modelo de string [SY-DATUM, SY-UZEIT, CURRENCY, WIDTH e ALPHA](./Code/ZPROG_STRING_EMBEDDED_ERI.ABAP)  ABAP moderno | [Acessar](N/A) | [Acessar](N/A) | 
|  | Uso do comando [TO UPPER e do UPPER](./Code/ZPROG_SELECT_UPPER_ERI.ABAP) para tornas tonar conteúdo em caixa alta, e o uso em SQL após a clausula WHERE | [Acessar](N/A) | [Acessar](N/A) | 
| `CLEAR: .. WITH` | Usando o comando _`CLEAR`_ com _`WITH`_ para escolher quais campos não limpar da estrutura | [Acessar](./Code/zprg_structure_with_clear_eri.abap) | [N/A]() | 
| `ASSIGN` | Usando o _`ASSIGN`_  para recuperar valores da pilha ABAP no debugger | [Acessar](./Code/ZPRG_ASSIGN_PILHA_ABAP.ABAP) | [N/A]() | 
| `LOOP AT .. STEP` | Usando o comando _`STEP`_ -1 para realizar um _`LOOP`_ inverso | [Acessar](./Code/ZLOOP_BACKWARD_DIRECTION_ERI.ABAP) | [N/A]() | 
| `WRITE` e `SY-VLINE` | Gerar log em forma de tabela com bordas identificando cabeçalho das colunas por numeração | [Acessar](./Code/ZPRG_WRITE_WITH_NUMEBERS_ERI.ABAP) | [Acessar](https://youtu.be/gRfDvdTTfco?si=wYdnuhT7gRjZNTRI) | 
| `LOOP AT ... CASTING`| Usando o comando _`CASTING`_ para tornar o FIELD-SYMBOL do _`LOOP AT`_ compatível com o tipo de dados sendo processados| [Acessar](./Code/ZPRG_CASTING_IN_LOOP.ABAP) | [N/A]() |
`INCLUDE STRUCTURE`| Criando tipos de dados com comando _`TYPE`_ referenciado estruturas com _`INCLUDE STRUTURE`_ | [Acessar](./Code/ZPRG_CASTING_IN_LOOP.ABAP) | [N/A]() |

---


