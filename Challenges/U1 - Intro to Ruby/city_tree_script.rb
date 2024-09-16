require 'net/http'
require 'json'
require 'pp'

# investigate
url = 'https://data.winnipeg.ca/resource/d3jk-hb6j.json'
uri = URI(url)
response = Net::HTTP.get(uri) # send request to get the data
trees = JSON.parse(response)
pp trees # print the data

# calculate
url = 'https://data.winnipeg.ca/resource/d3jk-hb6j.json?$limit=306000'
uri = URI(url)
response = Net::HTTP.get(uri) # send request to get the data
trees = JSON.parse(response)

ash_tree_count = trees.count { |tree| tree['common_name']&.downcase&.include?('ash') }

puts "Total Ash Trees: #{ash_tree_count}"