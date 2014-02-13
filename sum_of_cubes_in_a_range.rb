# if input is 2 & 4
#output is (2*2*2 +  3*3*3* + 4*4*4)
# cant give arguments
def sum_of_cubes_range(range_1,range_2)
	 (range_1..range_2).inject(0) {|sum , x| sum+=(x*x*x)}
end
p sum_of_cubes_range(3,6)
