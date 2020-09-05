# プログラミング言語追加
Language.create!([
  {programing_language: 'HTML'},
  {programing_language: 'CSS'},
  {programing_language: 'JavaScript'},
  {programing_language: 'Ruby'},
  {programing_language: 'PHP'},
  {programing_language: 'Python'},
  {programing_language: 'Java'}
])
# 学習方法追加
LearningMethod.create!([
  {method: 'スクール（TECH::CAMP）'},
  {method: 'スクール（Code Camp）'},
  {method: 'スクール（TechAcademy）'},
  {method: 'スクール（TECH BOOST）'},
  {method: 'スクール（POTEPAN CAMP）'},
  {method: 'スクール（DIVE INTO CODE）'},
  {method: 'スクール（侍エンジニア塾）'},
  {method: 'スクール（その他）'},
  {method: '独学'},
])