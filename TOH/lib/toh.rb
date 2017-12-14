class TowersOfHanoi
  attr_accessor :towers

  def initialize
    @towers = [[3, 2, 1], [], []]
  end

  def move(st, en)
    if @towers[en][-1] && @towers[st][-1] > @towers[en][-1]
      raise "Can't place a larger disc on a smaller disc"
    end

    @towers[en] << @towers[st].pop
  end

  def won?
    @towers[1].length == 3 || @towers[2].length == 3
  end

  def prompt
    puts "Which tower will you move from?"
    pos1 = Integer(gets.chomp)

    puts "Which tower will you move to?"
    pos2 = Integer(gets.chomp)

    [pos1, pos2]
  end

  def play
    pos = []
    system("clear")
    display

    until won?
      pos = prompt
      move(pos[0], pos[1])
      system("clear")
      display
    end

    puts "Congratulations! You won!"
  end

  def display
    2.downto(0) do |idx|
      print "#{@towers[0][idx]}         #{@towers[1][idx]}           #{@towers[2][idx]}"
      puts " "
    end
  end
end

game = TowersOfHanoi.new
game.play
