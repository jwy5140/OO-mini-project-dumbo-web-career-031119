class Recipe

    @@all = []

    attr_accessor :name

    def initialize(name)
        @name = name

        @@all << self
    end

    def self.most_popular
        Recipe.all.sort_by {|recipe| RecipeCard.all.find_all{|recipecard| recipecard.recipe == recipe}.length}.last
    end

    def users
        RecipeCard.all.reject{|recipecard| recipecard.recipe != self}.collect{|recipecard| recipecard.user}
    end

    def ingredients
        RecipeIngredient.all.reject{|recipeingredient| recipeingredient.recipe != self}.collect{|recipeingredient| recipeingredient.ingredient}
    end

    def allergens
        ingredients.select {|ingredient| Allergens.all.include?(ingredient)}
    end

    def add_ingredients(ingredient_arr)
        ingredient_arr.each {|ingredient| RecipeIngredient.new(ingredient, self)}
    end

    def self.all
        @@all
    end

end