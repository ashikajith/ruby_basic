

$dirsize = 0 # total size of all files located in entire directory tree
def processfiles( aDir )
	totalbytes = 0
	Dir.foreach( aDir ){ # process all files in a directory
		|f|
		mypath = "#{aDir}/#{f}"
		s = ""
		
		# if current 'file', mypath, is really a directory and it is not the active
		# directory ('.') or its parent directory ('..') then call this
		if File.directory?(mypath) then
			if f != '.' and f != '..' then
				bytes_in_dir = processfiles(mypath)
				puts( "<DIR> ---> #{mypath} contains [#{bytes_in_dir/1024}] KB" )
			end
		else
			filesize = File.size(mypath)
			totalbytes += filesize
			puts ( "#{mypath} : #{filesize/1024}K" )
		end
	}
	$dirsize += totalbytes
	return totalbytes
end
dirname = "." # <= initially this is set to the parent of current directory

if !(File.directory?(dirname)) then
	puts( "#{dirname} is not a valid directory" )
else
	processfiles( dirname ) # <= This is where processfiles is first called
	printf( "Size of this directory and subdirectories is #{$dirsize} bytes, #{$dirsize/1024}K, %0.02fMB",  "#{$dirsize/1048576.0}" )
end	
