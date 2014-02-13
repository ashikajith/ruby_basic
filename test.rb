puts "Enter the File name to be created "
file_name = STDIN.gets.strip
aFile = File.new(file_name, "w+")
if aFile
	puts "File Created Successfully"
else
	puts "Error!!!!"
end		
aFile.close

puts "Enter the String to be write in the created file "
string = STDIN.gets.strip
aFile = File.open(file_name,"r+")
if aFile
	aFile.syswrite(string)
else
  puts "Unable to open file"	
end	
arr = IO.readlines(file_name)
puts "the content of the files"
arr.each do  |ch| puts ch 
end
aFile.close
puts "Enter the contents to append "
string2 = STDIN.gets.strip
aFile = File.open(file_name,"a+")
aFile.syswrite(string2)
puts "Content of files using File.foreach { |line|  } "
a = File.foreach("#{file_name}") { |line| puts line }
puts a
puts "Normal DForm IO readline"
arr = IO.readlines(file_name)
puts arr
aFile.close
