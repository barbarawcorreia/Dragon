class Dragon
  attr_accessor :name,:owner_name,:stuff_in_intestine,:stuff_in_belly,:asleep

  def initialize name,owner_name #create a baby dragon when he is ..
    @name = name
    @owner_name = owner_name
    @asleep = false
    @stuff_in_belly = 10 # He's full.
    @stuff_in_intestine = 0 # He does not need to go
    puts "#{@name} is born."
  end

  def feed
    puts "You feed #{@name}."
    @stuff_in_belly = 10
    #Move food from belly to instestine.
    @stuff_in_belly = @stuff_in_belly - 1
    @stuff_in_intestine = @stuff_in_intestine + 1
    #Feed to much
    if @stuff_in_intestine >= 10
      @stuff_in_intestine = 0
      puts "Whoops! #{@name} had an accident..."
    end
  end

  def rock
    puts "You rock #{@name} gently."
    @asleep = true
    puts 'He briefly dozes off...'
    if @asleep
      @asleep = false
      puts '...but wakes when you stop.'
    end
  end

  def put_to_bed
    puts "You put #{@name} to bed."
    @asleep = true
    3.times do
      if @asleep
        puts "#{@name} snores,filling the room with smoke.\n\n"
      end
    end
    if @asleep
      @asleep = false
      puts "#{@name} wakes up slowly."
      if @stuff_in_belly == 0
        puts "Estou com fome..Vamos comer?"
        puts "Pressione 1 para me alimentar..."
      end
    end
  end

  def walk
    puts "You walk"
    @stuff_in_belly = 0
  end

  def toss
    puts "You toss #{@name} up into the air."
    #Toss with full intestine
    if @stuff_in_intestine >= 10
      @stuff_in_intestine = 0
      puts "Whoops! #{@name} had an accident..."
    end
  end

  def rock
    puts "You rock #{@name} gently."
    @asleep = true
    puts 'He briefly dozes off...'
    if @asleep
      @asleep = false
      puts '...but wakes when you stop.'
    end
  end

  def menu
    puts
    puts '1- Feed'
    puts '2- walk'
    puts '3- Put to bed'
    puts '4- Rock'
    puts '5- Toss'
    puts '#- Pressione outras teclas para sair.'
    puts
  end

  def die(msg)
    puts msg
    exit
  end

  def recursivo(acao)
    case acao
    when "1"
      feed
      puts 'Estou cheinho..Preciso relaxar!'
      menu
      loop do
        puts 'Pressione 4 para que eu possa cochilar..'
        acao = gets.chomp
        break if (acao == "4")
      end
      recursivo(acao)
    when "2"
      walk
      menu
      puts 'Estou com cansado..Preciso de descanso!'
      loop do
        puts "Pressione 3 para descansarmos juntos!"
        acao = gets.chomp
        break if (acao == "3")
      end
      recursivo(acao)
    when "3"
      put_to_bed
      # puts "E agora o que iremos fazer #{@dono}?"
      puts menu
      acao = gets.chomp
      recursivo(acao)
    when "4"
      rock
      puts 'E agora o que iremos fazer ?'
      puts menu
      acao = gets.chomp
      recursivo(acao)
    when "5"
      toss
      puts "Me diverti muito com você #{@dono}"
      puts 'E agora o que iremos fazer ?'
      puts menu
      acao = gets.chomp
      recursivo(acao)
    else
      die("Your Baby Dragon is going away")
    end
  end

  # private #It will be only accessed by instances from this class

  # def hungry?
  #   #true or false
  #   @stuff_in_belly <= 2
  # end

  # def poopy?
  #   @stuff_in_intestine >= 8
  # end

  # def passage_of_time
  #   if @stuff_in_belly > 0
  #     #Move food from belly to instestine.
  #     @stuff_in_belly = @stuff_in_belly - 1
  #     @stuff_in_intestine = @stuff_in_intestine + 1
  #   else
  #     if @asleep
  #       @asleep = false
  #       puts 'He wakes up suddenly!'
  #     end
  #     puts "#{@name} is starving! In desperation, he ate YOU!!!"
  #     exit #This quits the program.
  #   end

  #   if @stuff_in_intestine >= 10
  #     @stuff_in_intestine = 0
  #     puts "Whoops! #{@name} had an accident..."
  #   end

  #   if hungry?
  #     if @asleep
  #       @asleep = false
  #       puts 'He wakes up suddenly!'
  #     end
  #     puts "#{@name}'s stomach grumbles... "
  #   end

  #   if poopy?
  #     if @asleep
  #       @asleep = false
  #       puts 'He wakes up suddenly!'
  #     end
  #     puts "#{@name} does the potty dance..."
  #   end
  # end
end
