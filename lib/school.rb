# code here!
require 'pry'

class School
    attr_accessor :school_name, :roster

    def initialize(school_name)
        @school_name = school_name
        @roster = {}
    end

    def add_student(name, grade)
         if @roster[grade]
            @roster[grade] << name 
        else
            @roster[grade] = [name]
        end  
    end

    def grade(grade)
        @roster[grade]    
    end

    def sort
        new_list = {}
        @roster.each {|key, value| new_list[key] = value.sort}
        new_list
    end
end
