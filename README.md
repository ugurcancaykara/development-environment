
# Development Environment Setup 🚀

Welcome to my personal development environment setup. Here, you can find reference-based resources, including configurations, CLI tools, dotfiles and other essential utilities I use daily. 

- Quick note: I will share a general guide like how to start learning and where from exactly. 💡

## Overview

This repository is a collection of all the tools and configurations I use to create a productive development environment. 
### Current Tools 🛠️

Here are the primary tools I'm currently using:

- **iTerm2**: My terminal of choice for its extensive customization options and ease of use.
- **Neovim (nvim)**: My go-to text editor, configured for efficiency and enhanced with plugins.

## Installation of tools⚙️

I've prepared a Makefile that automates the process, guiding you through an interactive installation. Just grab a cup of coffee ☕, sit back 🎉

### Tools

#### 1. Installing Neovim Configurations

To load my existing Neovim configurations into your local setup, run the following command:
- It will simply copy and paste nvim config files to your `~/.config/nvim` path

```bash
make install
```


References:
#### Note: These are references I checked a couple of days ago before I wrote these

- If you feel don't want to get too much with a distro, but you need just a kickstart, this one is all configured on to neovim, it's not a distro and makes you research for other plugins, learn for more -> [Youtube](https://www.youtube.com/watch?v=m8C0Cq9Uv9o) & [Github](https://github.com/nvim-lua/kickstart.nvim)
- This one is kinda long but after you feel convenient with kick start, it can make you gain some ideas regarding what can other plugins be like, a couple of the plugins already installed by kickstart, if you've read kickstart, you can also pass existing plugins beforehands -> [Youtube](https://www.youtube.com/watch?v=6pAG3BHurdM) & [Source Code](https://www.josean.com/posts/how-to-setup-neovim-2024)
    - This is dotfiles github repository of `josean`, so it might be helpful for your other configurations alongside nvim [Github](https://github.com/josean-dev/dev-environment-files) 
- This one is a from scratch playlist, you can use it to understand the topics you don't get it -> [Youtube](https://www.youtube.com/watch?v=ctH-a-1eUME&list=PLhoH5vyxr6Qq41NFL4GvhFp-WLd5xzIzZ) & [Github](https://github.com/LunarVim/Neovim-from-scratch)
- Add New Reference
