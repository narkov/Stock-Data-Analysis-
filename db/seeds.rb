# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Emanuel', :city => cities.first)

puts "data goes here"

require 'fastercsv'    

csv_text = File.read('data/Q1_60_2000.csv')
csv = FasterCSV.parse(csv_text, :headers => true)
csv.each do |row|
  row = row.to_hash.with_indifferent_access
  Trade.create!(row.to_hash.symbolize_keys)
end