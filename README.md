# dotfiles

![](https://raw.githubusercontent.com/tawainfer/dotfiles/images/desktop.png)

- OS: Arch Linux
- Theme: Dracula
- Desktop: i3wm + polybar + picom

<br>
<br>

## 準備
公式インストールガイドなどを参考にArch Linuxをインストールし、NetworkManagerとyayを導入してください。

<br>
<br>

## 使い方

dotfilesディレクトリに移動してmakeコマンドを実行してください。指定可能なターゲットは`minimal`, `normal`, `full`の3種類です。省略した場合は`minimal`扱いで実行されます。

<br>

`~/dotfiles`
```
make [target]
```

<br>

- minimal

  デスクトップ環境を再現するのに必要なパッケージのみがインストールされます。

- normal

  minimalでインストールされるパッケージに加え、ブラウザやエディタ、ファイルマネージャーなどのパッケージがインストールされます。

- full

  normalでインストールされるパッケージに加え、個人的に使用するパッケージが含まれています。

<br>
<br>

デスクトップやDMのアイコン・壁紙に使用する画像は以下のパスに配置してください。

- デスクトップ: `~/.pictures/desktop.png`
- DM(アイコン): `~/.pictures/dm_icon.png`
- DM(壁紙): `~/.pictures/dm_wallpaper.png`

<br>

※ DMについては、再起動を行っても設定した画像が自動では反映されないため、`make`コマンドを実行するか、`scripts/lightdm.sh`を手動で実行してください。

<br>
<br>

## 注意

元の設定ファイルを削除するため、既に構築した環境で使用する場合は注意してください。クリーンな環境で使用することを推奨します。

<br>
<br>

## ライセンス

[CC0](https://github.com/tawainfer/dotfiles/blob/main/LICENSE)
