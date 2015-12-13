# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# coding: utf-8

Category.create(:name => 'ソリューション・商品')
Category.create(:name => '事務・手続・総務・労務')
Category.create(:name => '営業・提案活動')
Category.create(:name => '技術・ノウハウ')
Category.create(:name => '業務（栄養管理）')
Category.create(:name => '業務（リハビリ）')
Category.create(:name => '業務（ＮＳＴ）')
Category.create(:name => 'アイデア・改善')
Category.create(:name => 'その他')
