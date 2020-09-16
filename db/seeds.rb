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

# テストユーザー作成
User.create!(
  nickname: 'test-user',
  password: 'password',
  password_confirmation: 'password',
  learning_method_id:'1'
)

#テストユーザーの中間テーブルを作成
UserLanguage.create!(
  user_id: '1',
  language_id: '1'
)
UserLanguage.create!(
  user_id: '1',
  language_id: '2'
)
UserLanguage.create!(
  user_id: '1',
  language_id: '3'
)
UserLanguage.create!(
  user_id: '1',
  language_id: '4'
)

# 質問内容を追加
Question.create!([
  {content: '自己紹介してください'},
  {content: '逆に質問はありますか'},
  {content: 'なぜ未経験からエンジニアを目指そうと思った のですか'},
  {content: 'なぜ弊社を受けようと思ったのですか'},
  {content: '希望年収を教えてください'},
  {content: '将来のキャリアプランを教えてください'},
  {content: '現職（前職）を退社しようと思う理由を教えてください'},
  {content: '現職（前職）の仕事内容を教えてください'},
  {content: '就職活動の軸はなんですか'},
  {content: '将来はエンジニアを極めたい？それともマネジメントやPMなどになりたいですか？その理由も'},
  {content: '現職（前職）で一番頑張った / 結果を残した仕事のエピソードを教えてください'},
  {content: 'あなたの強みを教えて下さい'},
  {content: 'ポートフォリオの説明をしてください（工夫点も含め）'},
  {content: 'どうしてバックエンド（フロントならフロント）を選びましたか'},
  {content: '独学（スクール）ではどのようなに勉強をしてきましたか'},
  {content: 'なぜいま勉強している言語/フレームを選んだのですか？'},
  {content: '現職（前職）に入社した理由を教えて下さい'},
  {content: '既に退職した人は）なぜ前職を退職したのか教えて下さい'},
  {content: 'エラーが出た時の調べ方、解決方法は？'},
  {content: 'バックエンド（フロント）以外もやってもらうけど、大丈夫ですか？'},
  {content: 'いままで勉強していて難しかったことを教えて下さい'},
  {content: '現職（前職）で一番苦労したエピソードを教えて'},
  {content: 'どんなプロダクトをつくりたいですか？'},
  {content: 'あなたの弱みを教えて下さい'},
  {content: 'どのような人材になりたいですか？'},
  {content: '転職先（弊社）で貢献できることはなんですか？'},
  {content: '友人や周り(友人・家族)からどんな性格って言われる？'},
  {content: '自分で調べて解決しない時の見切りの付け方は？'},
  {content: '前職あるいは現職において貢献したことはなんですか？'},
  {content: 'これまでの一番の成功体験'},
])

# 業務形態作成
Style.create!([
  {business_form: '自社開発'},
  {business_form: '受託開発'},
  {business_form: 'SES'},
  {business_form: '自社開発/受託開発'},
  {business_form: '自社開発/SES'},
  {business_form: '受託開発/SES'},
  {business_form: '自社開発/受託開発/SES'},
])
# 勤務地域作成
Place.create!([
  {work_location: "北海道" },
  {work_location: "青森県" },
  {work_location: "岩手県" },
  {work_location: "宮城県" },
  {work_location: "秋田県" },
  {work_location: "山形県" },
  {work_location: "福島県" },
  {work_location: "茨城県" },
  {work_location: "栃木県" },
  {work_location: "群馬県" },
  {work_location: "埼玉県" },
  {work_location: "千葉県" },
  {work_location: "東京都" },
  {work_location: "神奈川県" },
  {work_location: "新潟県" },
  {work_location: "富山県" },
  {work_location: "石川県" },
  {work_location: "福井県" },
  {work_location: "山梨県" },
  {work_location: "長野県" },
  {work_location: "岐阜県" },
  {work_location: "静岡県" },
  {work_location: "愛知県" },
  {work_location: "三重県" },
  {work_location: "滋賀県" },
  {work_location: "京都府" },
  {work_location: "大阪府" },
  {work_location: "兵庫県" },
  {work_location: "奈良県" },
  {work_location: "和歌山県" },
  {work_location: "鳥取県" },
  {work_location: "島根県" },
  {work_location: "岡山県" },
  {work_location: "広島県" },
  {work_location: "山口県" },
  {work_location: "徳島県" },
  {work_location: "香川県" },
  {work_location: "愛媛県" },
  {work_location: "高知県" },
  {work_location: "福岡県" },
  {work_location: "佐賀県" },
  {work_location: "長崎県" },
  {work_location: "熊本県" },
  {work_location: "大分県" },
  {work_location: "宮崎県" },
  {work_location: "鹿児島県" },
  {work_location: "沖縄県" }
])