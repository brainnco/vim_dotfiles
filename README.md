# NeoVim dotfiles

Repositório de configurações para uso de NeoVim com Elixir

## Instalação

Existe um script de instalção que pode ser executado (não testei):

```sh
./install.sh
```

O script cria um link simbólico da pasta `nvim` para `~/.config/nvim`. Você
pode optar por copiar o conteudo ao ínves de criar o link. O link é utilizado
pela possibilidade de atualizar as configurações com o repositorio Git (push/pull).

### Requerimentos

-   NeoVim ~> 0.3
-   Powerline Font
-   Node
-   Elixir

## Plugins

Estamos utilizando [vim-pug](https://github.com/junegunn/vim-plug) para gerenciar
os plugins instalados. Dentro de `nvim/autoload` temos uma função que faz a
instalação do vim-plug caso ele não se encontre instalado.

A lista dos plugins é gerenciada no arquivo `nvim/pluglist.vim`. Você pode
adicionar ou remover novos plugins. As configurações especificas de plugins são
mantidas no arquivo `nvim/plugconfig.vim`.

Todos os plugins estão no GitHub, para saber mais detalhes de cada um basta abrir
o projeto do mesmo ou através do [Vim Awesome](https://vimawesome.com/). O 
VimAwesome é um bom local para buscar novos plugins.

### COC autocomplete

Estamos utilizando o [COC](https://github.com/neoclide/coc.nvim) para 
autocomplete. O COC suporta LanguageServers, e possui uma lista grande de
extensões que suportam a maioria das linguagens <https://github.com/neoclide>. 
Entretando a extensão para Elixir não funciona como o esperado, portanto foi
feita uma configuração especial para o LS do elixir funcionar corretamente. 
Dentro do arquivo `nvim/init.vim` foi definida a função `g:elixirls.compile`
que executa os passos necessários para compilar o 
[elixir-ls](https://github.com/JakeBecker/elixir-ls#building-and-running). No
arquivo `nvim/pluglist.vim` está configurado para ser executada essa função após
a instalação ("git clone") do `elixir-ls`. Para isso funcionar o Elixir precisa
estar devidamente configurado na máquina. Caso a função falhe é possivel executar
de forma manual os procedimentos para o build.

### Vim autoformat

Estamos utilizando a lib [vim-autoformat](https://github.com/Chiel92/vim-autoformat)
para formatação dos arquivos ao salvar. Caso algum tipo de arquivo não esteja
sendo formatado corretamente certifique-se que o formatador da linguagem/formato
está corretamente instalado:  <https://github.com/Chiel92/vim-autoformat#default-formatprograms>

O Elixir já possui um formatador nativo.

#### TODO

-   incluir uma intro do Magit
-   incluir uma intro do Snippets

## Key bindings

As configurações personalizadas em relação aos atalhos são configuradas no
arquivo `nvim/keymapping.vim`. Tudo que não está customizado neste arquivo segue
o default do Plugin ou do recurso nativo do vim.

#### TODO

-   incluir a configuração do Tmux (muito útil para rodar a app, os testes tudo 
    direto no mesmo terminal)
-   listar os atalhos mais relevantes

Obs: leia a doc dos plugins para entender melhor o funcionamento
