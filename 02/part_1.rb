data = STDIN.map(&:chomp)

starting = {"x" => 0, "y" => 0}

dirs = {
	"forward" => proc {|i| starting["x"] += i},
	"up" => proc {|i| starting["y"] -= i},
	"down" => proc {|i| starting["y"] += i},
}

data.map { |d| cmd = d.split(" "); dirs[cmd[0]].call(cmd[1].to_i) }

p starting
p starting["x"] * starting["y"]
