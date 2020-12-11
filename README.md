# アプリケーション名

あそめも
 
# アプリケーション概要

- 介護従事者のレクリエーション・イベントを共有することができる

# URL
http://18.182.145.90/

# テスト用アカウント

- ユーザーネーム・・・山田
- Eメール・・・yamada@gmail.com
- password・・・take3034

# 利用方法
- テスト用アカウントでログインし、新規投稿からイベントを投稿してください。
- ホーム画面に投稿されている画像をクリックすることで詳細ページへ移行します。

# 解決した課題
- 老人ホームに勤めてる方用のイベント投稿アプリを作成しました。老人ホームに勤めていると、季節の行事を担当することがあります。企画を立てる際自分一人でアイデアを出すのは大変です。 老人ホームのHPにアクセスすると行事の様子が書かれていることはありますが他の施設とくらべたりするときなどは毎回アクセスしなければならないため面倒です。そこで複数の施設から投稿されたイベントを見られるアプリを開発しました。これにより様々なイベントを簡単に共有することができます。。

# 機能
- ホーム画面です
  (https://gyazo.com/74373eaadcb5875b00ff1d143949a0d8/raw)
## イベント投稿
- 施設種類・規模・カテゴリーはセレクトボックスを使用し選択しやすくしています。
  (https://gyazo.com/cd9fcd27bcf488d4ca9cd9173c809f83/raw)
- タグは","で区切ることで複数つけることができます。
  (https://gyazo.com/c487afba696b0066d02f6290b40884fe/raw)
- 画像は選択するごとにフォームが追加され複数つけることができます
  (https://gyazo.com/43c730eda44f77b1181a7ecdeb7e676e/raw)
  
## 検索機能
- 検索機能は2種類あります。
- タイトル・タグのキーワード検索。
  (https://gyazo.com/4c25d89d42d7b5bd67c4e0ab5c07411d/raw)
- 3つのセレクトボックスでの絞り込み検索。
  (https://gyazo.com/e36b9a9ae05432a0715a8f2b9271affa/raw)

## お気に入り機能
- イベント詳細ページの「お気に入りに追加」をクリックするとお気に入りに追加されます。
- 追加されるとメッセージが表示されます。
  (https://gyazo.com/e496e889991df0f77eabcb1ccde97b58/raw)
- ヘッダーの「お気に入り」にアクセスするとリストが表示されます
  (https://gyazo.com/6d7858a9db5e4888ed4ac7aa51c7f800/raw)

# 注意点
- 絞り込み検索機能は3つの選択肢が全て一致したもののみ表示されます

# 今後の実装予定
- 絞り込み検索機能を全て一致のみ表示から一部一致でも表示されるよう変更します

# データベース設計
  （https://gyazo.com/e0edc7856d06df0eda95069deba30e8f/raw)
  (https://gyazo.com/8d3611674232bc7e80026c5c8f38de31/raw)
  
# 動作方法
- ローカル環境にてcd copysのディレクトリに移動し、http://localhost:3000/　にアクセスしてください
- ruby 2.6.5
- gem tzinfo-data,devise,rails-i18n,factory_bot_rails,faker,pry-rails,mini_magick,image_processing,active_hash,ransack,aws-sdk-s3
<p align="center">
 <a href="vue公式サイトURL"><img src="https://〜.c65a67974647b53ab5cdaedde9f4f536.png" width="80px;" /></a>
</p>
