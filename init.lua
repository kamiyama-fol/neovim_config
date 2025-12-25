require("config.lazy")

vim.opt.clipboard = "unnamedplus"
vim.keymap.set("i", "jk", "<Esc>")

require("mason").setup()
require("mason-lspconfig").setup()

-- 以下は mason でインストールした各 LS の setup を自動で呼び出すためのもの
-- これを書いていない場合、自分で `require("lspconfig").サーバ名.setup({})` をそれぞれ書く必要がある
require("mason-lspconfig").setup_handlers({
  function (server_name)
    require("lspconfig")[server_name].setup({})
  end,
})

-- 以下は LS から受け取ったエラーなどの診断情報を表示するのに必要
vim.diagnostic.config()
