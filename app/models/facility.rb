class Facility < ActiveHash::Base
  self.data = [
    { id: 1, name: '施設種類' },
    { id: 2, name: 'デイケア・デイサービス'},
    { id: 3, name: 'ケアハウス・高齢者住宅'},
    { id: 4, name: '従来型入所'},
    { id: 5, name: 'ユニット型入所'},
    { id: 6, name: 'その他'}
  ]
end
