$LOAD_PATH << './model'

require 'person'

class Student < Person
    
    # Initial the object
    def initialize(name, age, gender, country, region, student_id, batch, course, school)
        # pass to super class
        super(name, age, gender, country, region)        
        @student_id=student_id
        @batch=batch
        @course=course
        @school=school
    end

    # introduce 
    # override method
    def story()
        story = super() + "I am studying #@course in #@school"
    end

    # format
    def format()
       format = "#@name,#@age,#@gender,#@country,#@region,#@student_id,#@batch,#@course,#@school"
    end
end