require_relative 'model/student'

class Database
    def initialize()
        # Create new file if not exist
        @file = File.new("db.txt", "a+")
    end
    # save into file
    def saveToFile(student)
        if @file
            # write the data to file
            @file.syswrite("#{student.format()}\n")
            puts "Inserted"
        end
    end

    # read from file
    def readToFile()
        # return if file doest not exist
        return unless @file
        # define array
        students = []
        # read file
        data_array = IO.readlines(@file)
        # loop the data
        data_array.each do |data|
            array = data.split(',') # split the data by ,
            # pass to student object
            student = Student.new(array[0], array[1], array[2], array[3], array[4], array[5], array[6], array[7], array[8])
            # push it to list
            students.push(student)
        end
        # return the list
        return students
    end
end


