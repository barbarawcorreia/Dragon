require_relative './dragon'
class Red_dragon < Dragon
  def initialize name, owner_name
    super(name,owner_name)
  end

  def spit_fire
    puts "You are spitting fire #{@name}"
  end

  def feed
    puts "You feed #{@name}."
    @stuff_in_belly = 5
    #Move food from belly to instestine.
    @stuff_in_belly = @stuff_in_belly - 1
    @stuff_in_intestine = @stuff_in_intestine + 1
    #Feed to much
    if @stuff_in_intestine >= 10
      @stuff_in_intestine = 0
      puts "Whoops! #{@name} had an accident..."
    end
  end

  def toss
    puts "You toss #{@name} up into the air."
    #Toss with full intestine
    if @stuff_in_intestine >= 10
      @stuff_in_intestine = 0
      puts "Whoops! #{@name} had an accident..."
    end
  end

end
