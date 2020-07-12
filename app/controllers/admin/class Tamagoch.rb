class Tamagoch
before_action :time, only: [eat, go_to_play, go_to_toilet]
def initialize

sitost = 0
srat = 0
smert = 0
@vosrast = 0
end

def eat
	@sitost += 2
end

def go_to_toilet
	
end

def go_to_play
end

private

def time
@vosrast += 1
@sitost -= 1
end

def die
	if @vosrast == 10
	yield
	elsif @sitost == 0
	yield
	#close programm blin
end

def obosralsya
end

def blevanul
end

Tamagich_is_die {|puts| puts "Your Tamagoch is die"}

end