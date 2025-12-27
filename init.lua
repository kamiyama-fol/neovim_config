require("config.lazy")

vim.opt.number = true
vim.opt.helplang = 'ja'
vim.opt.clipboard = "unnamedplus"
vim.keymap.set("i", "jk", "<Esc>")

require("mason").setup()

require("mason-lspconfig").setup()

-- 以下は mason でインストールした各 LS の setup を自動で呼び出すためのもの
-- これを書いていない場合、自分で `require("lspconfig").サーバ名.setup({})` をそれぞれ書く必要がある

-- mason-lspconfigの設定を呼び出します
require("mason-lspconfig").setup({
  -- インストールしたいLSPサーバーをリストアップします
  ensure_installed = { "lua_ls", "ts_ls" }, 

  -- ここが重要です！ 'setup_handlers' ではなく 'handlers' を使います
  handlers = {
    -- デフォルトの設定（全てのLSPに適用される設定）
    function (server_name)
      require("lspconfig")[server_name].setup({})
    end,

    -- 特定のLSPに対して個別の設定をしたい場合は、以下のように追加できます
    -- ["lua_ls"] = function ()
    --   require("lspconfig").lua_ls.setup({
    --     settings = { Lua = { diagnostics = { globals = { "vim" } } } }
    --   })
    -- end,
  },
})

-- 以下は LS から受け取ったエラーなどの診断情報を表示するのに必要
vim.diagnostic.config()
