class User

    @@all = []

    attr_accessor :name

    def initialize(name)
        @name = name

        @@all << self
    end

    def recipes
        RecipeCard.all.reject {|recipecard| recipecard.user != self}.collect {|recipecard| recipecard.recipe}
    end

    def add_recipe_card(date, rating, user, recipe)
        RecipeCard.new(date, rating, self, recipe)
    end

    def declare_allergen(ingredient)
        Allergen.new(self, ingredient)
    end

    def allergens
        Allergen.all.reject{|allergen| allergen.user != self}.collect{|allergen| allergen.ingredient}
    end

    def top_three_recipes
        RecipeCard.all.select{|recipecard| 
            recipecard.user == self
        }.sort_by{|recipecard| 
                recipecard.rating
            }.reverse!.slice(0,3).collect {|recipecard| recipecard.recipe}
    end

    def most_recent_recipe
        recipes.last
    end

    # def safe_recipes
    #     Recipe.all.reject{|recipe| 
    #         recipe.allergens.include?()
    #         }
    #     }.collect{|recipe| recipe}
    # end

    def self.all
        @@all
    end
        
end

##TO DO: sort by rating and date helper classes