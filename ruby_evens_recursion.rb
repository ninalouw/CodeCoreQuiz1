# # Implement question #5 (5. Write a function in JavaScript that takes in a number n
#  and returns the first n even numbers) again in Ruby in two ways:
# #     a. Using a loop
# #     b. Using recursion
# # Benchmark the two solutions (include your code for the benchmarking).
# Which one of your solutions is faster?

def recursion(n)
  if n % 2 ==0
    n
  else
    recursion(n + 1)
end
end

puts recursion(6)


# def factorial_loop(n)
#   result = 1
#    for i in 1..n
#      result *= i
#    end
#    result
# end
#
# def factorial_recursive(n)
#     if n == 0
#       1
#     else
#     n * (factorial_recursive(n-1))
#   end
# end
#
#
# require "benchmark"
# n = 5000000
# Benchmark.bm do |x|
#   x.report { for i in 1..n; a = "1"; end }
#   x.report { n.times do   ; a = "1"; end }
# end
