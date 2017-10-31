# Ruby

Ruby is a dynamic, reflective, object-oriented, general-purpose programming language

## Getting Started

Here I'm using a simple console program that storing and reading the data into text file.

## Installation

Before using the sqlalchemy features, you need to install:
```
    1. $ sudo apt-get install ruby-full
```

## Example

Define a student class as a object that easy to point the data

```
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
```

Create a database class that centralize all the db control in order to maintain easily

```
    class Database
        def initialize()
            # Create new file if not exist
            @file = File.new("db.txt", "a+")
        end
        # save into file
        def saveToFile(student)
            if @file
                @file.syswrite("#{student.format()}\n")
                puts "Inserted"
            end
        end

        # read from file
        def readToFile()
            return unless @file
            students = []

            data_array = IO.readlines(@file)
            data_array.each do |data|
                array = data.split(',')
                student = Student.new(array[0], array[1], array[2], array[3], array[4], array[5], array[6], array[7], array[8])
                students.push(student)
            end

            return students
        end
    end
```

## Version

Please take note that might minor changes of syntax on different version

```
    ruby == 2.31
```