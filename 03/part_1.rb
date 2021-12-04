data = STDIN.map(&:chomp)

positions = data[0].size

gamma = ""
epsilon = ""

(0...positions).each do |pos|
	bits = data.map {|line| line[pos] }
	gamma += bits.max_by { |i| bits.count(i) }
	epsilon += bits.min_by { |i| bits.count(i) }
end

p gamma.to_i(2) * epsilon.to_i(2)
