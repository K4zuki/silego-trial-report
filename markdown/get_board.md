# ブツを手に入れよう

## 入手先

まずはICの評価キットを入手します。Digikey/Mouser/直販の入手ルートがありますが、直販にします。
Mouserでいっぱい買うものがある人は一緒に買えば送料無料ですね。直販は一律送料15ドルです。ツイッタ情報ではFedEXで
送られてくるようです。以下ツイッタ情報詳細

- 注文から発送まではめっちゃ速いらしい（アメリカ西海岸時間の平日に注文しましょう）
- FedEXにしてはゆっくりやってくるらしい（アラスカで飛行機を数日間見送ってたぽいです）

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

今回はDIP変換ボードとDIP書き込みボードを採用します。一番安い組み合わせだからです。
2番めに安いのはDIP変換ボードとISPライタで$30ﾎﾟｯｷﾘです。

| 種類                   | 型番（直販ページにリンクしています）                                                              | 直販値段（送料別） |
|:-----------------------|:--------------------------------------------------------------------------------------------------|-------------------:|
| マザーボード           | [SLG4DVKADV](http://www.silego.com/buy/index.php?main_page=product_info&products_id=528)          |             59.000 |
| ソケットドータボード例 | [SLG46826V-SKT](http://www.silego.com/buy/index.php?main_page=product_info&products_id=719)       |             35.000 |
| IC実装済ドータボード例 | [SLG4TA20SP-SLG46826](http://www.silego.com/buy/index.php?main_page=product_info&products_id=722) |             12.000 |
| DIP書き込みボード      | [SLG4DVKDIP](http://www.silego.com/buy/index.php?main_page=product_info&products_id=691)          |             24.990 |
| DIP変換ボード例        | [SLG46826V-DIP](http://www.silego.com/buy/index.php?main_page=product_info&products_id=721)       |              1.250 |
| ISPライタ              | [SLG4DVKISP](http://www.silego.com/buy/index.php?main_page=product_info&products_id=727)          |             28.750 |

## 入手するICの選定

フラッシュタイプで書き換え可能な２品種の中から高機能な方の**SLG46826**にします。^[タイトルだし使わないわけに行かないよね。]
