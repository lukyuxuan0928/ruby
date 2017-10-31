$LOAD_PATH << '.'

require 'module'

class Person
    # initial the object
    def initialize(name, age, gender, country, region)
        @name=name
        @age=age
        # check gender
        if gender == 1 then
            @gender=Gender::Male
        else
            @gender=Gender::Female
        end

        @country=country
        @region=region
    end

    # introduce
    def story()
        story = "Hi, my name is #@name. I am #@age year's old and I am a #@region come from #@country."
        return story
    end

end