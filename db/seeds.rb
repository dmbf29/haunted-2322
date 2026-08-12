puts "Cleaning the DB..."
House.destroy_all # also destroys my monsters too

puts "Creating houses..."
house = House.create!(
  name: 'The Amityville Horror House',
  banner_url: "https://s.yimg.com/lo/mysterio/api/b27409e4ce0f06ec7549defb22c2e8fb369d27428cbfaa3479d4d134b11bbe8c/lightyear_networkapi/resizefill_w976%3Bquality_80%3Bformat_webp/http%3A%2F%2Fmedia.zenfs.com%2Fen%2Fhomerun%2Ffeed_manager_auto_publish_494%2F3709c5bcfc873c27978496ac18b87ee8"
)
puts "... created #{House.count} house(s)"

puts "Creating monsters..."
Monster.create(
  name: "Twins",
  image_url: "https://people.com/thmb/mKf6ZeZILx9hn2187mQcVIPsJi0=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc():focal(1279x214:1281x216)/shutterstock_editorial_5885079ab-2000-a0ad35d94af642a5a055ca9a6d661f17.jpg",
  house: house
)
Monster.create(
  name: "Pennywise",
  image_url: "https://images.squarespace-cdn.com/content/v1/5e387eca8235c42f2e4dbe6c/1598936688809-JJ0SJ1ZHFPDD2V304GW0/image-asset.jpeg",
  house: house
)
puts "... created #{Monster.count} monster(s)"
