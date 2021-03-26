# アプリケーション名「RAcook(ラクック)」
## アプリケーション概要
「料理を作る、レシピを見る、投稿する」を"ラク"にすることがコンセプトです。
トップページに「今日はこれ食っとけ」と題しておすすめレシピを一品表示します。
投稿に際してはなるべく文字入力をしなくても済むよう、材料と調味料はチェックボックス式にし
作り方の行程は最大5までしか登録できないようにします。より簡潔に説明してもらうためです。
機能としては「レシピ投稿」「レシピ閲覧」「レシピ検索」「カテゴリ分け」「いいね」「コメント」です。
## 作成背景
テーマは「シンプルでカンタンでラクに作れるレシピサイト」
コロナ禍での内食(家食)需要の増加でデリバリー事業が急速に成長しています。
しかし、昨今のヘルネスブームも未だ堅調で健康志向の強い人は多く、
不況から食費を抑えるためにも自炊をしようと考える人も多いはずです。
とはいえ(特に若い年代の人は)自分で作るのは面倒なイメージが強く、
私自身も出来合いの惣菜やインスタント商品で済ませてしまいがちです。
そんな人達をターゲットに、シンプルで簡単に利用できるレシピサイトがほしいと思い、
このアプリの作成に至りました。
## URL
現在作成段階、デプロイ未実施
## テスト用アカウント
- メールアドレス:a@a.com
- パスワード:aaaaaa1
## 利用方法
- WebブラウザはGoogleChromeの最新版を利用してアクセスしてください。
- デプロイなどで接続できないタイミングがございます。その場合は少し時間をおいてから接続してください。
- 接続情報は上記のとおりです。
- テストアカウントでログイン→トップページヘッダーのレシピ投稿ボタン→レシピ情報入力→レシピ完成！
- 確認後、ログアウト処理をお願いします。
## 実装済み機能
- ユーザー管理機能(新規登録、ログイン、ログアウト)
- レシピ投稿機能
- いいね機能
- 検索機能
- カテゴリー分け表示機能
- コメント機能
## 今後実装予定の機能
- 野菜の相場表と連動させてお買い得な材料で作れるレシピのリコメンド機能
- コミュニティ機能(地域のお買い得商品のクチコミを投稿できる)
## ER図
![ER](https://user-images.githubusercontent.com/74100398/112615393-c7365580-8e65-11eb-8c5f-b67d270af939.png)
## ローカルでの動作方法
### 開発環境
- MacOS Catalina(10.15.6)
- GoogleChrome
- Ruby(6.0.0)
- Ruby on Rails
- MySQL
- Github
- Visual Studio Code
- Heroku
- Trello
