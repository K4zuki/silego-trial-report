# シミュレータでデバッグしてみた

配置配線が終わったのでデバッグします。画面の上の方にある虫と再生マークのボタン([@fig:start-debugger])を押すと
どのプラットフォームでデバッグするかを聞かれます([@fig:select-platform])。
SLG46826はシミュレーションに対応している品種なので、シミュレータが選択できます([@fig:select-platform])。

筆者は2品種購入したのですが（[@sec:get-board]参照）、ワンタイム品のSLG46536はシミュレータ未対応でした。
新しめの品種のみシミュレータ対応ということなのでしょう。

![デバッガ起動](images/start_debugger.png){#fig:start-debugger}

![プラットフォーム選択](images/select_debug_platform.png){#fig:select-platform}

## シミュレーション・ベンチの設定

このままでは何も起きないので、シミュレーション環境を作ります。最初は入出力の設定をします。
疑似信号を入れたいピンに赤いマーク、出力を観察したいピンに緑のマークをつけます
([@fig:simulator-add-buttons])。PIN5から疑似ボタン入力を入れて、フィルタの出力と
PIN16の出力を観察します([@fig:simulation-setup-io])

![信号入力/プローブボタン](images/sim_buttons.png){#fig:simulator-add-buttons}

![IOセットアップ](images/sim_io_setup.png){#fig:simulation-setup-io}

