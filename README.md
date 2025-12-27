# neovim_config

## 使用プラグイン
- [パッケージ管理](https://github.com/folke/lazy.nvim)
- [ファイラ](https://github.com/nvim-tree/nvim-tree.lua)
- [ファインダ](https://github.com/nvim-telescope/telescope.nvim)
- [Language Server](https://github.com/neovim/nvim-lspconfig)
- [LS管理ツール](https://github.com/mason-org/mason.nvim)
- [LS管理ツール2](https://github.com/mason-org/mason-lspconfig.nvim)
- [自動補完エンジン](https://github.com/hrsh7th/nvim-cmp/)
- [Git IDE](https://github.com/kdheepak/lazygit.nvim)

最新の変更は[plugins](https://github.com/kamiyama-fol/neovim_config/tree/main/lua/plugins)を見るとわかる

## 導入方法
### 1. nvimをインストールする
[これ](https://neovim.io/doc/install/)を参考にしてください。
apple siliconのmacの場合
```
curl -LO https://github.com/neovim/neovim/releases/download/nightly/nvim-macos-arm64.tar.gz
tar xzf nvim-macos-arm64.tar.gz
./nvim-macos-arm64/bin/nvim
```
### 2. .config内にこのリポジトリをcloneする
```
git clone git@github.com:kamiyama-fol/neovim_config.git ~/.config/nvim
```
