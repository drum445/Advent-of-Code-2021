data = File.readlines("input.txt", chomp: true)

p data.each_with_index.map { |d, i| 1 if d.to_i > data[i-1].to_i; }.compact.size
