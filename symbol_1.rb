def method(arg)
	p arg
end

x = 45 
xsymbol = :x
puts xsymbol

puts ('-Test #1=====')
puts('method(x)')
method(x)
puts ('method(:x)')
method(:x)

puts ('- Test #2 --------------')
puts ('method(eval(:x.id2name))')
method(eval(:x.id2name))

puts ('-Test#3----------')
method(xsymbol)
method(:xsymbol)
method(eval(:xsymbol.id2name))
method(eval((eval(:xsymbol.id2name)).id2name))

puts ('-Test#4 ----------')
#method(:method).call("")
#method(:method).call(eval(:x.id2name))
puts "========================"
puts( :helloworld.equal?( :helloworld ) )
puts( "helloworld".equal?( "helloworld" ) )
puts( 1.equal?( 1 ) )