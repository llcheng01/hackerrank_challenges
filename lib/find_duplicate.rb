def find_duplicate(list)
	list.sort!
	prev = list[0]
	count = 0
  len = list.size() - 1 	
	(1..len).each do |i|
		puts prev
		if (prev == i)
			count = count + 1
		else
			prev = list[i]
		end
	end
	count
end
