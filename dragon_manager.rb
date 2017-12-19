class DragonManager

  def initialize(dragon)
    @dragon = dragon
  end

  def put_to_bed
    @dragon.sleep
  end
end