$LOAD_PATH << './model'

require 'person'

class Student < Person
    
    # Initial the object
    def initialize(name, age, gender, country, region, student_id, batch, course, school)
        super(name, age, gender, country, region)        
        @student_id=student_id
        @batch=batch
        @course=course
        @school=school
    end

    # introduce
    def story()
        story = super() + "I am studying #@course in #@school"
    end

    # format
    def format()
       format = "#@name,#@age,#@gender,#@country,#@region,#@student_id,#@batch,#@course,#@school"
    end
end