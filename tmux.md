tmux
====

O _Terminal Multiplexer_ (tmux para os íntimos) é um programa para sistemas Unix que permite reorganizar a linha de comando, adicionando janelas e sessões para o terminal.

Aqui, utilizarei o símbolo ⌘ para representar a combinação _prefix_, que é acionada por `ctrl B`.

Acessando o `tmux`
------------------

Para criar uma sessão no `tmux`, digite:

```
tmux  # para simplesmente iniciar o tmux
tmux new -s $nome-da-sessao  # para dar um nome ã sessão
```

Para listar sessões:

```
tmux list-sessions
```

Para voltar a uma sessão desafixada:

```
tmux attach -t $nome-da-sessao
```


Comandos básicos
----------------

- ⌘C cria novas janelas
- ⌘, renomeia janelas
- ⌘N e ⌘P para trocar janelas ("Next" e "Previous")
- ⌘W para listar janelas
- ⌘% e ⌘" divide uma janela vertical e horizontalmente, respectivamente.
- ⌘O para mudar para o próximo painel
- ⌘D para desafixar de uma sessão
- ⌘? para listar todos os atalhos
- ⌘Z para maximizar o painel atual
- ⌘: para digitar comandos manualmente
- ⌘( e ⌘) para trocar entre sessões

Examplos de comandos manuais:

- `split-window`: divide uma janela horizontalmente
- `set -g mouse on`: ativa o mouse na janela
- `set -g prefix C-a`: troca a combinação _prefix_ para _ctrl-a_
- `new -s nome-da-sessao`: cria uma sessão nova

Ao alterar configurações, pode ser necessário salvá-las:

```
tmux show -g > ~/.tmux.conf
```

Usando `copy-mode`
------------------

Um dos modos mais úteis do `tmux` é o `copy-mode`, que permite navegar pelo terminal sem precisar usar o mouse.

- ⌘[ para ativar o `copy-mode`
- Use as setas para navegar pelo terminal
- "Espaço" para começar a selecionar texto
- "Enter" para copiar texto
- "Escape" para sair do `copy-mode`
- ⌘] para colar texto

Note que a área de transferência do `tmux` é diferente da do sistema operacional, ou seja, texto copiado desta forma não estará disponível no _ctrl-v_  usado normalmente.

