require_relative 'model/student'

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


