# 実機デバッグしてみた

評価キットが届いたので、シミュレーションどおりに動くのか試してみます。GreenPAKは
ROMマイコンで言うところのICEのような感じで実機で実験することができます。シミュレーションに
対応していない品種はこの方法でデバッグします。いずれにしても、若干の回路の変更のために
何個もROMを焼き直す必要はありません。

DIP変換モジュールをDIP書き込みボードに*正しい向きで*挿してからPCにつなぎます。SLG46826のボードなら
コンデンサがある方をUSBコネクタ側に合わせれば正しい向きですが、**必ず自分でも確認してください**。

## デバッグプラットフォームを変更する

実機デバッグのときも[@sec:sim-debug]のようにデバッガを起動し、シミュレーションの代わりに
評価キットを選びます(今回はDIP書き込みボードを選択します)。デバッグ開始ボタンを押しても
プラットフォーム選択画面([@fig:select-platform-2])が出てこないときは右ペインの"Change Platform"
ボタンを押します([@fig:change-platform])。

![プラットフォーム選択（再掲）](images/select_debug_platform.png){#fig:select-platform-2}

![プラットフォーム変更](images/change_platform.png){#fig:change-platform}

プラットフォームが変更されると右ペインが変化します（[@fig:onboard-debugger]）。

![実機デバッグモード](images/onboard_debug_start.png){#fig:onboard-debugger}

## 外部コネクタにスイッチとLEDをつなぐ

DIP書き込みボードは小さく作るためにデバッグ用のLEDやボタンを載せていません。
そのかわりブレッドボード上で実験できるようになっています。今回は秋月の6ピンブレッドボードに
挿して、オス-オスのジャンパワイヤでLEDとスイッチにつなげます。

PIN5は内蔵プルアップを使う設定にしてある([@tbl:config-pin5])のでスイッチをPIN5とGNDにつなげます。
PIN16はLED直結でもいいですが、できれば抵抗を介してつなぎます。LEDのアノードをPIN16に、カソードを
3Kの抵抗を介してGNDにつなげました。抵抗が用意できないときはカソードをGNDにつなぎます。

## デバッグモードで実行

最初に右ペイン([@fig:onboard-debugger])下段の"Ext. VDD"ボタンを押しておきます。
このボタンでターゲットICと外部ピンヘッダ（ブレッドボードに刺さっているピン）が接続されます。
次に上段の"Emulation"ボタンを押すと、少しの間があってから書き込みボード上の
青LED（実行中インジケータ？）が光りっぱなしになります。同じボタンをもう一度押すと青LEDが消えます。

青LEDを光らせたままPIN5につないだボタンを押すとPIN16につないだLEDが点滅します([@fig:led-blinky])。
これでシミュレータと同じ動作が確認できました。

![実機デバッグ](images/debugging_pic.jpg){#fig:led-blinky height=95mm}

\\newpage

## おまけ：ボタン入力は省略できるよ

今回は外部部品を全部用意しましたが、ボタン入力に限っては設計ソフト上からエミュレートできました。
デバッグモードに入ると画面中央に青いバルーンが出てきます([@fig:debug-mode-entered])。

![デバッグモード中（青LEDはOFF）](images/debugging.png){#fig:debug-mode-entered}

この状態でPIN5の青丸を右クリックして、下の方にある"Button"を選ぶとボタン入力エミュレーション
ができるようになります。もう一度同じ青丸にマウスカーソルを持っていくとバルーンが
飛び出します([@fig:button-emulation])。

![ボタン入力エミュレーション](images/button_emu.png){#fig:button-emulation}

この図ではGNDまたはVDDに直結するトグルスイッチをエミュレートしています。これをタクトスイッチに
します。さっきの青丸を何度か右クリックして、"Upper Connection" を `Pull up`、"Default connection"
を`To Upper connection`、"Set 'Push' hot key" を `w` にします。

この設定で青LEDモードにして**W**キーを押すとボタンを押したときと同じようにLEDが点滅します。
