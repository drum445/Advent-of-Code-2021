data = File.readlines("input.txt", chomp: true)

data = data.map(&:to_i)

# part 1
p data.each_with_index.map { |d, i| 1 if d > data[i-1]; }.compact.size

# part 2
increases = 0
prev = nil
data.each_with_index do |_, i|
	window = [data[i], data[i+1], data[i+2]]

	break if window.include?(nil)

	increases += 1 if prev && window.sum > prev
	prev = window.sum
end

p increases
