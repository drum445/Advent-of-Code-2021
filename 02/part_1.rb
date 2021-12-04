data = STDIN.map(&:chomp)

pos = {"x" => 0, "y" => 0}

data.each do |line|
    cmd = line.split(" ")
    action = cmd[0]
    x = cmd[1].to_i

    case cmd[0]
    when "forward"
        pos["x"] += x
    when "up"
        pos["y"] -= x
    when "down"
        pos["y"] += x
    end
end

p pos
p pos["x"] * pos["y"]
