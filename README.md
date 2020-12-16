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
- 老人ホームに勤めてる方用のイベント投稿アプリを作成しました。老人ホームに勤めていると、季節の行事を担当することがあります。企画を立てる際自分一人でアイデアを出すのは大変です。 老人ホームのHPにアクセスすると行事の様子を見ることはできますが、他の施設と比べたりするときなどは毎回アクセスしなければならないため面倒です。そこで複数の施設から投稿されたイベントを見られるアプリを開発しました。これにより様々なイベントを簡単に共有することができます。

# 機能
- ホーム画面です
  <a href="https://gyazo.com/3a66042e8ecaedd1a9e0b75af30926f0"><img src="https://i.gyazo.com/3a66042e8ecaedd1a9e0b75af30926f0.jpg" alt="Image from Gyazo" width="1204"/></a>
## イベント投稿
- 施設種類・規模・カテゴリーはセレクトボックスを使用し選択しやすくしています。
- タグは","で区切ることで複数つけることができます
- 画像は選択するごとにフォームが追加され複数つけることができます
  <a href="https://gyazo.com/5cb778352e8b75fadcdf1daba1b27e29"><img src="https://i.gyazo.com/5cb778352e8b75fadcdf1daba1b27e29.png" alt="Image from Gyazo" width="462"/></a>
  <a href="https://gyazo.com/fb7e11adcfd6460f2e837b783ff37147"><img src="https://i.gyazo.com/fb7e11adcfd6460f2e837b783ff37147.png" alt="Image from Gyazo" width="584"/></a>
  
## 詳細ページ
- 投稿者本人にのみ編集・削除のリンクが表示されます

## コメント機能
- イベント詳細ページの下部より投稿できます
  <a href="https://gyazo.com/5744e801c3d8eca4a7ba1124dc721e57"><img src="https://i.gyazo.com/5744e801c3d8eca4a7ba1124dc721e57.png" alt="Image from Gyazo" width="500"/></a>

## マイページ
- ヘッダーのマイページよりアクセスできます。
  <a href="https://gyazo.com/417db70fe8dd2ac91c0d84e09ee2b0d3"><img src="https://i.gyazo.com/417db70fe8dd2ac91c0d84e09ee2b0d3.png" alt="Image from Gyazo" width="1117"/></a>
- ログアウト状態ではトップページにリダイレクトされます。

  
## 検索機能
- 検索機能は2種類あります。
- タイトル・タグのキーワード検索。
- 3つのセレクトボックスでの絞り込み検索。
  <a href="https://gyazo.com/5168caae6e5af559c43d8c4d84fadb5e"><img src="https://i.gyazo.com/5168caae6e5af559c43d8c4d84fadb5e.png" alt="Image from Gyazo" width="670"/></a>

## お気に入り機能
- イベント詳細ページの「お気に入りに追加」をクリックするとお気に入りに追加されます。
- ヘッダーの「お気に入り」にアクセスするとリストが表示されます
  <a href="https://gyazo.com/3811f950695efa44f01090b55669ff3d"><img src="https://i.gyazo.com/3811f950695efa44f01090b55669ff3d.png" alt="Image from Gyazo" width="1186"/></a>
- ログアウト状態ではトップページにリダイレクトされます。
  
## メッセージ
- ユーザー登録・イベント投稿・編集・削除・お気に入り登録を行うとヘッダーにメッセージが表示されます
　　<a href="https://gyazo.com/4b386801f879013d605f4f060e3c12f5"><img src="https://i.gyazo.com/4b386801f879013d605f4f060e3c12f5.png" alt="Image from Gyazo" width="1219"/></a>

# 注意点
- 絞り込み検索機能は3つの選択肢が全て一致したもののみ表示されます

# 今後の実装予定
- 絞り込み検索機能を全て一致のみ表示から一部一致でも表示されるよう変更します
- ヘッダーのメッセージを成功と失敗の時で色を分けるよう変更します。また所定の時間で消えるよう変更します

# データベース設計
- （https://gyazo.com/e0edc7856d06df0eda95069deba30e8f/raw)
- (https://gyazo.com/8d3611674232bc7e80026c5c8f38de31/raw)
  
# 動作方法
- ローカル環境にてcd copysのディレクトリに移動し、http://localhost:3000/　 にアクセスしてください
- ruby 2.6.5
- gem tzinfo-data,devise,rails-i18n,factory_bot_rails,faker,pry-rails,mini_magick,image_processing,active_hash,ransack,aws-sdk-s3
