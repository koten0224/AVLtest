# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

data = File.read("app/data/questions_data.csv").each_line.map do |line|
  line.scan(/".+?"|(?<=,)(?=,)|[^,]+/)
end

keys = data.first
array_of_data_hash = []

data[1..-1].each do |row|
  data_hash = {}
  row.length.times do |index|
    key = keys[index].gsub(/"|\r\n/, "")
    data_hash[key] = row[index].gsub(/"|\r\n/, "")
  end
  Question.create(**data_hash)
end
