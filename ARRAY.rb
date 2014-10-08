#declaring array of hashes
print Array.new(5) { Hash.new } #[{}, {}, {}, {}, {}]
print "\n"
#another way of creating an array
print Array({:a => "a", :b => "b"}) #[[:a, "a"], [:b, "b"]]
print "\n"

arr = [1, 2, 3, 4, 5, 6]
puts arr.at(-1)                    #6
puts arr.fetch(100, "oops")	   #oops
#puts arr.fetch(100)
print arr.take(3)		#[1, 2, 3]
print "\n"
print arr.drop(3)		#[4, 5, 6]
print "\n"
print arr			#[1, 2, 3, 4, 5, 6]
print "\n"
puts arr.empty?			#false
puts arr.include?(3)		#true
arr << 6
print arr			#[1, 2, 3, 4, 5, 6, 6]
print "\n"
arr.push(8)
arr.unshift(100)
print arr			#[100, 1, 2, 3, 4, 5, 6, 6, 8]
print "\n"

print arr.shift			#100
print arr			#[1, 2, 3, 4, 5, 6, 6, 8]
print "\n"

arr = ['foo', 0, nil, 'bar', 7, 'baz', nil]
print arr.compact		#["foo", 0, "bar", 7, "baz"]
print arr			#["foo", 0, nil, "bar", 7, "baz", nil]
print "\n"

print arr.compact!		#["foo", 0, "bar", 7, "baz"]
print arr			#["foo", 0, "bar", 7, "baz"]
print "\n"

#like above uniq! will remove duplicate from actual array
arr = [2, 5, 6, 556, 6, 6, 8, 9, 0, 123, 556]
print arr.uniq			#[2, 5, 6, 556, 8, 9, 0, 123]

a = [ "a", "b", "c", "d" ]
print a.collect { |x| x + "!" } #["a!", "b!", "c!", "d!"]
print "\n"

print a.map.with_index{ |x, i| x * i } #["", "b", "cc", "ddd"]
print "\n"

#returns all combination fo length 2
a = [1, 2, 3, 4]
print a.combination(2).to_a   #[[1, 2], [1, 3], [1, 4], [2, 3], [2, 4], [3, 4]]
print "\n"

a=[[1, 2, 3], [4, 5, 6, [7, 8]], 9, 10]
print a.flatten		#[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
print "\n"

print [ "a", "b", "c" ].join("-") 	#a-b-c
print "\n"

a = [1, 2, 3]
print a.permutation(3).to_a	#[[1, 2, 3], [1, 3, 2], [2, 1, 3], [2, 3, 1], [3, 1, 2], [3, 2, 1]]
print "\n"

print [1,2].product([3,4],[5,6]) #[[1, 3, 5], [1, 3, 6], [1, 4, 5], [1, 4, 6], [2, 3, 5], [2, 3, 6], [2, 4, 5], [2, 4, 6]]
print "\n"

