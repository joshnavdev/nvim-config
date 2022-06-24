# Neo Vim dotfile

## Configuration de NeoVim

### Install NeoVim

Add repository

```shell
sudo add-apt-repository ppa:neovim-ppa/unstable
```

Install NeoVim

```shell
sudo apt-get update
sudo apt-get install neovim
```

### Clone repository

Necesitamos clonar el dotfile de nvim de este repositorio, con el fin de tener toda mi configuracion necesaria. Para ello, la configuracion se manejara en la carpeta `$HOME/.config/nvim`.

```shell
cd $HOME/.config
git clone https://github.com/joshuanr5/nvim-config nvim
```

Ahora vamos a crear un symbolic link del init.vim a $HOME/.nvimrc donde se hara todas las configuraciones necesarias en caso de modificar algo.

```shell
ln -s $HOME/.config/nvim/init.vim $HOME/.nvimrc
```

### Install Plugin

Primero tendremos que instalar el gestor de plugins de nvim `vim-plug`.

```shell
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```

Una vez instalado vamos a instalar todos los plugins del file ./plug.vim

```shell
$ nvim $HOME/.config/nvim/plug.vim
Dentro de nvim correr el comando :PlugInstall
```

Se instalaran todos los plugins necesarios para la configuracion de NeoVim.

### Configuracion extras

En caso de no ver los iconos en el nerdtree se debera instalar una fuente que tenga incluido estos, por ejemplo https://gist.github.com/romkatv/aa7a70fe656d8b655e3c324eb10f6a8b

### CocConfiguration

Aunque deberia instarse por su cuenta aveces es necesario ingresar el comando :CocInstall coc-eslint y/o otra linter que desees

### nvim-treesitter

Te permite tener un mejor highlight en tu codigo, en caso que surga algun problema es porque probablemente no tienes el compilador de cc instalado para ellos hacer lo siguiente

```shell
sudo apt install build-essential
```
