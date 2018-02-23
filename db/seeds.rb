Dose.destroy_all
Cocktail.destroy_all
Ingredient.destroy_all

require 'open-uri'
require 'json'

url = 'http://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
ingredient_serialized = open(url).read
ingredient = JSON.parse(ingredient_serialized)

ingredient["drinks"].each do |ingredient|
  Ingredient.create(name: ingredient['strIngredient1'])
end

puts 'finished'
