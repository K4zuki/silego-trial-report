# シミュレータでデバッグしてみた {#sec:sim-debug}

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

\\newpage

### 入力信号のセットアップ

PIN5の赤丸アイコンをダブルクリックすると[@fig:sim-input-init]のような画面になります。

![入力信号編集画面（初期状態）](images/simulation_input_init.png){#fig:sim-input-init}

右ペインの一番下がPIN5の波形になっています。この波形を選ぶと左ペインが詳細設定モードになるので
[@fig:sim-set-waveform]のように変更します。設定したらこの画面を閉じて、メイン外面の右にある
シミュレーション時間設定を変更します([@fig:sim-duration])。

\\newpage

:::::{#fig:sim-config}
![波形設定](images/sim_set_waveform.png){#fig:sim-set-waveform width=48%}
![シミュレーション期間設定](images/sim_duration.png){#fig:sim-duration width=48%}

詳細設定
:::::

両方を更新したあと[@fig:sim-duration]の左下、"Start Simulation"ボタンをクリックすると
シミュレーション結果が表示されます([@fig:sim-results])。

![シミュレーション結果](images/simulation_result.png){#fig:sim-results}
