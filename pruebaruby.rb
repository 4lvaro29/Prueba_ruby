class Students
  attr_accessor :name, :notas  
  def initialize(name, notas1 = 0, notas2 = 0, notas3 = 0)
    @name = name
    @notas1 = notas1.to_i
    @notas2 = notas2.to_i
    @notas3 = notas3.to_i
  end
  def average(name, notas)
   @notas.inject(0){|sum, x| sum + x} / 3.to_f
  end
  def out_class 
    not_present = 0 
    students =read_file 
    @name.each do |student|
      student = student.split(",")
      no_present += student.select { |x| x == "A"}.count
    end

  end 
end
def read_file
  file = File.open("students.csv", "r") # open file
  lines = file.readlines #read lines from file
  lines = lines.map { |line| line.gsub("\n", "")} #remove \n characters from array
  file.close
  lines
end

def status(score) # Method for students score
  if score >= 7
    "Aprobado"
  else 
    "Reprobado"
  end
end

def average (student) #Si el usuario presiona la opción 3 se debe mostrar losnombres de los alumnos y sus promedios
  (student[1].to_f + student[2].to_f + student[3].to_f ) / 3
end

option = 0
puts "Bienvenido"
while option != 4
  puts "Ingrese una opcion del menú"
  
  puts "2- Ver cantidad de Alumnos del curso"
  puts "3- Mostrar Alumnos y sus promedios"
  puts "4- Guardar información de Alumnos"
  puts "5- Ver Alumnos aprobados"

  option = gets.chomp.to_i

  case option 
  when 5
     students = read_file
    students.each do |student|
      student = student.split(",")
      avg = average(student)
      student_status = status(avg)
      puts arr = Array.new(1,"----------------------------------")
      puts "Nombre: #{student[0]}, Estado: #{student_status}"
      puts arr = Array.new(1,"----------------------------------")
    end
  when 2 #If user choose option two, show total of students
    
    students = read_file.count
    
    puts arr = Array.new(1,"----------------------------------")
    puts "Alumnos: #{students}"
    puts arr = Array.new(1,"----------------------------------")
  when 3
    students = read_file
    students.each do |student|
      student = student.split(",")
      name = student[0] # student name position
      avg = average(student)
      puts arr = Array.new(1,"----------------------------------")
      puts "Nombre: #{name}, Promedio: #{avg}"
      puts arr = Array.new(1,"----------------------------------")
    end
  when 1
  
    break #if option is 1, messages should be showed
  else  
    puts arr = Array.new(1,"----------------------------------")
    puts "La opción ingresada no es válida."  
    puts arr = Array.new(1,"----------------------------------")
  end
end
puts arr = Array.new(1,"--------------------------------------")
puts "Gracias por usar este programa, bye"
puts arr = Array.new(1,"--------------------------------------")

