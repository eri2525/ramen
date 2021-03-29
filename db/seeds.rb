# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# (1..50).each do |i|
#   Shop.create(name: "店舗名#{i}", text: "コメント#{i}")
# end

Tag.create([
             { name: '東口' },
             { name: '西口' },
             { name: 'とんこつ' },
             { name: 'しょうゆ' },
             { name: 'みそ' },
             { name: '魚介' },
             { name: '激辛' },
             { name: 'つけ麺' }
           ])
