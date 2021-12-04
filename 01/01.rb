data = STDIN.map {|line| line.chomp.to_i}

p data.each_with_index.map { |d, i| 1 if d > data[i-1]; }.compact.size
