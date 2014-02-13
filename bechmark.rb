require 'benchmark'

n = 5000000
arr = (1..100000).map{ rand }
Benchmark.bm do |b|
  b.report("+= ") do
    a = ""
    100_00.times { a += "." }
  end

  b.report("<< ") do
    a = ""
    1_00_00.times { a << "." }
  end
  b.report("a = 1") { for i in 1..n; a = "1";  end }
  b.report("for:")   { for i in 1..n; a = "1"; end }
  b.report("times:") { n.times do   ; a = "1"; end }
  b.report("upto:")  { 1.upto(n) do ; a = "1"; end }
  b.report("sort:") { arr.sort}
  b.report("sort!") {arr.sort!}
end