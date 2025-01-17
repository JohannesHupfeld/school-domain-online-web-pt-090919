class School
  attr_accessor :name, :roster
  
  def initialize(name)
    @name = name
    @roster = {}
  end 
  
  def add_student(student, level)
    # this sort of means #=> a || a = b ... or #=> x || x = y
    # it's freak'n weird
    roster[level] ||= []
    roster[level] << student
  end 
  
  def grade(level)
    roster.detect do |x, y| 
      if x == level
        return y 
      end 
    end 
  end 
  
# This works, but it isn't passing learn.co's tests cause of 
# how it displays syntactically...but the same information is there
#  def sort 
#    roster.sort_by do |x, y| 
#      x 
#    end 
#  end 

# Here's learn.co's solution:
def sort 
  nu_hash = {}
  roster.each do |x, y| 
    nu_hash[x] = y.sort 
  end 
  nu_hash
end 
  
end 
