# One way to do this

# def count_elements(array)
#   new_hash = {}
#   array.uniq.each do |element|
#     # for each element in array
#     new_hash[element] = array.count(element)
#     # new_hash[element] represents the hash key
#     # = RHS, assigns the value to the key
#     # RHS = array.count(element) i.e. the value is the count of elements in the array
#   end
#   new_hash   # return the new hash at end of each method finished iterating
#
# end

def count_elements(array)
   x = array.each_with_object(Hash.new(0)) { |animal, count| count[animal] += 1 }

      # the Hash.new(0) creates a new hash with an inital count of 0 ...?
      # Hash.new is keyword stuff, can't just change
  return x

      # don't need x = or the return x bits
end





=begin             *********** TEST  ***********
animals = ['tortoise', 'aye-aye', 'honey badger', 'aye-aye', 'tortoise', 'tortoise']
count_elements(animals)
# => {'tortoise' => 3, 'aye-aye' => 2, 'honey badger' => 1}

=end
