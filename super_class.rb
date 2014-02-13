class Matrix_1
	def matrix
		p "Matrix - first part "
	end	 
end

class Matrix_2 < Matrix_1
	def matrix
		return super << "Matrix Reloaded - second part" 		
	end
end

class Matrix_3 < Matrix_2
	def matrix
		return super << "Matrix Revolution - Third part"
	end
end	

p Matrix_3.new.matrix
puts "==========================="
Matrix_2.new.matrix
puts "==========================="
Matrix_1.new.matrix