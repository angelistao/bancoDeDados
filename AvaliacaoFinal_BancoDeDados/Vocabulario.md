## sistema gerenciador de banco de dados
um software que permite aos usuários definir, criar, manter e controlar o acesso a um banco de dados. Ele fornece uma interface para interação com os dados armazenados e inclui mecanismos para garantir a segurança, integridade e eficiência dos dados. Exemplos populares incluem MySQL, PostgreSQL, Oracle Database, SQL Server, entre outros.

## restrições em banco de dados
são regras que definem as condições que os dados em um banco de dados devem satisfazer. Elas garantem a consistência e a integridade dos dados. Exemplos incluem restrições de chave primária, chave estrangeira, restrições de unicidade e restrições de integridade referencial.


## modelo relacional
é um modelo de dados que organiza os dados em tabelas (relações) compostas por linhas (tuplas) e colunas (atributos). Ele utiliza chaves para estabelecer relacionamentos entre tabelas. Foi proposto por Edgar F. Codd na década de 1970 e é amplamente utilizado em sistemas de banco de dados relacionais.

## modelagem conceitual
é o processo de identificar as entidades importantes em um domínio de negócios e os relacionamentos entre elas. É uma fase inicial de projeto de banco de dados que se concentra na compreensão dos requisitos e na representação abstrata das entidades e seus relacionamentos focado em um lado visual da modelagem e na apresentação para um possível cliente.

## modelagem lógica
é a transformação da modelagem conceitual em um modelo de dados que possa ser implementado em um SGBD específico. Isso envolve a especificação de tabelas, colunas, chaves primárias, estrangeiras e outras restrições de integridade.

## modelagem física
é a implementação concreta do modelo de dados lógico em um SGBD específico. Isso inclui decisões sobre como os dados serão armazenados fisicamente em disco, como índices serão criados para otimização de consultas, entre outros aspectos relacionados ao desempenho do banco de dados.

## linguagem SQL
é uma linguagem de programação utilizada para gerenciar e manipular dados em bancos de dados relacionais. Ela permite a criação de consultas (queries) para recuperar informações, inserir, atualizar e excluir dados, definir esquemas de banco de dados e estabelecer permissões de acesso.

## Data Definition Language (DDL)
é uma parte do SQL que permite definir e modificar estruturas de objetos de banco de dados, como tabelas e índices. Exemplos de comandos DDL incluem CREATE (para criar objetos), ALTER (para modificar objetos existentes) e DROP (para excluir objetos).

## Data Manipulation Language (DML)
é uma parte do SQL usada para manipular dados dentro de objetos de banco de dados. Exemplos de comandos DML incluem SELECT (para recuperar dados), INSERT (para inserir novos registros), UPDATE (para modificar registros existentes) e DELETE (para excluir registros).

## Boas práticas em modelagem de banco de dados
Normalização: Organizar dados em estruturas que minimizam a redundância e mantêm a integridade dos dados.
Indexação: Utilizar índices para melhorar o desempenho das consultas.
Chaves Primárias e Estrangeiras: Definir corretamente para garantir integridade referencial.
Desnormalização (em casos específicos): Para otimizar consultas que são executadas com frequência.
Segurança: Implementar permissões de acesso adequadas para proteger os dados contra acesso não autorizado.
Backup e Recuperação: Estabelecer procedimentos para garantir a disponibilidade dos dados em caso de falhas.