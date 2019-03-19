class Allergen

    @@all = []

    attr_accessor :user
    attr_reader :ingredient

    def initialize(user, ingredient)
        @user = user
        @ingredient = ingredient
        
        @@all << self
    end

end