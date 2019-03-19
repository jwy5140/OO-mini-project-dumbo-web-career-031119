require_relative '../config/environment.rb'


user1 = User.new("Dan")
recipe1 = Recipe.new("Dumplings")
user2 = User.new("Ken")
recipe2 = Recipe.new("Soup")
user3 = User.new("Rick")
recipe3 = Recipe.new("Fried Rice")

ing1 = Ingredient.new("scallions")
ing2 = Ingredient.new("chicken broth")
ing3 = Ingredient.new("beef")

arr = [ing1, ing2, ing3]

user3.declare_allergen(ing1)




RecipeCard.new(12, 5, user1, recipe2)
RecipeCard.new(12, 5, user1, recipe1)
RecipeCard.new(12, 5, user2, recipe1)
RecipeCard.new(12, 5, user3, recipe1)
RecipeCard.new(12, 5, user1, recipe2)
RecipeCard.new(12, 5, user3, recipe3)




binding.pry


