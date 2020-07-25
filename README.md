# Personal Dotfiles <!-- omit in toc -->

Personal dot files for ubuntu.

## How to guide for myself

1. First thing to do is to install `git` obviously. 
   ```
   $ sudo apt install git
   ```
2. Create a `Development` folder in `$HOME` directory.
   ```
   $ mkdir Development
   $ cd Development
   ```
3. Clone `dotfiles` under `$HOME/Development`
   ```
   $ pwd 
   '$HOME/Development'
   $ git clone git@github.com:anlcnydn/dotfiles.git
   $ ls
   dotfiles
   ```
4. Run the install.sh from root:
   ```
   $ ./ubuntu/scripts/install.sh
   ```
