def displayNxN(n)
	(1..n).each do |i|
		(1..n).each do |j|
			print (i*j).to_s + " "
		end
		puts " "
	end
end
