local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  "Mofiqul/dracula.nvim"
})

-- 個人的な設定
local options = {
  fileencoding = "utf-8", -- エンコーディングをUTF-8に設定
  swapfile = false, -- スワップファイルを作成しない
  helplang = "ja", -- ヘルプファイルの言語は日本語
  hidden = true, -- バッファを切り替えるときにファイルを保存しなくてもOKに

  shiftwidth = 2, -- シフト幅を2に設定する
  tabstop = 2, -- タブ幅を2に設定する
  expandtab = true, -- タブ文字をスペースに置き換える
  autoindent = true, -- 自動インデントを有効にする
  smartindent = true, -- インデントをスマートに調整する

  number = true, -- 行番号を表示
  visualbell = true, -- ビープ音を表示する代わりに画面をフラッシュ

  signcolumn = "yes", -- サインカラムを表示
}

for k, v in pairs(options) do
  vim.opt[k] = v
end

vim.cmd[[colorscheme dracula-soft]]
vim.cmd[[let g:python_recommended_style = 0]] -- pythonで上記のインデント設定を使うための設定