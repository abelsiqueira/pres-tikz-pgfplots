# Template para apresentações

Eu pretendo usar este template para apresentações.

## Como usar

Modifique apenas o body.tex e o user.sty.
O arquivo main.tex deve permanecer sem modificações, idealmente.
Se houver alguma modificação
que você acha que deveria estar no main.tex,
crie um issue, ou
modifique o pacote e faça um pull-request.

O texto a seguir é o mesmo do slide compilado, que está no arquivo **body.tex**,
exceto onde não fizer sentido.

  - Para inserção de conteúdo, edite apenas o arquivo `body.tex`.
  - Se quiser mudar a cor base, edite no arquivo `main.tex` a definição de
    `mybasecolor`.
  - Existem três tipos básicos de slides: o `\myframe[1]`, o `\myframeblack[1]`,
    e o `\myframecolor[2]`.
  - Nenhum desses frames usa a opção `fragile`. Se for necessário, crie um slide
    do modo tradicional.  `myframe` é um slide normal, sem fragile.
  - O `myframeblack` é bom para comandos do terminal e afins.
  - O `myframecolor`, aceita um argumento adicional da cor que deve ter o
    background.
  - Note que a cor de texto normal é black, então é preciso setar manualmente a
    cor branca.
  - O título da página é feito com o comando `\ctr`. O texto fica negrito e
    centralizado.
  - Assim como o slide, temos o `\ctrwhite` e `\ctrcolor`.
  - Temos também o comando `\cmd`; que gera um comando do terminal em amarelo; o
    comando `\cmdinline`, que serve apenas como um `\tt` de cor amarela; o
    comando `\cmmt`, que gera um comentário inline no formato bash; o comando
    `\bashgt`, que gera `>`; e o comando `\ddash`, que gera `--`.
