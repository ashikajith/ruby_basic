# The Book of Ruby - http://www.sapphiresteel.com

# You must 'require' Set when using Sets
require "set"

s1 = Set.new( [1,2,3,4,5,2] )
s2 = Set.new( [1,1,2,3,4,4,5,1] )
s3 = Set.new( [1,2,100] )
weekdays = Set.new( %w( Monday, Tuesday, Wednesday, Thursday,
						Friday, Saturday, Sunday ) )
p( s1 ) #excludes repeated datas 
p( s2 )
p( s3 )
p( s1 == s2 )
p( s1 == s3 )
s1.add(1)
s1.merge([2, 6]) #adds 2,6 in the s1 set 2 already exist so show only 6
p( s1 )
s1.add( 1000 )
p( s1 )
puts"===========subset======"
p(s1)
p(s2)
puts"---------"
p(s1.subset? s2) #false 
p(s2.subset? s1) #true
puts "----------------------"
s1.merge(s2)
p( s1 )

