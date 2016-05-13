# twoSum(arr, num)
# arr is array of unique integers=> print all pairs in arr that sum up to num
# 
# sumThree([4,8,10,-4,2,1,6, -3], 9)
# 8,4,-3
# 2,1,6
# 10,2,-3
#
#

def three_sum(arr, num)
	len = arr.size() - 1
	pairs = []
	
	(0..len).each do |i|
		val = num - arr[i]
		two_sum(arr, val, arr[i], pairs)
	end
	
	pairs.each {|p| puts p}

end

def two_sum(arr, num, current, pairs)
	
	len = arr.size() - 1
	# put array as keys of the map
	# arr_map = arr.inject({}) {|h,v| h[v] = 1; h;}

	# (0..len).each do |i|
	# 	val = num - arr[i]
	# 	# has_key?
	# 	if (arr_map[val] == 1)
	# 		puts arr[i].to_s + ", " + val.to_s
	# 	end
	# end

	(0..len-1).each do |i|
		(1..len).each do |j|
			if (arr[i] + arr[j] == num)
				pairs << arr[i].to_s + ", " + arr[j].to_s + ", " + current.to_s
			end
		end
	end

end

j = i + 1 
z = i + 2
return three_sum(arr[i], arr[j], arr[z], num)
