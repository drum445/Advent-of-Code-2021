data = STDIN.map {|line| line.chomp.to_i}

increases = 0
prev = nil
data.each_with_index do |_, i|
	window = [data[i], data[i+1], data[i+2]]

	break if window.include?(nil)

	increases += 1 if prev && window.sum > prev
	prev = window.sum
end

p increases
