## アプリケーション名
Catcher App

## アプリケーション概要
ゲームセンター等に置かれているUFOキャッチャーで、何を取ったのか(商品)、いくらで取ったのか、どこで取ったのかをユーザー間で共有することができる。

## URL
https://catcher-app-38145.herokuapp.com/  
(ローカル環境と本番環境で挙動が異なっている為、現在調査及び修正中)

## テスト用アカウント
Basic認証ID : admin  
Basic認証パスワード : 0000

## 利用方法

### 景品登録
1.事前に管理者アカウントを作成する。アカウント作成は新規登録から可能。  

2.管理者画面より、景品の登録を行う。景品名・景品のジャンル・景品画像を入力し登録をクリックする。その後、トップページに登録した景品が表示される。  

### 投稿
1.トップページよりユーザー登録ボタンをクリックし、ユーザー登録を行う。(ニックネーム・メールアドレス・パスワード)  

2.事前に登録されている景品をクリックし、取った金額、取ったお店と任意でコメントを入力し、投稿ボタンをクリックする。詳細ページに投稿したものが追加される。

## アプリケーションを作成した背景
同じ趣味を通じて知り合った友人数人に、自分たち特有の課題は何かあるだろうかと質問したのですが、その内の一つが、「UFOキャッチャーにあるプライズ(商品)が、他の人はどこでいくらくらいで取ったのかが分からず、実際に自分が取る際の指標となるものがあれば良いかもしれない」という回答でした。  

商品自体の入荷日はメーカーのHPで確認することが出来ますし、お店に入荷した際も小売店側が自社のHPやSNSで発信するものの、それがいくら位で取れるのかは、あまり聞く事がないと感じました。  

そこでユーザーが、それ専門に特化したアプリを使用すれば、その問題を少しでも解消出来るのではと考え、開発することにしました。

## 洗い出した要件
https://docs.google.com/spreadsheets/d/1eL7DEtJ7IPrYbeki_kw1oIi4hCiZk5N9yUTC7H92iS0/edit#gid=982722306

## 実装した機能についての画像やGIFおよびその説明

### 未ログイン時の挙動 (景品詳細は閲覧できるが、投稿フォームは表示されない)

[![Image from Gyazo](https://i.gyazo.com/de95163d57e4d513f80adb7beca0d47d.gif)](https://gyazo.com/de95163d57e4d513f80adb7beca0d47d)  

### 一般ユーザーログイン時の挙動 (景品詳細ページに投稿フォームが表示され、投稿できる)

[![Image from Gyazo](https://i.gyazo.com/c8ca6333f5864eb4face5b24d53522a0.gif)](https://gyazo.com/c8ca6333f5864eb4face5b24d53522a0)  

### 管理者ログイン時の挙動 (管理者画面が表示され、景品の登録が可能になる)

[![Image from Gyazo](https://i.gyazo.com/ce72a3dc7b31ffe8e938e73998b3fb7b.gif)](https://gyazo.com/ce72a3dc7b31ffe8e938e73998b3fb7b)  

### 景品登録の挙動 (景品を登録するとトップページに追加される)

[![Image from Gyazo](https://i.gyazo.com/68846d2f365d70e2c240461eda8aad2d.gif)](https://gyazo.com/68846d2f365d70e2c240461eda8aad2d)  

## 実装予定の機能
登録されていない景品があるかもしれないと仮定して、景品を登録してもらえる様に、管理者への連絡フォームを追加する。また、登録されている各景品が、それぞれどのくらいの金額で取られているか、その平均値を出してみたいとも考えている。

## データベース設計

## 画面遷移図

## 開発環境

## ローカルでの動作方法

## 工夫したポイント

