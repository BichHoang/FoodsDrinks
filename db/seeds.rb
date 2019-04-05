# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create!(name: "Trong",
  email: "trongngoc@gmail.com",
  password: "trong123",
  password_confirmation: "trong123",
  status: "activated",
  role: "admin",
  activated_at: Time.zone.now)

User.create!(name: "Song",
  email: "songtranvan2511@gmail.com",
  password: "123456",
  password_confirmation: "123456",
  status: "activated",
  role: "admin",
  activated_at: Time.zone.now)

21.times do |n|
  name = Faker::Name.name
  email = "user#{n+1}@gmail.com"
  password = "123456"
  User.create!(name: name,
  email: email,
  password: password,
  password_confirmation: password,
  status: "activated",
  activated_at: Time.zone.now)
end


Category.create!(name: "Foods")
Category.create!(name: "Drinks")


r = Random.new


Product.create!(
  name: "Bánh mì Chin Kitchen",
  description: "Ngon, bổ, rẻ",
  price: 2,
  inventory: 10,
  product_type: "food",
  avg_rate: 4.3,
  category_id: 1,
  images: "https://i.ibb.co/BZtH15r/banhmi.jpg"
)

Product.create!(
  name: "Bánh tráng cuốn thịt heo Trần",
  description: "Thơm ngon, bổ dưỡng",
  price: 10,
  inventory: 10,
  product_type: "food",
  avg_rate: 4.8,
  category_id: 1,
  images: "https://i.ibb.co/WGv3Kmv/banhtrangcuonthitheo.jpg"
)

Product.create!(
  name: "Bánh tráng kẹp CLC",
  description: "Ngon, bổ, rẻ",
  price: 3,
  inventory: 10,
  product_type: "food",
  avg_rate: 3.5,
  category_id: 1,
  images: "https://i.ibb.co/QKSCktV/banhtrangkep.jpg"
)

Product.create!(
  name: "Bún đậu",
  description: "Ngon, bổ, rẻ",
  price: 3,
  inventory: 10,
  product_type: "food",
  avg_rate: 3.9,
  category_id: 1,
  images: "https://i.ibb.co/YpykrjM/bundau.jpg"
)

Product.create!(
  name: "Cháo ếch CLC",
  description: "Ngon, bổ, rẻ",
  price: 4,
  inventory: 10,
  product_type: "food",
  avg_rate: 3.2,
  category_id: 1,
  images: "https://i.ibb.co/dL3CnpW/chaoech.jpg"
)

Product.create!(
  name: "Chè Thái Phiên",
  description: "Ngon, bổ, rẻ",
  price: 2,
  inventory: 10,
  product_type: "food",
  avg_rate: 3.3,
  category_id: 1,
  images: "https://i.ibb.co/jMFwbZ8/chethaiphien.jpg"
)

Product.create!(
  name: "Cơm gà xối mỡ",
  description: "Ngon, bổ, rẻ",
  price: 4,
  inventory: 10,
  product_type: "food",
  avg_rate: 4.9,
  category_id: 1,
  images: "https://i.ibb.co/WsFNSw8/comga.jpg"
)

Product.create!(
  name: "Gà rán KFC",
  description: "Ngon, bổ, rẻ",
  price: 5,
  inventory: 10,
  product_type: "food",
  avg_rate: 4.8,
  category_id: 1,
  images: "https://i.ibb.co/0mpLQh8/garan-kfc.jpg"
)

Product.create!(
  name: "Bánh bông lan King Castella",
  description: "Ngon, bổ, rẻ",
  price: 3,
  inventory: 10,
  product_type: "food",
  avg_rate: 4.6,
  category_id: 1,
  images: "https://i.ibb.co/g7wCDPX/kingcastella-banhbonglan.jpg"
)

Product.create!(
  name: "Mì quảng Trần",
  description: "Ngon, bổ, rẻ",
  price: 2,
  inventory: 10,
  product_type: "food",
  avg_rate: 4.9,
  category_id: 1,
  images: "https://i.ibb.co/XZPpXm6/miquangtran.jpg"
)

Product.create!(
  name: "Bánh Napom",
  description: "Ngon, bổ, rẻ",
  price: 3,
  inventory: 10,
  product_type: "food",
  avg_rate: 4.3,
  category_id: 1,
  images: "https://i.ibb.co/f1zv4wC/napom-bakery.jpg"
)

Product.create!(
  name: "Ram cuốn cải CLC",
  description: "Ngon, bổ, rẻ",
  price: 3,
  inventory: 10,
  product_type: "food",
  avg_rate: 5,
  category_id: 1,
  images: "https://i.ibb.co/F5SNhgg/ramcuoncai.jpg"
)

Product.create!(
  name: "Sushi CLC",
  description: "Ngon, bổ, rẻ",
  price: 5,
  inventory: 10,
  product_type: "food",
  avg_rate: 2.5,
  category_id: 1,
  images: "https://i.ibb.co/9GgSyZh/sushi.jpg"
)

Product.create!(
  name: "Cafe Sài Gòn",
  description: "Ngon, bổ, rẻ",
  price: 2,
  inventory: 10,
  product_type: "drink",
  avg_rate: 4,
  category_id: 2,
  images: "https://i.ibb.co/qWm8MbR/cafesaigon-coffee.jpg"
)

Product.create!(
  name: "Trà bí đao ChiaChia",
  description: "Ngon, bổ, rẻ",
  price: 1,
  inventory: 10,
  product_type: "drink",
  avg_rate: 4,
  category_id: 2,
  images: "https://i.ibb.co/y83W9L2/chiachia-trabidao.jpg"
)

Product.create!(
  name: "Sinh tố Daisy",
  description: "Ngon, bổ, rẻ",
  price: 2,
  inventory: 10,
  product_type: "drink",
  avg_rate: 3.1,
  category_id: 2,
  images: "https://i.ibb.co/HtSp0Dp/daisy-sinhto.jpg"
)

Product.create!(
  name: "Trà sữa DingTea",
  description: "Ngon, bổ, rẻ",
  price: 3,
  inventory: 10,
  product_type: "drink",
  avg_rate: 4.6,
  category_id: 2,
  images: "https://i.ibb.co/Ht9HyKj/dingtea-trasua.jpg"
)

Product.create!(
  name: "Trà đào Freeman",
  description: "Ngon, bổ, rẻ",
  price: 2,
  inventory: 10,
  product_type: "drink",
  avg_rate: 4.7,
  category_id: 2,
  images: "https://i.ibb.co/QdVK0g1/freeman-tradao.jpg"
)

Product.create!(
  name: "Trà sữa GongCha",
  description: "Ngon, bổ, rẻ",
  price: 3,
  inventory: 10,
  product_type: "drink",
  avg_rate: 4.3,
  category_id: 2,
  images: "https://i.ibb.co/wsbCyJB/gongcha-trasua.jpg"
)

Product.create!(
  name: "Trà đào Honey Pea",
  description: "Ngon, bổ, rẻ",
  price: 2,
  inventory: 10,
  product_type: "drink",
  avg_rate: 4.6,
  category_id: 2,
  images: "https://i.ibb.co/YXVLQs8/honeypea-tradao.jpg"
)

Product.create!(
  name: "Cafe Capuchino",
  description: "Ngon, bổ, rẻ",
  price: 3,
  inventory: 10,
  product_type: "drink",
  avg_rate: 4.9,
  category_id: 2,
  images: "https://i.ibb.co/2SdKRgn/huycafe-coffee.jpg"
)

Product.create!(
  name: "Cafe Phố Đỏ",
  description: "Ngon, bổ, rẻ",
  price: 2,
  inventory: 10,
  product_type: "drink",
  avg_rate: 3.1,
  category_id: 2,
  images: "https://i.ibb.co/LkfKTsq/phodo-coffee.jpg"
)

Product.create!(
  name: "Phúc Long Coffee",
  description: "Ngon, bổ, rẻ",
  price: 3,
  inventory: 10,
  product_type: "drink",
  avg_rate: 4.8,
  category_id: 2,
  images: "https://i.ibb.co/k9MPN9j/phuclong-coffee.jpg"
)

Product.create!(
  name: "Trà sữa RoyalTea",
  description: "Ngon, bổ, rẻ",
  price: 3,
  inventory: 10,
  product_type: "drink",
  avg_rate: 4.1,
  category_id: 2,
  images: "https://i.ibb.co/KWsCHhs/royaltea-trasua.jpg"
)

Product.create!(
  name: "Sinh tố CLC",
  description: "Ngon, bổ, rẻ",
  price: 2,
  inventory: 10,
  product_type: "drink",
  avg_rate: 3.1,
  category_id: 2,
  images: "https://i.ibb.co/z5R4w1b/sinhto.jpg"
)

Product.create!(
  name: "Trà sữa TocoToco",
  description: "Nhấp nhô từng cảm xúc",
  price: 3,
  inventory: 10,
  product_type: "drink",
  avg_rate: 5,
  category_id: 2,
  images: "https://i.ibb.co/vjScCT7/tocotoco-trasua.jpg"
)
