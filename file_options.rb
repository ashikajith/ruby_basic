
puts('File.foreach...')
File.foreach("Ammu") {|line| print( line ) }

puts("\n\nFile.readlines...")
lines = File.readlines("Ammu")
lines.each{|line| print( line )}

 #puts "Using IO " 

puts('IO.foreach...')
IO.foreach("Ammu") {|line| print( line ) }

puts("\n\nIO.readlines...")
lines = IO.readlines("Ammu")
lines.each{|line| print( line )}
puts
puts "creating file============ "

f =  File.new("my_file.txt", "w")
f.puts("Hi", "Good Morning Have a nice day ")
f.close
# To read the content of files in the file and print the number of lines 

charcount = 0
linecount = 0

f = File.new("my_file.txt", "r")
# Another way to find the number of lines in a file 

# count = File.foreach("my_file.txt").inject(0) {|c, line| c+1}
# puts "#{count} :number of lines "

while !( f.eof ) do
	c = f.getc()
	if ( c == 'H' ) then 		
		linecount += 1
		puts( " <End Of Line #{linecount}>" )
	else
		putc( c )
		charcount += 1
	end
end
if f.eof then 
	puts( "<End Of File>" ) 
end