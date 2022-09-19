class Dog
    def initialize(name, breed, age, bark, favorite_foods)
        @name = name
        @breed = breed
        @age = age
        @bark = bark
        @favorite_foods = favorite_foods
    end
    def name #get
        @name
    end
    
    def name=(name) #set
        @name = name
    end 
    
    def breed #get
        @breed
    end
    
    def breed=(type) #set
        @breed = type
    end
    
    
    def age #get
        @age
    end

    def age=(number) #set
        @age = number
    end
    
    def bark #get
        if @age > 3 
            @bark.upcase
        else @bark.downcase
        end

    end

    def bark=(string) #set
        @bark = string
    end
    
    def favorite_foods #get
        @favorite_foods
    end

    def favorite_food?(food) #set?
        @favorite_foods.any? do |foo|
            foo.downcase == food.downcase
        end    
      
        
       # .map(&:downcase).include?(food.downcase)

    end
        
        
end


##EVERY CLASS SHOULD ONLY HAVE ONE INITIALIZE
