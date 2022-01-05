# Como escrever _issues_

Boa parte do tempo de um desenvolvedor de _software_ é gasta corrigindo
e verificando _bugs_. Dito isto, se for possível diminuir o máximo de
tempo possível sofrendo com eles, naturalmente é desejável tomar
este caminho. Uma das formas de se ajudar neste sentido é na hora de
escrever _issues_, as descrições dos problemas a serem resolvidos.
Enquanto não existe uma fórmula mágica para se escrever _issues_, existem
alguns cuidados a serem tomados para que a descrição seja boa o suficiente
para que os engenheiros possam trabalhar da melhor forma possível.

Neste texto, imagina-se um aplicativo de anotações em que o usuário,
por algum motivo, não é capaz de salvar suas notas depois de escrever.

Sem levar muita consideração na hora de descrever o _bug_, pode-se acabar
escrevendo algo como:

```
Não consigo salvar o arquivo.
```

Uma descrição como esta não leva em conta o contexto ou o que está sendo
feito. Apesar de servir como um bom resumo, problemas de _software_
podem surgir das mais diversas fontes. Neste sentido, pode ser interessante
ter um guia de passos a serem seguidos antes mesmo de se submeter o _bug_.
Por exemplo:

```
- Verifique a aplicação está conectada à internet
- Verifique que está logado à aplicação
- Tente novamente
```

Se mesmo com estes cuidados o problema ainda persistir, então podemos
escrever uma descrição mais cuidadosa. Uma maneira efetiva de descrever
um problema é listar o passo-a-passo para se reproduzí-lo, incluindo o
resultado esperado e o que realmente acontece:

```
- Crie uma anotação nova
- Escreva um texto qualquer
- Tente salvar a anotação
  - É esperado que a anotação seja salva
  - Em vez disso, uma mensagem de erro aparece
```

Além disso, pode ser interessante incluir mais exemplos. Pode ser
que o problema aconteça com alguma entrada específica ou somente
em alguns dispositivos ou navegadores. Adicionar algo como...

```
Informações adicionais:
- Exemplo de texto que quebra a aplicação: "bacon > brócolis"
- Acontece somente no navegador Google Chrome
- Testado e funcionando no Firefox
```

...podem apontar diretamente para o problema no código e acelerar muito
a resolução do problema.

Note que uma descrição dessas pode servir inclusive para requisitar uma
_feature_ nova.

```
- Abrir as anotações
- Abrir o menu de opções
  - É desejável que tenha uma opção de ver quando a anotação foi criada 
    aqui
```

Tendo descrições assim no Github ou no Gitlab torna as mudanças mais
fáceis de serem escritas e verificadas, ajudando na melhoria do
_software_.
