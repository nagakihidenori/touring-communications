# アプリケーション名
Touring-Communications

# アプリーション概要

ツーリングで撮った写真を投稿し、ユーザー同士でコメントすることで情報共有、コミュニケーションをとることができる

# URL

https://touring-communications.herokuapp.com/
ユーザー名：admin
パスワード：2222

# テスト用アカウント
メールアドレス：yuki@yuki
パスワード：123456a

# 利用方法
## 写真投稿
1.トップページのヘッダーからユーザー新規登録を行う

2.投稿ボタンから写真、日時、タグ、目的地のマップを入力し投稿する

3.自身の投稿した写真はマイページで見ることができる

---
## 写真検索
1.サイドバーから登録されているタグ、都道府県で写真を検索することができる

---
## コミュニケーション機能
1.好きな投稿者をフォローし、マイページに一覧表示させることができる

2.好きな写真にコメントを残すことができる

---
# アプリケーションを作成した背景
私自身がバイクでのツーリングが趣味で写真や動画を多数撮っている。
しかし新しい場所にツーリングするとなると「その場所は綺麗な写真が撮れるのか」「お昼ご飯はどこで食べようか」等色々下調べが必要になってくる。
この下調べがなかなかに大変で同じツーリング仲間の情報を共有することでその場所での思い出も共有できるのではないかと思いこのSNSアプリケーションを開発している。

---
# 洗い出した要件
[要件定義シート](https://docs.google.com/spreadsheets/d/1JKBehh-DS75xBgY3VvoO0ljjdJcurQU_D97P1K_RswY/edit#gid=982722306)

---
# 実施予定の機能
現在投稿したものの詳細画面を実装中。
GoogleMapとAPI連携で場所を記録できるようにしている。
今後は自分の投稿したものをまとめるマイページを実装予定。

---
# データベース設計
[![Image from Gyazo](https://i.gyazo.com/cac553582a20526abd0c9ecefee43f30.png)](https://gyazo.com/cac553582a20526abd0c9ecefee43f30)

---
# 画面遷移図
[![Image from Gyazo](https://i.gyazo.com/22da8de966aeaf7f50c4a935c3657189.png)](https://gyazo.com/22da8de966aeaf7f50c4a935c3657189)

---
# 開発環境
*フロントエンド  
*バックエンド  
*インフラ  
*テスト  

---
# ローカルでの動作方法
% git clone https://github.com/nagakihidenori/touring-communications.git  
% cd touring-communications  
% bundle install  
% rails db:create  
% rails db:migrate  
% yarn install  

---
# 工夫したポイント
カルーセルを用いて動きを持たせ、少ない表示領域で多くの投稿を見せられるかを工夫した。
また、愛車紹介の表示はリロードするごとに違う投稿が並ぶようにし多くの投稿が見られるようにした。