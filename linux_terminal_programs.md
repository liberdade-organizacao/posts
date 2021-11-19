# Programas Básicos do Linux

Ao contrário do que parece, utilizar o terminal no Linux é simples!
Conhecendo alguns programas básicos, é possível utilizar ainda mais o seu
sistema operacional.

Listarei a seguir os comandos que eu mais utilizo no dia-a-dia, além de
algumas alternativas para usuários mais avançados.

## `pwd`

Mostra qual o diretório atual.

``` sh
pwd
```

## `cd`

Muda para o diretório indicado.

``` sh
cd some_dir
```

## `ls`

Lista os arquivos e pastas no diretório atual.

```
ls
```

Alternativa avançada: [`lsd`](https://github.com/Peltoche/lsd)

## `top`

Equivalente ao gerenciador de tarefas. Mostra quais aplicações estão 
utilizando mais memória ou CPU; permite terminar programas; e inclui
um resumo da utilização dos recursos do sistema.

Alternativas avançadas:
- `htop`
- [`btop`](https://github.com/aristocratos/btop)

## `du`

Mostra como o diretório atual está sendo utilizado em termos de memória.

```
du -h
```

Alternativa avançada: [`gdu`](https://github.com/dundee/gdu)

## `make`

Ferramenta para automação de tarefas. Fundamental para compilar programas
por conta própria.

## `nano`

Editor de texto simples no próprio terminal.

Alternativas avançadas (proceed with caution with these two):
- `vim`
- `emacs`

## Visualização de Texto

``` sh
cat   # mostra todo o conteúdo de um determinado arquivo
more  # mostra o conteúdo de um arquivo, uma página por vez
less  # igual ao more, mas diferente
head  # mostra o começo de um arquivo 
tail  # mostra o final de um arquivo
```

## `ssh`

Permite acessar um computador remotamente.

```
ssh usuario@endereco
```

## Extras

Para ter um resumo do sistema rápido:

``` sh
neofetch
```

Garanta que os seguintes programas estejam instalados:
- `toilet`
- `cowsay`
- `fortune`
- `lolcat`

E execute o seguinte:

``` sh
fortune | cowsay | lolcat
```

Ou então:

``` sh
fortune | toilet
```

