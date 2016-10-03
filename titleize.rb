# 7. Implement the following code in Ruby: Create a module called HelperMethods
# that include a method called `titleize` that does the following: it takes in a
# string and returns the string back after capitalizing each word in that string.
# For example if you pass to the method a string "hello world" you should get back
#  "Hello World". The methods should not capitalize the following words: in, the,
#  of, and, or, from.

 module HelperMethods

def titleize(str)

  final_arr = []
  no_caps = ['In', 'The','Of', 'And', 'Or', 'From']
myArray = str.split

myArray.each_with_index do |word,index|
    word.capitalize!
  if index > 0
       no_caps.each do |bad_word|
          if word == bad_word
              word.downcase!
              break
            end
          end
        end
      end
final_arr << myArray.join(" ")
 final_arr.join(" ")
end

end
include HelperMethods

# titleize("the lord of the rings and the philosopher in the dark")
# p HelperMethods.titleize()
