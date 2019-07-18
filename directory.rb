def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  students = []
  while name = gets.chomp.to_sym do
    break if name.empty?
    puts "What is your student cohort"
    cohort = gets.chomp.to_sym
    puts "What is your student height"
    height = gets.chomp.to_sym
    puts "What is your student hobbie"
    hobbies = gets.chomp.to_sym
    puts "Where is your student from"
    country_of_birth = gets.chomp.to_sym
    if cohort.empty? || height.empty? || hobbies.empty? || country_of_birth.empty?
      cohort = "Not given"
      height = "(Not given)"
      hobbies = "(Not given)"
      country_of_birth = "(Not given)"
    end
    students << {name: name, cohort: cohort, hobbies: hobbies, height: height, country_of_birth: country_of_birth}
    if students.count > 1
      puts "Now we have #{students.count} students"
    else
      puts "Now we have #{students.count} student"
    end

  end
  students
end

def print_header
puts "The students of Villains Academy"
puts "-------------"
end

def print(students)
  students.each do |student|
     puts " #{student[:name]} (#{student[:cohort]} cohort), Country of birth: #{student[:country_of_birth]}  Height: #{student[:height]} cm Hobbies: #{student[:hobbies]}"
  end
end

def print_footer(students)
  if students.count > 1
    puts "Overall, we have #{students.count} great students"
  else
    puts "Overall, we have #{students.count} great student"
  end
end

students = input_students
print_header
print(students)
print_footer(students)
