def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  students = []
  while name = gets.chomp.capitalize do
    break if name.empty?
    puts "What is your student cohort"
    cohort = gets.chomp.capitalize
    puts "Where is your student from"
    country_of_birth = gets.chomp.capitalize
    if cohort.empty? || country_of_birth.empty?
      cohort = "Not given"
      country_of_birth = "(Not given)"
    end
    students << {name: name, cohort: cohort, country_of_birth: country_of_birth}
    if students.count > 1
      puts "Now we have #{students.count} students"
    else
      puts "Now we have #{students.count} student"
    end
    puts "Enter another name"
  end
  students
end

def print_header
puts "The students of Villains Academy"
puts "-------------"
end

def print(students)
  students.map do |student|
    student.map {|k,v| [k, v.to_sym]}
  puts " #{student[:name]} (#{student[:cohort]} cohort), #{student[:country_of_birth]}"
  end
end

def cohort(students)
  puts "What cohort would you like to print"
  cohort_input = ""
  months = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]
  while cohort_input != months
    cohort_input = gets.chomp.capitalize
    students.select{ |s| s[:cohort] == cohort_input }.each {|student| p student[:name] }
    break if cohort_input == "End"
    puts "Please, introduce a month" if cohort_input != months
  end
end


def print_footer(students)
  if students.count > 1
    puts "Overall, we have #{students.count} great student"
  else
    puts "Overall, we have #{students.count} great students"
  end
end

students = input_students
print_header
print(students)
cohort(students)
print_footer(students)
