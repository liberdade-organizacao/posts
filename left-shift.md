# Mentalidade _Left-Shift_

Naturalmente, toda equipe que trabalha com _software_ tem uma forma diferente
de criar seus produtos. Porém, de uma forma geral, podemos dizer que segue um
fluxo mais ou menos assim:

<!-- TODO gerar imagens para substituir estes gráficos -->
```
+---------+   +-----------------+   +--------+   +-----------+
| Projeto |-->| Desenvolvimento |-->| Testes |-->| Operações |
+---------+   +-----------------+   +--------+   +-----------+
```

Quem já entregou um projeto, porém, sabe que a vida nāo segue este modelo.
Existem vários motivos para isso acontecer, mas gostaria de focar em um hoje:
a falta de testes no produto.

Porque o produto não é testado tão frequentemente? Existem várias razões para
isso:

- Os testes não fazem parte do _pipeline_ de desenvolvimento;
- Os testes que existem agora são caros (custam muito tempo ou muitas máquinas
  para serem executados);
- Não há testes implementados agora, então é melhor continuar desenvolvendo;
- "Só há um teste necessário: se o usuário gostou, está bom demais"

Ter uma mentalidade _left-shift_ significa resolver todas essas questões
seguindo este princípio:

> Quanto mais cedo fizermos testes, melhor

Isto significa que:

- Tudo novo que for desenvolvido deve ser coberto por testes;
- A grande maioria dos testes devem simples e rápidos para não atrapalhar
  o desenvolvimento;
- Testes devem ser automatizados a fim de acelerar o processo e torná-lo mais
  confiável;

Implementar **testes unitários**, por exemplo, é uma forma simples de garantir
os componentes do seu programa funcionam e se integram direito.
Além disso, existem ferramentas como [_Katalon_](https://www.katalon.com/) ou
[_JMeter_](https://jmeter.apache.org/) para implementar **testes operacionais**
e garantir que as funcionalidades visuais do seu aplicativo não vão quebrar.

Implementar uma **_pipeline_ de integração contínua (CI)** pode ser muito útil
também: uma ferramenta que execute todos os testes possíveis antes de entregar
seu programa é capaz de detectar vários erros inesperados.

Ideias assim podem transformar o processo de desenvolvimento:

```
+---------+   +--------+    +-----------------+   +-----------+
| Projeto |-->| Testes |<-->| Desenvolvimento |-->| Operações |
+---------+   +--------+    +-----------------+   +-----------+
```

E ajudar os desenvolvedores a entregar resultados mais confiáveis com mais
qualidade.
