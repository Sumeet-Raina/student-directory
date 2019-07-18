def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  # create an empty array
  students = []
  # get the first name
  puts "Enter name:"
  name = gets.chomp
  puts "Enter country:"
  country = gets.chomp
  puts "Enter hobbies:"
  hobbies = gets.chomp
  puts "Enter height"
  height = gets.chomp
  # while the name is not empty, repeat this code
  while !name.empty? do
    # add the student hash to the array
    students << {name: name, cohort: :november, country: country, hobbies: hobbies, height: height }
    puts "Now we have #{students.count} students"
    # get another name from the user
    puts "Enter name"
    name = gets.chomp
    puts "Enter country"
    country = gets.chomp
    puts "Enter hobbies"
    hobbies = gets.chomp
    puts "Enter height"
    height = gets.chomp
  end
  # return the array of students
  students
end

def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end

def print(students)
  i = 0
  while !(student = students[i]).nil? do
     puts " #{student[:name]} (#{student[:cohort]} cohort), country: #{student[:country]} hobbies: #{student[:hobbies]} height: #{student[:height]} "
     i += 1
  end
end

def print_footer(students)
  puts "Overall, we have #{students.count} great students"
end

students = input_students
#nothing happens until we call the methods
print_header
print(students)
print_footer(students)
