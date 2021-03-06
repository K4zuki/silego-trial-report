# 設計ソフトをインストールしてみた

「買い物をするのはソフトの出来を見てからでも遅くない」ということで、まず設計ツールをインストールします。
マルチプラットフォーム対応でWindows/Mac/Linuxにインストール可能です。*Windowsノートが壊れてしまったので*
筆者はとりあえずMac版を使います。

<https://www.dialog-semiconductor.com/greenpak-designer-software> にアクセスすると名前と会社とメールアドレスを要求される
ので*適当に*入力してSubmitボタンを押し、リンク先のワンタイム生成ページらしき場所から各プラットフォーム向け
インストーラを入手します。後のことを考えて必要そうなインストーラを一度にDLしてDropboxとかに置いておくと
各OSごとにメルアドを入れる手間が省けるのでおすすめです。メールアドレスについては、幸いにもGmailでも通ったので
フィルタの類い^[競合他社という理由で提供を拒否するなど]はないようです。

筆者がダウンロードした時点では以下のバージョンが用意されていました。この本が出る頃にはアップデートがあるかもしれません。

- GreenPAK Designer 6.12.003: Windows 32-bit / Windows 64-bit
- GreenPAK Designer 6.12.003: macOS
- GreenPAK Designer 6.12.003: Ubuntu 16.04 (32-bit) / Ubuntu 16.04 (64-bit) / Ubuntu 14.04 (32-bit) / Ubuntu 14.04
  (64-bit) / Debian 8 (32-bit) / Debian 8 (64-bit)

インストーラはZIPアーカイブの状態でダウンロードされるので、解凍し、pkgファイルを実行します。標準的なウィザード
([@fig:installer-init])が出てくるので、手順に従いインストールします。

![インストーラ（起動直後の画面）](images/installer.png){#fig:installer-init}
