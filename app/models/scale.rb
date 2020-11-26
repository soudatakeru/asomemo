class Scale < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '大行事(施設全体)'},
    { id: 3, name: '小行事（フロア)'},
    { id: 4, name: 'その他'}
  ]
end
