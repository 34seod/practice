Review.seed_once(:id,
  { id: 1, book_id: 1, user_id: 2, status: 0, body: 'JavaScriptを使うなら、まず、目を通しておきたい本ですね。' },
  { id: 2, book_id: 1, user_id: 3, status: 1, body: 'JavaScriptの基本を振り返りたいときにはこの本を頼りにしています。' },
  { id: 3, book_id: 2, user_id: 2, status: 0, body: 'とても役に立ちます。サンプルたくさん紹介されていてお勧めの一冊です。' },
  { id: 4, book_id: 2, user_id: 4, status: 1, body: '丁寧に書かれています。サンプルも多く、分かりやすくて良いです。' },
  { id: 5, book_id: 2, user_id: 5, status: 1, body: '超初心者の私には少し難しいです。でも、真似して書いているうちに少しずつ良さが分かるようになってきました。' },
  { id: 6, book_id: 3, user_id: 1, status: 1, body: '図やサンプルが多くて、初心者でも使えるリファレンスですね。' },
  { id: 7, book_id: 3, user_id: 1, status: 1, body: '知りたい情報がすぐに引けて嬉しいです。オンラインマニュアルより使いやすいです。' },
  { id: 8, book_id: 4, user_id: 5, status: 2, body: '初めてのプログラミングでしたが、手順通りに進めてゲームを完成することができました。' },
  { id: 9, book_id: 5, user_id: 3, status: 1, body: '基礎からきちんと詳しく解説してあって、大方この本1冊で、Androidアプリ開発のノウハウがわかりました。' }
)