require "csv"
CSV.foreach('db/prefectures.csv', headers: true) do |row|
  Prefecture.create(
    name: row['name'],
    name_kana: row['name_kana']
    )
end

#User.create( name: 'taro', email: 'taro@techacademy.jp', password: 'taro1234', age: 17, gender: 0, residence_id: 1)












# require "csv"

# CSV.foreach('db/seeds/csv/content.csv', headers: true) do |row|
#   Content.create(
#     title: row['title'],
#     image_url :row['image_url'],
#     director: row['director'],
#     description: row['description'],
#     open_date: row['open_date']
#   )
# end