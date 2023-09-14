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

vim.cmd[[colorscheme retrobox]]
vim.cmd[[let g:python_recommended_style = 0]] -- pythonで上記のインデント設定を使うための設定
