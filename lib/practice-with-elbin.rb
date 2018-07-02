class Student

@@all_students = []

attr_reader :name, :grad_year
attr_accessor :laptop

  def initialize(name, laptop=true)
    @name = name
    @grad_year = 2018
    @laptop = laptop
    @@all_students << self
  end

  def assign_loan_laptop
    if @laptop == false
      puts "Giving Student a laptop"
      self.laptop = true
    end
  end

  def self.all_students
    @@all_students
  end


end

elbin = Student.new("Elbin")
dick = Student.new("Dick")
tony = Student.new("Tony", false)

Student.all_students
