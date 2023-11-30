# dotfiles

![](https://raw.githubusercontent.com/tawainfer/dotfiles/images/desktop.png)

- OS: Arch Linux
- Desktop: i3wm + polybar + picom

## 準備
公式インストールガイドなどを参考にArch Linuxをインストールし、NetworkManagerとyayを導入してください。

## 使い方

dotfilesディレクトリに移動してmakeコマンドを実行してください。指定可能なターゲットは`minimal`, `normal`, `full`の3種類です。省略した場合は`minimal`扱いで実行されます。

`~/dotfiles`
```
make [target]
```

- minimal

  スクリーンショットにあるデスクトップ環境を再現するのに必要なパッケージのみがインストールされます。

- normal

  minimalでインストールされるパッケージに加え、ブラウザやエディタ、ファイルマネージャーなどのパッケージがインストールサれます。

- full

  normalでインストールされるパッケージに加え、個人的に使用するパッケージが含まれています。

デスクトップやDMのアイコン・壁紙に使用する画像は以下のパスに配置してください。

- デスクトップ: `~/.pictures/desktop.png`
- DM(アイコン): `~/.pictures/dm_icon.png`
- DM(壁紙): `~/.pictures/dm_wallpaper.png`

## 注意

元の設定ファイルを削除するため、既に構築した環境で使用する場合は注意してください。クリーンな環境で使用することを推奨します。