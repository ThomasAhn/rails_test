# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# 디폴트 게시판 생성
Bulletin.create! title: '공지사항'
Bulletin.create! title: '새소식'
Bulletin.create! title: '가입인사', post_type: 'blog'
Bulletin.create! title: '갤러리', post_type: 'gallery'

User.create!(name:  "Thomas Ahn",
             email: "thomas.ahn@touchworks.co.kr",
             password:              "gusrud0821",
             password_confirmation: "gusrud0821",
             admin: true,
             activated: true,
             activated_at: Time.zone.now)

99.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  password = "password"
  User.create!(name:  name,
               email: email,
               password:              password,
               password_confirmation: password,
               activated: true,
               activated_at: Time.zone.now)
end
