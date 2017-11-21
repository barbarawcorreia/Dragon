require_relative './dragon'
class Blue_dragon < Dragon
    def initialize name, owner_name
        super(name,owner_name)
    end

    def swim
        puts "You swim #{@name}"
    end
end
