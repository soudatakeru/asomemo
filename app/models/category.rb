class Category < ActiveHash::Base
  self.data = [
    { id: 1, name: 'カテゴリー' },
    { id: 2, name: '初詣・新年会'},
    { id: 3, name: '節分'},
    { id: 4, name: 'ひな祭り'},
    { id: 5, name: 'お花見'},
    { id: 6, name: '端午の節句'},
    { id: 7, name: '母の日'},
    { id: 8, name: '父の日'},
    { id: 9, name: '七夕'},
    { id: 10, name: '夏祭り'},
    { id: 11, name: '十五夜'},
    { id: 12, name: '敬老の日'},
    { id: 13, name: '運動会'},
    { id: 14, name: '紅葉狩り'},
    { id: 15, name: 'クリスマス会'},
    { id: 16, name: '年越し'},
    { id: 17, name: '誕生日会'},
    { id: 18, name: '音楽会'},
    { id: 19, name: '食事関連'},
    { id: 20, name: '外出'},
    { id: 21, name: 'その他'}
  ]
end
