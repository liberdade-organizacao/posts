# _Progressive Web Apps_

Uma das estruturas mais interessantes de aplicações _web_ é os chamados _progressive web apps_ (PWA para os íntimos). A ideia por trás deste conceito é tratar o seu site como um aplicativo que é baixado da _App Store_ ou da _Play Store_, por exemplo. A vantagem, porém, é que estamos aproveitando o melhor dos dois mundos: ninguém precisa lidar com as lojas diretamente (nem o usuário nem o desenvolvedor); e as ferramentas de desenvolvimento continuam sendo as usuais da web.

Para podermos chamar um site de um PWA e termos acesso a estas vantagens, algumas características devem estar presentes...

## Instaláveis

Idealmente, queremos que os usuários possam abrir o site e salvá-lo em sua máquina local para utilizar depois. Nos _smartphones_, por exemplos, é possível adicionar um site à tela inicial e tratá-lo como um aplicativo como qualquer outro.

Contudo, para fazer o melhor uso possível deste critério, o site deve:
- Incluir dentro de si todas as dependências necessárias
- Cachear componentes internos
- Incluir um arquivo [`webmanifest`](https://developer.mozilla.org/en-US/docs/Web/Manifest) com informações sobre o aplicativo

Com o aplicativo instalado, é necessário também que haja alguma forma de atualizar os arquivos cacheados para mantê-lo sempre em dia.

## Responsíveis

Como estamos falando de um site no fim das contas, a mesma aplicação deve funcionar no máximo de aparelhos possíveis, de computadores a _smartphones_. Existem [algumas diretrizes](https://www.w3schools.com/html/html_responsive.asp) a serem seguidas para garantir que as proporções de textos, imagens e outros componentes variem de acordo com o dispositivo.

## _Linkáveis_ & Descobríveis

Ao invés de estar disponível em uma loja, o aplicativo agora vai ser distribuído como um site. Dito isto, é importante que ele esteja visível na _internet_ por meio de um link.

Além disso, é pertinente que a aplicação também possa ser descoberta por meio de um motor de buscas (como o Google ou o DuckDuckGo).

## Independentes de Conexão com a Rede

Se estamos falando de um aplicativo que não necessariamente precisa utilizar a _internet_, então é uma boa ideia garantir que ele funcione mesmo quando não há conexão com a rede.

## Seguros

Utilizar os protocolos de segurança adequados, tanto no _front_ como no _backend_, é fundamental, não só no caso dos PWA, mas de todas as aplicações.

No nosso caso, lembre-se que o usuário final terá a aplicação salva em sua máquina, o que quer dizer que existe a possibilidade dele fazer alterações nela e nos dados associados. Se proteger de ataques que possam surgir desta forma pode eventualmente salvar o futuro do seu produto.
