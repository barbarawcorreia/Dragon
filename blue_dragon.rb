require_relative './dragon'
class Blue_dragon < Dragon
  def initialize name, owner_name
    super(name,owner_name)
  end

  def swim
    puts "You swim #{@name}"
  end

  def feed
    puts "You feed #{@name}."
    @stuff_in_belly = 7
    #Move food from belly to instestine.
    @stuff_in_belly = @stuff_in_belly - 1
    @stuff_in_intestine = @stuff_in_intestine + 1
    #Feed to much
    if @stuff_in_intestine >= 10
      @stuff_in_intestine = 0
      puts "Whoops! #{@name} had an accident..."
    end
  end
end
