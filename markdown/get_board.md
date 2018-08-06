# 評価キットを買ってみた

シミュレーションで動きそうなことはわかったので、しれっとブツを入手します。

## 入手先

まずはICの評価キットを入手します。Digikey/Mouser/直販の入手ルートがありますが、直販にします。
Mouserでいっぱい買うものがある人は一緒に買えば送料無料ですね。直販は一律送料15ドルです。ツイッタ情報ではFedExで
送られてくるようです。以下ツイッタ情報一部抜粋

- 注文から発送まではめっちゃ速いらしい（アメリカ西海岸時間の平日に注文しましょう）
- FedExにしてはゆっくりやってくるらしい（アラスカで飛行機を数日間見送ってたぽいです）

筆者のケースも同様でした。詳細なトラッキング情報は後述します。

Table: 入手先一覧

| 入手先  | URL                                                               |
|:--------|:------------------------------------------------------------------|
| Digikey | <https://www.digikey.com/en/supplier-centers/s/silego-technology> |
| Mouser  | <https://www.mouser.com/Silego-Technology>                        |
| 直販    | <http://www.silego.com/buy/index.php?main_page>                   |

## 評価ボードの種類

評価ボードは主にマザーボードにICソケット付きのドータボードを載せるタイプと、300mil DIPソケット付きマザーボードにDIP
変換されたドータボードを載せるタイプが挙げられます。マザーボードに載せられるようになっているDIPソケットが付いた
ドータボードもあります。I2C経由のISPをするためのライタもあります。

今回はDIP変換ボードとDIP書き込みボードを採用します(＊)。一番安い組み合わせだからです。
2番めに安いのはDIP変換ボードとISPライタで$30ﾎﾟｯｷﾘです。

| 種類                       | 型番（直販ページにリンクしています）                                                              | 直販価格（USD） |
|:---------------------------|:--------------------------------------------------------------------------------------------------|----------------:|
| マザーボード               | [SLG4DVKADV](http://www.silego.com/buy/index.php?main_page=product_info&products_id=528)          |          59.000 |
| ソケットドータボード例     | [SLG46826V-SKT](http://www.silego.com/buy/index.php?main_page=product_info&products_id=719)       |          35.000 |
| (＊)IC実装済ドータボード例 | [SLG4TA20SP-SLG46826](http://www.silego.com/buy/index.php?main_page=product_info&products_id=722) |          12.000 |
| (＊)DIP書き込みボード      | [SLG4DVKDIP](http://www.silego.com/buy/index.php?main_page=product_info&products_id=691)          |          24.990 |
| DIP変換ボード例            | [SLG46826V-DIP](http://www.silego.com/buy/index.php?main_page=product_info&products_id=721)       |           1.250 |
| ISPライタ                  | [SLG4DVKISP](http://www.silego.com/buy/index.php?main_page=product_info&products_id=727)          |          28.750 |

## 購入

直販サイトから購入します。PayPalでしれっと買えます。筆者は"コメダ開発"していても驚かれにくいように
ブレッドボードに挿せる書き込みボードと、SLG46826のDIP変換ボード、さらにワンタイム品のSLG46536
のDIP変換ボードも購入しました。

```
Products
------------------------------------------------------
1 x SLG46826V-DIP = $1.250
1 x SLG4DVKDIP = $24.990
1 x SLG46536V-DIP = $1.250
------------------------------------------------------
Sub-Total: $27.490
Shipping and Handling: $15.000
Total: $42.490
```

### 配送
#### 金曜日発送、でも他全部ゆっくりすぎて水曜日配達 {.unnumbered}

ポチったのは金曜日の夜でした。日本が土曜日になってすぐの夜中２時頃に発送通知メールが届いたので、
おそらく現地時間金曜日の朝イチで処理されたようです。アメリカ西海岸のサンタクララから発送されました。

フェデックス便で送られたんですが、謎の４営業日縛り(?)によって水曜日に到着しました。

![よくわからんがとてもゆっくりきます・した](images/slow_fedex.png){height=50%}

---

下の表は実際の追跡データ(下に向かってさかのぼります)をコピーしてきたものですが、よくわからない理由でオークランドに
*40時間*近くいますね。もう一つは成田についてから税関通過までえらくかかってます。最後になぜか日本郵政に委託しています。

```table
---
caption: FedEx tracking {#tbl:fedex-tracking} 
markdown: True
---
"Date","Time","Status"
"7/25/2018 - Wednesday","1:04 pm","Delivered\\
TOKYO JP"
"7/24/2018 - Tuesday","4:19 pm","In transit\\
Tendered to authorized agent for final delivery\\
TOKYO-KOTO-KU JP"
"","1:46 pm","International shipment release - Import\\
TOKYO-KOTO-KU JP"
"","10:18 am","In transit\\
Package available for clearance\\
TOKYO-KOTO-KU JP"
"","6:44 am","At destination sort facility\\
NARITA-SHI JP"
"7/22/2018 - Sunday","11:08 am","Departed FedEx location\\
ANCHORAGE, AK"
"","6:57 am","Arrived at FedEx location\\
ANCHORAGE, AK"
"","3:50 am","Departed FedEx location\\
OAKLAND, CA"
"7/21/2018 - Saturday","12:52 pm","In transit\\
OAKLAND, CA"
"7/20/2018 - Friday","10:38 pm","Arrived at FedEx location\\
OAKLAND, CA"
"","9:51 pm","Left FedEx origin facility\\
SUNNYVALE, CA"
"","3:53 pm","Picked up\\
SUNNYVALE, CA"
"","12:04 pm","Shipment information sent to FedEx"
```

筆者の今までの感覚では現地金曜発送のFedExなら日本時間の土曜日のうちに税関を通過して、翌営業日の
月曜日の午前中には委託業者が来るはずなんですが、デジまうと比べちゃいかんということでしょう。
