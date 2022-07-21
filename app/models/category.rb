class Category < ActiveHash::Base
  self.data = [
    { id:1, name: '---' },
    { id:2, name: 'アニメ作品' },
    { id:3, name: 'ゲーム作品' },
    { id:4, name: '映画・ドラマ (邦画)' },
    { id:5, name: '映画・ドラマ (洋画)' },
    { id:6, name: '食べ物・飲み物' },
    { id:7, name: 'その他' }
  ]

end