# 回路設計してみた

しれっとソフトが入手できたので早速Ｌチカ回路の設計だけしちゃいました。
*積み基板は少ないほうがいいですからね。*

まず設計ソフトを起動します。

![設計ソフト（起動直後）](images/design_init.png)

次は品種を選びます。左のメニューから”Develop”をクリックすると型番と機能のリスト画面になります。
ここから**SLG46826**のTQFNパッケージを選びます。いまのところTQFN品しかDIP変換ボードの
ラインナップがないからです。型番ダブルクリックで回路編集画面に飛びます。

![品種を選択](images/design_select_chip.png){height=40%}

編集画面では最初に動作条件の入力を求められます。SLG46826は２電源品なので２箇所に入力します。

![動作条件](images/design_operation_range.png){height=35%}

新規作成画面ではすべてのIOが配置されていますが、とりあえず全部隠します。
右のペインの"I/O PADs"プルダウンを開き、チェックをすべて外します
^[I^2^Cブロックとピン8/9は外せませんが、おそらく仕様です。SLG46826はI^2^Cで書き込む品種なので、
常時動作させる必要があるものと考えられます]。
そのあとでVDD/VDD2/GNDピンにチェックを入れます。

## 回路の内容を決める

「ボタンを押している間だけLEDを点滅」させます。

オシレータ(OSC)モジュールを使用して点滅周期を作ります。LED出力・ボタン入力はIOピンを直結します。機能とピンの
割り当ては以下のとおりです。

|  Function  |  Pin  |  Polarity  |
|:----------:|:-----:|:----------:|
| OSC enable | PIN5  | low active |
| OSC output | PIN16 |     -      |

Table: ピン設定

## 部品配置と配線

OSC0とPIN5、PIN16にチェックを入れます。[@fig:components-placement-init]のような雰囲気になると思います。

![部品配置](images/led_blink_before.png){#fig:components-placement-init height=35%}

\\newpage

置かれた部品を配線していきます。配線ツールにはちょっと癖があって、モジュールの端子どうししかつなげられません。
「配線の途中から分岐」ができない仕様です。

OSC0の`OUT0`とPIN16をつなげます。つなげるときはOSCのノードをクリックしてからIOの緑になっているノードを
クリックします。IOにつなげたときにポップアップが現れることがありますが、
「自動的に入力（出力）モードにしたよ」という内容なので気にする必要はありません。
PIN5とOSC0の`FORCE ON`もつなげますが、PIN5のスイッチ入力がチャタリングしてもいいように
途中に部品を追加します([@fig:add-filter])。

![FILTER/EDGE DET](images/add_filter.png){#fig:add-filter}

"FILTER/EDGE DET"にチェックを入れて、左のノードをPIN5、右のノードをOSC0につなげます([@fig:routing])。

![配線完了](images/led_blink_after.png){#fig:routing}

## 各ブロックの調整

OSC0の原発振は2048Hz(2.048KHz)で比較的低速ですが、このままではLチカではなくなってしまうので、人間にもわかる程度まで
(分周して)減速します([@tbl:config-osc0])。IOとフィルタについても
細かい調整を行います([@tbl:config-pin5]/[@tbl:config-pin16])。

```table
---
markdown: True
caption: OSC0の調整 {#tbl:config-osc0}
alignment: CCC
---
"Option","Value","Note"
"Control pin mode","Force on",
"OSC power mode","Auto Power On","デフォルト"
"Clock selector","OSC","デフォルト"
"'CLK' predivider by:","8",
"'OUT0' second divider by","64",
"'OUT1' second divider by","1","デフォルト"
```

```table
---
markdown: True
caption: PIN5の調整 {#tbl:config-pin5}
alignment: CCC
---
"Option","Value","Note"
"I/O Selection","Digital input","配線時に設定済"
"I/O Selection","Digital in with Schmitt trigger",""
"Resistor","Pull Up",""
"Resistor value","10K",""
```

```table
---
markdown: True
caption: PIN16の調整 {#tbl:config-pin16}
alignment: CCC
---
"Option","Value","Note"
"I/O Selection","Digital output","配線時に設定済"
"I/O Selection","1x push pull",""
```

```table
---
markdown: True
caption: FILTERの調整 {#tbl:config-filter}
alignment: CCC
---
"Option","Value","Note"
"Type","FILTER","デフォルト"
"Output polarity","Inverted (nOUT)",
```
