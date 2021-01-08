# Git Flow

Além de controle de versionamento, o [Git](https://git-scm.com/) é uma das
melhores ferramentas para se escrever _software_ de maneira colaborativa
diante das inúmeras formas baseadas em Git de se compartilhar tanto o código
feito como todo o ecossistema ao seu redor. Para tornar este processo de
colaboração mais eficaz, é recomendado que os colaboradores concordem em um
fluxo de trabalho.

O que segue é uma sugestão para este fluxo de trabalho, baseada na experiência
de vários desenvolvedores de _software_. Este texto assume que o leitor está
confortável com os conceitos básicos do Git (_branches_; _pull_; _push_;
_rebase_), entre outros) para poder aplicá-los no cotidiano.

Os exemplos a seguir assumem que está sendo desenvolvida uma aplicação _web_,
com uma versão rodando em um servidor de produção e algumas possíveis versões
de teste em outros locais.

## Organização do Repositório

Uma das principais ideias de se seguir um fluxo é estabelecer uma hierarquia
nas _branches_ de trabalho, cada uma com um propósito próprio. No final das
contas, o ideal é ter as seguintes _branches_:

- _branch_ principal (comumente chamada de _master_ ou _main_)
  - Contém tudo que estiver sendo executado em produção;
- _branches_ para _features_ novas
  - Novas funcionalidades devem ser incluídas aqui, com a intenção de
    eventualmente serem mescladas na _branch_ principal;
- _branches_ para correções
  - Aqui vão os reparos para corrigir _bugs_ direto em produção;

## Fluxo Básico de Desenvolvimento

Com o repositório organizado, o fluxo de trabalho regular será o seguinte:

- Criar uma _feature branch_ baseada na _master_;
- Desenvolver o que for necessário para a _feature_;
  - Note que uma _feature_ pode ser composta de várias outras _features_,
    então pode ser necessário criar uma _feature_ branch baseada na
   _feature_  original.
- Revisar as mudanças realizadas no código;
  - Se as mudanças forem aprovadas, podemos mesclá-las;
  - Caso contrário, refazer as mudanças até que o código fique satisfatório;

Correções de _bugs__ direto na _master_ deverão ser feitos em _hotfixes_,
como explicados na seção a seguir.

### Exemplo

Primeiro, vamos criar uma _feature branch_:

``` sh
git branch  # conferindo se realmente estamos na master
git checkout -b feature_branch  # criando a feature branch local
git push origin feature_branch  # criando a feature branch remota
```

Vamos criar um proposta de mudança agora. Cada plataforma tem uma forma
diferente de criar essas propostas: o GitHub as chama de _Pull Requests_;
o GitLab, de _Merge Requests_, e por aí vai. O ponto é que as mudanças que
fizemos devem ser pertinentes:

- As mudanças devem ser de acordo com a _feature_ que estamos desenvolvendo;
  - Isto quer dizer que não devemos resolver problemas que não existem
    ou que não estejam relacinados com o que queremos desenvolver
    naquele momento;
- Os _commits_ devem ser atômicos, isto é, devem fazer somente as mudanças
  necessárias;
  - Isto quer dizer que não devemos incluir mudanças que não tem a ver
    uma com a outra no mesmo _commit_, ou resolver um problema que não existe;
- As mensagens nos _commits_ devem ser claras e explicativas;
  - Uma ideia é imaginar que a mensagem do _commit_ termina a segunite frase:
    "este _commit_..."

## _Hotfixes_

Correções de código direto na _master_ devem seguir um fluxo similar ao fluxo
básico. A grande questão dos _hotfixes_ é que as mudanças que são realizadas
aqui devem ser incluídas nas _features_ que ainda estão sendo desenvolvidas.
Neste caso, podemos dar um `rebase` na `master` para incluir estas mudanças:

``` sh
# imagine que mesclamos algumas mudanças na master e queremos colocá-las
# em uma feature branch que foi criada se baseando na master
git checkout master  # obtendo as mudanças feitas na master
git pull origin master
git checkout feature_branch
git rebase master
# agora basta corrigir os conflitos caso existirem e estamos prontos para continuar!
```

Note que este processo também pode ser feito para _feature branches_ que
vão ser mescladas em outras _feature branches_. Isto permite que uma mesma
_feature_ possa ser desenvolvida independentemente por mais de um desenvolvedor.

## Revisão de Código

Antes de mesclarmos uma proposta de mudança de código, é recomendado que uma
revisão de código seja feita para:

- Garantir um padrão mínimo de qualidade;
- Identificar possíveis falhas no código;
- Trocar experiências;

Além disso, é bom ter mais um revisor para cada proposta a fim de se ter mais
segurança nas decisões tomadas.

### Para o revisor

O objetivo do revisor de uma proposta é garantir que as mudanças feitas para
uma dada _feature_ sejam as melhores possíveis. Um revisor nunca pode se
esquecer do seguinte:

- Há testes para o código (por exemplo: testes unitários ou de integração)?
- Existem formas melhores de se executar uma certa tarefa?
- Tem algum caso de uso que o autor esqueceu de tratar?

### Para o autor

O autor de uma proposta deve se atentar que código não é escrito somente
para máquinas, mas principalmente para outras pessoas. Com isto em mente,
é fundamental que alguns critérios sejam obedecidos:

- O código deve ser claro e bem-explicado. Comentários e testes unitários
  sempre são bem vindos nessas horas;
- O histórico de _commits_ deve ser claro e auto-explicativo;
  - Não tenha medo de reescrever o histórico de _commits_ caso necessário!
- Você não é o seu código!
  - Não leve os comentários feitos em seu código para o lado pessoal;

#### Reescrevendo o histórico de _commits_

Falando sobre reescrever histórico: isso pode ser feito utilizando o `rebase`.
Supondo que foram feitos 10 _commits_ e queremos reorganizá-los:

```
git rebase -i HEAD~10
```

Isto abrirá um editor de texto com os comandos para se realizar um
_rebase interativo_. Aqui, podemos juntar; reescrever; e ignorar _commits_, entre
outros. No final, basta salvar o arquivo e sair do editor.

## Em resumo...

O processo pode ser explicado pelos seguintes passos:

- Definir problema a ser resolvido;
- Criar estrutura de _branches_  necessária para a mudança;
- Desenvolver e validar mudança por meio de revisão de código;

Se bem implementado, espera-se melhorar tanto a qualidade do código como a
qualidade e quantidade de comunicação entre os membros de uma equipe
desenvolvedora de _software_.
