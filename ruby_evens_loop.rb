# # Implement question #5 (5. Write a function in JavaScript that takes in a number n
#  and returns the first n even numbers) again in Ruby in two ways:
# #     a. Using a loop
# #     b. Using recursion
# # Benchmark the two solutions (include your code for the benchmarking).
# Which one of your solutions is faster?

def return_evens(n)
  num = n*2
for i in 1..num
  if i % 2 == 0
  puts i
end
end
end

return_evens(12)
