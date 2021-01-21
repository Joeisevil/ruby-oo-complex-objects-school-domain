# code here!
class School
    attr_accessor :roster, :student_name, :school_name, :grade
    
    def initialize(school_name)
        @school_name = school_name
        @roster = {}
        @student_name
    end
    
    def add_student(student_name, grade)
        if @roster[grade] 
            @roster[grade] << student_name
        else
            @roster[grade] =[]
            @roster[grade] << student_name
        end
   
    end
    
    def grade(grade)
        #return all students in that grade in an array
        @roster[grade]
    end

    def sort
        hash = {}
        @roster.sort.each do |grade, student_name|
            hash[grade] = (student_name.sort)
        end
        hash
    end

   
end