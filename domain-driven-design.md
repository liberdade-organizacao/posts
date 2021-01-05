# _Domain Driven Design_

Em geral, não escrevemos _software_ no vácuo. Nossos programas existem dentro de
um contexto o qual deve ser levado em consideração durante o desenvolvimento,
já que é de lá que surgem as tais regras de negócio; requisitos; e o problema
que queremos resolver.

Com isto em mente, a ideia do _Domain Driven Design_ é fornecer um vocabulário
comum ao desenvolver e às pessoas que o utilizam o seu _software_ a fim de
evitar ambiguidades e melhorar a comunicação. Essa terminologia é importante pois ela impacta diretamente o código, já que é dela que virão os nomes das variáveis; funções; classes; e tudo aquilo que vai dentro do código.

Para fornecer este vocabulário comum, alguns conceitos devem ser determinados...

## Contexto

...é tudo aquilo que está ao redor dos desenvolvedores e dos clientes.

É importante que todo trecho de código esteja atrelado a um contexto específico.
Deve ser assim pois código, além de ser utilizado como programas de computador,
é uma ferramenta de comunicação entre os desenvolvedores. Ter um contexto
específico é fundamental para evitar uma série de _bugs_ e de problemas
de comunicação.

## Domínio

...é a esfera do conhecimento que será aplicada em um dado contexto.
Em geral, programas são implementações de conceitos de outras áreas do
conhecimento (não necessariamente da ciência da computação).

É necessário estar atento aos conceitos destas áreas para poder implementá-los corretamente.

## Modelo

...é o conjunto de abstrações em cima do qual se é trabalhado.
Idealmente, este modelo vem do domínio, mas pode ser construído na medida que o
_software_ é desenvolvido.

Quando implementamos este modelo, é importante que certos cuidados sejam
tomados:

- Um serviço de integração contínua deve estar instalado para evitar que
  desenvolvedores trabalhando em partes diferentes do sistema quebrem a
  implementação do modelo;
- Um mapa de contexto deve ser acessível também, para que todo código esteja
  atrelado a um contexto e, consequentemente, em conformidade ao modelo.

## Linguagem

...é o glossário de termos utilizados. É importante que o jargão de
trabalho seja bem definido, já que tanto computadores como pessoas
não lidam bem com ambiguidade.

Existem alguns termos que definem artefatos que podem ser úteis para os
desenvolvedores:

- Entidade
  - Todo objeto que é definido pela sua identidade;
- Objeto de valor
  - Todo objeto que é definido pelos seus atributos;
  - Devem ser tratados como imutáveis;
- Agregado
  - Conjunto de vários objetos que são caracterizados por uma relação central;
- Evento
  - É qualquer coisa que ocorra no sistema;
  - Em geral, é o que os _experts_ em um domínio se interessam;
- Serviço
  - Uma operação que não pertence a nenhum objeto em específico;
- Repositório
  - Conjunto de métodos para obter objetos específicos de tal forma que seja fácil criar alternativas;
- Fábrica
  - Conjunto de métodos para criar objetos de tal forma que seja fácil criar alternativas;

Além destes termos, também é recomendado definir formalmente os termos de negócio com o cliente.
