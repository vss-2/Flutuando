# tutorial

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
