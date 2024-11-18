# Siglas na Engenharia de Software

No meio do desenvolvimento de software, é provável que você vá encontrar
algumas siglas não muito fáceis de entender. Neste artigo, vamos destrinchar
algumas delas.

## SOLID

**SOLID** é uma forma de lembrar os 5 princípios básicos para escrever
programas orientados a objeto. Ela for criada por Robert Martin como uma
forma de promover a produção de código reutilizável e evitar o que ele
chamou de "código podre". Em inglês, são eles:

- **S**ingle responsibility (ou "Responsabilidade única")
  - Toda classe deve ter somente uma única responsabilidade;
- **O**pen-closed (ou "Aberto-fechado")
  - Entidades de software devem estar abertas para extensão mas fechadas para modificação;
- **L**iskov substitution ("Substituição de Liskov")
  - Métodos que usam referências a classes básicas devem ser capazes de usar objetos derivados sem se preocupar com isso;
  - Esse princípio é a base do que chamamos de *Polimorfismo* e foi definido pela cientista da computação Barbara Liskov;
- **I**nterface segregation (ou "Segregação por interface")
  - Classes não devem depender de interfaces que elas mesmas não usam;
- **D**ependency inversion (ou "Inversão de dependências")
  - Classes devem depender de outras classes abstratas, nunca classes concretas;

## CUPID

O método **CUPID** foi criado por Daniel Terhorst-North como uma resposta
ao SOLID. Em vez de focar em princípios, este método foca em propriedades
que toda base de código deve ter e manter ao longo do tempo. Essas
propriedades são, em inglês:

- **C**omposable (ou "Agregabilidade")
  - Toda unidade de software deve harmonizar com os outros componentes ao redor de maneira harmônica;
- **U**nix philosophy (ou "Filosofia Unix")
  - Todos os componentes devem se especializar em uma única tarefa, aderindo a uma interface única e consistente;
- **P**redictable (ou "Previsível")
  - Todo código deve demonstrar comportamentos previsíveis e observáveis, em particular para a infraestrutura de segurança ao redor dele;
- **I**diomatic (ou "Idiomático")
  - O código deve seguir as convenções do ambiente onde ele está, desde a comunidade que mantém a linguagem de programação até o meio que o mantém;
- **D**omain-based (ou "Baseado no domínio")
  - Todo programa é escrito para resolver um problema que existe dentro de uum domínio específico, então a linguagem e o conhecimento deste domínio devem ser seguidos e respeitados pelos mantenedores;

## RACI

**RACI** significa, em inglês, **R**esponsible; **A**ccountable; 
**C**onsulted; e **I**nformed (ou encarregado; responsável; consultado;
e informado) e são os componentes da chamada "matriz de determinação de
responsabilidades". Ela é a usada para determinar, dentro de uma organização
quem são pessoas que participam na execução de uma tarefa. Essas pessoas
são:

- Encarregado
  - Aqueles que de fato completaram a tarefa;
- Responsável
  - Aqueles que tem autoridades para aprovar quando uma tarefa é dita completa e que responderam por ela depois que o resultado for entregue;
- Consultado
  - Aqueles que tem conhecimento sobre o domínio no qual o problema está sendo resolvido;
- Informado
  - Aqueles que tem que ficar sabendo que a tarefa foi terminada;

