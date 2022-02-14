# Modelo de Kano

Uma ferramenta simples mas eficiente para priorizar funcionalidades enquanto desenvolvendo _software_ é o **modelo de Kano**, desenvolvido nos anos 1980 pelo pesquisador japonês Noriaki Kanō. A ideia por trás deste método consiste em classificar as preferências dos clientes em 5 categorias e utilizá-las para priorizar as atividades de desenvolvimento.

Dito isto, podemos classificar estas preferências dos clientes da seguinte forma:

- Obrigatório
  - Se não estiver presente, o produto é inutilizável
  - Quando está presente, ninguém presta atenção
- Performance
  - Sua falta atrapalha a produtividade do usuário
  - Sua presença ajuda o usuário
  - Quanto melhor implementado, mais produtivo o usuário é
- Agradável
  - Os usuários não sentem falta se não estiver no produto
  - Porém, eles adoram quando tem
- Indiferente
  - Não faz diferença no resultado final
- Detrator
  - Quando presente, cria um obstáculo para o usuário final

Para identificar onde cada funcionalidade se encaixa, algumas pesquisas de satisfação podem ser feitas. Primeiramente, lista-se todas as funcionalidades do produto. Em seguida, responde-se algumas perguntas para cada uma delas:

- Como você se sentiria se o produto tivesse tal funcionalidade?
- Como você se sentiria se tal funcionalidade no produto funcionasse muito bem?
- Como você se sentiria se o produto não possuísse essa funcionalidade?
- Como você se sentiria se essa funcionalidade não fosse muito eficiente?

As respostas a estas perguntas indicarão a categoria de cada funcionalidade. Por exemplo, funcionalidades "obrigatórias" são esperadas e ninguém gostaria que elas falhassem de maneira alguma. Por outro lado, funcionaliades "detratoras" são indesejáveis e alguns usuários até esperam que elas sejam disfuncionais.

Identificadas as categorias, o desenvolvimento deve ser priorizado da seguinte forma:

- Implementar, nesta ordem, funcionalidades obrigatórias; de performance; e agradáveis
- Remover funcionalidades detratoras e indiferentes

Uma consequesência do modelo de Kano é que diferentes funcionalidades costumam mudar de categoria ao longo do tempo:

- Funcionalidades de performance se tornam obrigatórias; 
- ...enquanto funcionalidades agradáveis se tornam de performance

Isto acontece pois clientes se acostumam com padrões de qualidade cada vez maiores e esperam que todos os produtos sigam estes padrões. Por isso, é importante compreender o que os concorrentes estão desenvolvendo para identificar em quais categorias as funcionalidades novas se encaixam para que o produto em questão se ajuste as realidades do mercado.

