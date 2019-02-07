# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# SellableGood.create([
#   {
#     img_url: "https://ae01.alicdn.com/kf/HTB1EQI7lmfD8KJjSszhq6zIJFXaR/Strong-Decontamination-Bath-Brush-Sponge-Tiles-Brush-Hot-Sale-Magic-Strong-Decontamination-Bath-Brush-Kitchen-Clean.jpg_640x640.jpg",
#     name: "skovorodka",
#     price: 300
#   },
#   {
#     img_url: "http://www.mobileswall.com/wp-content/uploads/2015/09/640-kotenok-malysh-spyaschiy-son-l.jpg",
#     name: "kotenok",
#     price: 500
#   }
# ])
Category.create(name: 'Fashion')
Category.create(name: 'Home & Kitchen')
Category.create(name: 'Sports & Fitness')
Category.create(name: 'Toys & Games')
Category.create(name: 'Baby Products')
Category.create(name: 'Grocery')
Category.create(name: 'Automotive')
Category.create(name: 'Tools & Home')
Category.create(name: 'Books')
Category.create(name: 'Pet Supplies')
Category.create(name: 'Office Supplies')
Category.create(name: 'Music, Movies & TV Shows')

User.create(email: 'buyer@iman.com', password: 'Password123$', role: 'buyer')
User.create(email: 'investor@iman.com', password: 'Password123$', role: 'investor')

category = Category.create(name: 'Electronics')
2.times do
  good = SellableGood.create(
    name: 'Mate 20 Pro Dual SIM Black 128GB 4G LTE',
    firm: 'Huawei',
    rating: 4,
    description: 'An iconic square combining Leica Triple Camera and one flash inherits the Mate series’ central and simple camera design concept to create an aesthetic signature A forged masterpiece of 3D glass with smooth curves and seams that dissolve into the design The IP68 rated water and dust resistance1 means no worry of taking spills, splashes, and dunks The industry-leading 7nm process technology of Kirin 980 generates direct performance upgrade of speed improvement and power efficiency World’s first 1.4 Gbps3 LTE Cat.21 smartphone which supports up to 1733 Mbps3 Wi-Fi download speeds',
    price: 2300,
    category: category
  )
  image = SellableGoodImage.new(sellable_good_id: good.id)
  image.url_remote_url = 'https://cf2.s3.souqcdn.com/item/2018/10/24/39/75/36/61/item_XXL_39753661_156790805.jpg'
  image.save
  sleep 1
  image = SellableGoodImage.new(sellable_good_id: good.id)
  image.url_remote_url = 'https://cf4.s3.souqcdn.com/item/2018/10/24/39/75/36/61/item_XXL_39753661_156790813.jpg'
  image.save
  sleep 2
  image = SellableGoodImage.new(sellable_good_id: good.id)
  image.url_remote_url = 'https://cf2.s3.souqcdn.com/item/2018/10/24/39/75/36/61/item_XXL_39753661_156790820.jpg'
  image.save

  good = SellableGood.create(
    name: 'iPhone X With FaceTime Silver 64GB 4G LTE',
    firm: 'Apple',
    rating: 5,
    price: 3169
  )

  image = SellableGoodImage.new(sellable_good_id: good.id)
  image.url_remote_url = 'https://cf3.s3.souqcdn.com/item/2018/01/30/24/05/14/35/item_XXL_24051435_102956436.jpg'
  image.save

  image = SellableGoodImage.new(sellable_good_id: good.id)
  image.url_remote_url = 'https://cf3.s3.souqcdn.com/item/2018/01/30/24/05/14/35/item_XXL_24051435_102956439.jpg'
  image.save
  sleep 1
  image = SellableGoodImage.new(sellable_good_id: good.id)
  image.url_remote_url = 'https://cf2.s3.souqcdn.com/item/2018/01/30/24/05/14/35/item_XXL_24051435_102956440.jpg'
  image.save

  good = SellableGood.create(
    name: 'Samsung Galaxy Note9 Dual SIM Ocean Blue 128GB 4G LTE',
    firm: 'Samsung',
    rating: 3,
    price: 2679
  )

  image = SellableGoodImage.new(sellable_good_id: good.id)
  image.url_remote_url = 'https://k.nooncdn.com/t_desktop-pdp-v1/v1533794928/N16311636A_1.jpg'
  image.save


  image = SellableGoodImage.new(sellable_good_id: good.id)
  image.url_remote_url = 'https://k.nooncdn.com/t_desktop-pdp-v1/v1533794928/N16311636A_2.jpg'
  image.save

  good = SellableGood.create(
    name: 'Galaxy S9 Plus Dual SIM Midnight Black 64GB 4G LTE',
    firm: 'Samsung',
    rating: 4,
    description: '',
    price: 2699
  )

  image = SellableGoodImage.new(sellable_good_id: good.id)
  image.url_remote_url = 'https://images-na.ssl-images-amazon.com/images/I/61lDQzzlbWL._SX679_.jpg'
  image.save

  image = SellableGoodImage.new(sellable_good_id: good.id)
  image.url_remote_url = 'https://images-na.ssl-images-amazon.com/images/I/41E-y33adSL._SL1000_.jpg'
  image.save
  sleep 1
  image = SellableGoodImage.new(sellable_good_id: good.id)
  image.url_remote_url = 'https://images-na.ssl-images-amazon.com/images/I/61Poh-fZGcL._SL1000_.jpg'
  image.save
  sleep 1
  image = SellableGoodImage.new(sellable_good_id: good.id)
  image.url_remote_url = 'https://images-na.ssl-images-amazon.com/images/I/41XEDH2bkHL._SL1000_.jpg'
  image.save

  good = SellableGood.create(
    name: 'Redmi S2 Dual SIM Black 32GB 4G LTE (Middle East Specs)',
    firm: 'Xiaomi',
    rating: 4,
    description: '',
    price: 499
  )

  image = SellableGoodImage.new(sellable_good_id: good.id)
  image.url_remote_url = 'https://cf3.s3.souqcdn.com/item/2018/06/30/36/22/42/39/item_XXL_36224239_142516770.jpg'
  image.save

  image = SellableGoodImage.new(sellable_good_id: good.id)
  image.url_remote_url = 'https://cf4.s3.souqcdn.com/item/2018/06/30/36/22/42/39/item_XXL_36224239_142516773.jpg'
  image.save
  image.save

  image = SellableGoodImage.new(sellable_good_id: good.id)
  image.url_remote_url = 'https://cf4.s3.souqcdn.com/item/2018/11/18/36/22/42/39/item_XXL_36224239_8d314b3e51cb7.jpg'
  image.save

  good = SellableGood.create(
    name: 'Mate 20 Pro Dual SIM Black 128GB 4G LTE',
    firm: 'Huawei',
    rating: 4,
    description: 'An iconic square combining Leica Triple Camera and one flash inherits the Mate series’ central and simple camera design concept to create an aesthetic signature A forged masterpiece of 3D glass with smooth curves and seams that dissolve into the design The IP68 rated water and dust resistance1 means no worry of taking spills, splashes, and dunks The industry-leading 7nm process technology of Kirin 980 generates direct performance upgrade of speed improvement and power efficiency World’s first 1.4 Gbps3 LTE Cat.21 smartphone which supports up to 1733 Mbps3 Wi-Fi download speeds',
    price: 2300,
    category: category
  )
  image = SellableGoodImage.new(sellable_good_id: good.id)
  image.url_remote_url = 'https://cdn2.gsmarena.com/vv/pics/huawei/huawei-mate20-pro-1.jpg'
  image.save

  image = SellableGoodImage.new(sellable_good_id: good.id)
  image.url_remote_url = 'https://cdn2.gsmarena.com/vv/pics/huawei/huawei-mate20-pro-2.jpg'
  image.save

  image = SellableGoodImage.new(sellable_good_id: good.id)
  image.url_remote_url = 'https://cdn.gsmarena.com/imgroot/reviews/18/huawei-mate-20-pro/gal/-1024w2/gsmarena_010.jpg'
  image.save

  good = SellableGood.create(
    name: 'K8 Note Dual SIM Venom Black 64GB 4G LTE',
    firm: 'Lenovo',
    rating: 4,
    description: '',
    price: 535,
    category: category
  )

  image = SellableGoodImage.new(sellable_good_id: good.id)
  image.url_remote_url = 'https://cdn2.gsmarena.com/vv/pics/lenovo/lenovo-k8-note-5.jpg'
  image.save

  image = SellableGoodImage.new(sellable_good_id: good.id)
  image.url_remote_url = 'https://cdn2.gsmarena.com/vv/pics/lenovo/lenovo-k8-note-6.jpg'
  image.save

  good = SellableGood.create(
    name: 'iPhone 5s With FaceTime Gold 16GB 4G LTE',
    firm: 'Apple',
    rating: 4,
    description: '',
    price: 589,
    category: category
  )

  image = SellableGoodImage.new(sellable_good_id: good.id)
  image.url_remote_url = 'https://www.letstango.com/media/catalog/product/cache/1/thumbnail/380x/9df78eab33525d08d6e5fb8d27136e95/9/1/91Uxia3_SjL._SL1500_.jpg'
  image.save

  image = SellableGoodImage.new(sellable_good_id: good.id)
  image.url_remote_url = 'https://www.letstango.com/media/catalog/product/cache/1/thumbnail/380x/9df78eab33525d08d6e5fb8d27136e95/7/1/71jN0a78rL._SL1500_.jpg'
  image.save

  image = SellableGoodImage.new(sellable_good_id: good.id)
  image.url_remote_url = 'https://www.letstango.com/media/catalog/product/cache/1/thumbnail/380x/9df78eab33525d08d6e5fb8d27136e95/8/1/816zEZWnuAL._SL1500_.jpg'
  image.save
end

category = Category.create(name: 'Beauty & Health')
3.times do
  good = SellableGood.create(
    name: 'Eros EDP 100 ml',
    firm: 'VERSACE',
    rating: 3,
    description: '',
    price: 236,
    category: category
  )

  image = SellableGoodImage.new(sellable_good_id: good.id)
  image.url_remote_url = 'https://images-na.ssl-images-amazon.com/images/I/51V0r3je7bL.jpg'
  image.save

  good = SellableGood.create(
    name: 'Love Story EDP 75 ml',
    firm: 'CHLOE',
    rating: 4,
    description: '',
    price: 244,
    category: category
  )

  image = SellableGoodImage.new(sellable_good_id: good.id)
  image.url_remote_url = 'https://images.ua.prom.st/1153274671_w640_h640_cid2238225_pid698736468-72412a50.jpg'
  image.save

  good = SellableGood.create(
    name: 'Sauvage EDP 100 ml',
    firm: 'Dior',
    rating: 4,
    description: '',
    price: 589,
    category: category
  )

  image = SellableGoodImage.new(sellable_good_id: good.id)
  image.url_remote_url = 'https://images-na.ssl-images-amazon.com/images/I/61HZcIckEoL._SY355_.jpg'
  image.save
end
