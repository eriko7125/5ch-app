# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create! (
  [
    {
      email: "a@gmail.com",
      password: "654321",
    }
  ]
)

Category.create! (
  [
    {
      name: "ニュース速報",
    }
  ]
)

Board.create! (
  [
    {
      title: "ニュースだよ！",
      editor: "名無し"
    }
  ]
)

CategoryBoard.create! (
  [
    {
      category_id: "1",
      board_id: "1"
    }
  ]
)