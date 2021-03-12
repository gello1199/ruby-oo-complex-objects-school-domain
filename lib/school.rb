# code here!
require 'pry'

class School
    attr_accessor :school_name, :roster

    def initialize(school_name)
        @school_name = school_name
        @roster = {}
    end

    def add_student(name, grade)
        @roster[grade] ||= []
        @roster[grade] << name  
    end

    def grade(grade) #(grade) is a key
        @roster[grade]    
    end

    def sort
        new_list = {}
        @roster.each {|grade, students| new_list[grade] = students.sort}
        new_list
    end 
end
