# tutorial
## Baseado na [playlist](https://www.youtube.com/playlist?list=PLlBnICoI-g-d-J57QIz6Tx5xtUDGQdBFB) do canal [Flutterando](https://www.youtube.com/c/Flutterando) 

#### Aula 5
Criando interface básica com estilo simples e sem uso de Stateless ou Statefull.

#### Aula 6
O estado global é o Container que engloba tudo na aula 5. Os estados locais são componentes dentro dele, como: Center, Text, etc. Stateless widgets não são alterados após sua criação. Vemos criar classes com váriaveis e construtores para deixar o código desacoplado.

#### Aula 7
É possível utilizar um tema e estruturas predefinidas por plataforma, como por exemplo o MaterialApp para aplicações feitas para o público de Android e CupertinoApp para aplicações feitas para o público de iOS. É necessário adicionar um Widget pai e (no caso de Android é necessário um tema) uma home.

#### Aula 8
Usando de um Stateful Widget podemos alterar o valor da variável que colocamos para ser exibida na da página. A função useState semelhante ao React é usada aqui para a mesma função.

#### Aula 9
Vemos as boas práticas de refatorar o código, extraindo classes para arquivos próprios para facilitar a manutenção do código.

#### Aula 10
Para agilidade no desenvolvimento podemos usar componentes de interface gráficas já preparados como Scaffold, Material e FloatingActionButton (botão pressionável).

#### Aula 11
Componentes como Container não geram um novo render. Widgets como Center, Alignment.center e outros são multirender e possibilitam que novos Widgets sejam colocados de forma independente. Caso você tente exibir componentes um por cima do outro num single render, você verá somente o último child, com as características herdadas (altura e largura) do primeiro widget.

#### Aula 12
Aqui vemos um pouco sobre implementação de MVC (Model, View, Controller) e de como podemos usar padrões de projeto como Singleton para fazer com que um controlador (Switch) regular o tema da aplicação. Para tanto, temos que fazer uso de Notifier.

#### Aula 13
É possível criar componentes para Widgets internos, isso é chamado de componentização, e permite que o código seja mais reutilizado. Através de actions é viável editar a AppBar e adicionar componentes a ela.

#### Aula 14
Vimos como alinhar os componentes usando como referência a estrutura implementada usando colunas e seus ajustes: ao centro, à esquerda e à direita.

#### Aula 15
Dado que podemos elaborar as telas de forma declarativa, significa que podemos combinar elementos e estruturas de forma a elaborar a desejada tela da aplicação. Aqui vimos a estrutura de linhas e como mesclar a estrutura de colunas com ela, usando de Containers vazios para fazer o espaçamento entre componentes. A estilização de linhas também é abordada.

#### Aula 16
Quando vários componentes da tela ocupam espaço e fogem da área da tela, ocorre um erro de exibição no Flutter. Para contornar o problema, devemos criar um componente chamado ListView que permite que o excedente de conteúdo seja exibido através de uma scrollada pela página.

#### Aula 17
Somos apresentados a novos componentes como o TextField, TextInput, seus decoradores como InputDecoration (obscureText, TextInputType), além disso, vimos como criar um RaisedButton (uso não mais recomendado, substituído por ElevatedButton), e usar de um SingleChildScrollView para tornar a tela scrollável automaticamente para o teclado não encobrir o botão de entrar (este componente requer uma alternação na forma em como executamos a definição do tamanho da tela, pois necessita usar de MediaQuery para capturar os limites verticais e horizontais).

#### Aula 18
Introdução a função Navigator e a lógica de navegação de telas do Flutter. O Flutter funciona como um array de páginas, mas existem 2 lógicas que envolvem tal navegação. Aqui vemos a mais simples, onde apenas transmitimos o contexto para a próxima tela e executamos um push. Também temos o pushReplacement que desabilita o botão de voltar a tela anterior.

#### Aula 19
Vimos como fazer rotas e como configurar o Navigator para acessar rotas ao invés de apontarmos para telas (apontamos para a rota).

#### Aula 20
Uso da ferramenta nativa do VSCode de Breakpoint para congelar o fluxo de execução do sistema para fazer debbuging. 

#### Aula 21
Usamos da biblioteca nativa Image para importar imagens da internet.

#### Aula 22
Temos como usar imagens embarcadas no nosso projeto, basta adicionar o caminho relativo da imagem no pubspec.yaml e depois, usando a mesma biblioteca Image, usar o método asset para adicionar a imagem na página.