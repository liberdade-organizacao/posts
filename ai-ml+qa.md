# AI/ML para QA

Por Jonathan Lipps

_Quality Assurance_ (QA) são as atividades para garantir a qualidade do seu software.

Inteligência artificial (AI) é fazer o computador parecer inteligente.

_Machine Learning_ (ML) é fazer o computador aprender por conta própria.

| Categorias de ML               | Algoritmos de ML           |
|--------------------------------|----------------------------|
| Aprendizado supervisionado     |  Regressão Linear          |
| Aprendizado não-supervisionado | Agrupamento por `k` formas |
| Aprendizado por reenforço      | Redes neurais              |

Exemplos:

- Predizer se uma flor é de uma determinada espécie baseada em uma amostra anterior (aprendizado supervisionado)
- Agrupar músicas de uma grande biblioteca (aprendizado não-supervisionado)
- Aprender a jogar um videogame contra humanos (aprendizado por reenforço)

_Deep Learning_ é uma forma de usar redes neurais, não uma categoria de ML.

Tenha cuidado com besteiras industriais, já que AI é fácil de vender mas difícil de usar!

Soluções de AI em QA:

- AI para marketing somente
- AI/ML em um papel de suporte
- AI/ML como força principal da automação

Modelos de ML podem ser usados para dar suporte a _features_, não como um substituto para autoria de testes. Também é possível que testes sejam escritos e que _bugs_ sejam descobertos por _bots_ autônomos agindo com modelos de ML pré- ou pós-treinamento.

Nívels de AI/ML em QA:

1. Coletar atividades dos usuários em produção para gerar casos de tests. Identificar múltiplos seletores para melhorar a robustez de um teste.
2. Modelos de recognição de imagem para detectar diferenças visuais. Modelos de qualidade de vídeo dando _feedback_ sobre qualidade como percebida pelo usuário.
3. Entregar o aplicativo para uma AI sem informações adicionais e ela te devolver todos os _bugs_.

A grande maioria das tecnologias atuais estão entre 1 e 2.

A grande questão, porém, é:

> Você precisa de AI para os seus testes? Por que?

Para responder a esta pergunta, é necessário avaliar a tecnologia baseada em seu verdadeiro retorno, não na _hype_ ao redor dela.

Para testar o seu vendedor: qual _corpus_ você usou para ensinar sua AI?

Predição: AI/ML será usada em papeis auxiliares, já que sempre será necessário que alguém avalie os seus resultados.