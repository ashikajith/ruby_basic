require('fileutils')
overwrite_prompt = true

puts ("Enter the source directory")
source_dir = gets().chomp()

if !(File.directory?(source_dir))
	puts 'Error File Not Found'
else
	puts 'Enter the target directory'
	target_dir = gets().chomp()

	ok = true # traget doesnt exist

	if !(File.directory?(target_dir))
		puts "#{target_dir} cant be found !!!"
		puts "Would you like to create it (Y/N)"
		answer = gets()
		if answer[0,1].downcase == 'y'
			FileUtils.mkdir(target_dir)
			ok = true
		end
	end
	if ok then 
		FileUtils.cp( source_dir, target_dir )
		puts("copying..")
	end
end		
puts("end")			