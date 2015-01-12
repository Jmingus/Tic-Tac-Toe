class Board
	def initialize
		@combos = [
			['a1','a2','a3'],
			['b1','b2','b3'],
			['c1','c2','c3'],
			['a1','b1','c1'],
			['a2','b2','c2'],
			['a3','b3','b3'],
			['a1','b2','c3'],
			['c1','b2','a3']
		]
		@spaces = {
			"a1"=>" ", "a2"=>" ","a3"=>" ",
			"b1"=>" ", "b2"=>" ","b3"=>" ",
			"c1"=>" ", "c2"=>" ","c3"=>" "
		}
		@player_one = 'X'
		@player_two = 'O'
	end

	def display
		
		puts " "
		puts "     a   b   c"
		puts " 1  #{@spaces[:a1]}   | #{@spaces[:a2]} | #{@spaces[:a3]}"
		puts "    ""----------"
		puts " 2  #{@spaces[:b1]}   | #{@spaces[:b2]} | #{@spaces[:b3]}"
		puts "    ""----------"
		puts " 3  #{@spaces[:c1]}   | #{@spaces[:c2]} | #{@spaces[:c3]}"
		puts ""
	end

	def play
		@count = 0
		while @count != 9
		display
		player_turn
		@count += 1
		puts "Welcome to Tic-tac-toe!"
		puts "It is Player #{player_turn} turn!\n"
		puts "Enter selection now!"
		player_move
		end

	end

	def player_turn
		@player_one = @count % 2 == 0 ? 'X' : 'O'
		@player_two = @player_one == 'X' ? 'O' : 'X'
	end

	def player_move
		input = gets.chomp.downcase
		if input.length == 2
			input_storage = input.split("")
			if (['a','b','c'].include? input_storage[0])
				if (['1','2','3'].include? input_storage[1])
					if @spaces[input] == " "
						if @spaces[input] = @player_one
							puts "#{@player_one} #{input.upcase}"
							display
						else @spaces[input] = @player_two
							puts "#{@player_two} #{input.upcase}"
							display
						end
					puts '-' * 10
					else wrong
					end	
				else wrong
				end
			else wrong
			end
		else wrong
		end
	end


	def wrong
		puts "Error"
	end
end

