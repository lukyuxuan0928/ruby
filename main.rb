$LOAD_PATH << '.'
require_relative 'model/student'
require 'file'

# create
def create_student()
    begin
        # Keep asking require data
        print 'Name: '
        name = gets.to_s.chomp # without next line
        print 'Age: '
        age = gets.to_s.chomp
        print 'Gender (1. Male 2. Female): '
        gender = gets.to_s.chomp
        print 'Region: '
        region = gets.to_s.chomp
        print 'Country: '
        country = gets.to_s.chomp
        print 'Student ID: '
        student_id = gets.to_s.chomp
        print 'Batch: '
        batch = gets.to_s.chomp
        print 'Course: '
        course = gets.to_s.chomp
        print 'School: '
        school = gets.to_s.chomp

        # create an instance
        student = Student.new(name, age, gender, country, region, student_id, batch, course, school)
        # initial database
        db = Database.new()
        # save to db
        db.saveToFile(student)
    rescue Exception => e
        puts e.message
        puts e.backtrace.inspect
    end
end

def read_students()
    begin
        # initial database
        db = Database.new
        # read data from db
        db.readToFile().each do |student|
            puts student.story()
        end
    rescue Exception => e
        puts e.message
    end
end

# Main program
def main
    puts 'Welcome to ruby application...'
    
    while true do
        begin
            puts 'Tools: 1. Create student 2. View students 3. Quit'
            print 'Option: '
            option = gets.to_i
        
            case option
            when 1
                create_student()
            when 2
                read_students()
            when 3
                break
            else
                puts 'nothing'
            end
        rescue Exception => e
            puts e.message
            puts e.backtrace.inspect
        end
    end
end

main