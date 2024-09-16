require 'net/http'
require 'json'
require 'pp'

url = 'https://dog.ceo/api/breeds/list/all'
uri = URI(url)
response = Net::HTTP.get(uri)
dog_breeds = JSON.parse(response) # Convert JSON data into Ruby data.
pp dog_breeds # pp stands for pretty print.

dog_breeds['message'].each do |breed, sub_breeds|
  # iterate all breads
  if sub_breeds.empty?
    # when there is no sub bread
    puts "* #{breed.capitalize}"
  else
    # when there are sub breads
    puts "* #{breed.capitalize}"
    sub_breeds.each { |sub_breed| puts "  * #{sub_breed.capitalize}" }
  end
end