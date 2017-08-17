=begin
    human.py leif anderson 8/1/17
=end

class Human
  attr_accessor :name
  attr_accessor :str
  attr_accessor :int
  attr_accessor :stl
  attr_accessor :hp

  def initialize name
    @name = name
    @str = 3
    @int = 3
    @stl = 3
    @hp = 100
  end
  def attack mob, dmg
    if mob.class.ancestors.include? Human
      p "[#{@name}]: You strike #{mob.name} for #{dmg} damange!"
      mob.take_hit self, dmg
    end
  end
  def take_hit mob, dmg
    p "[#{@name}]: #{mob.name} hit you for #{dmg} damage!"
    @hp -= dmg
  end
  def display_hp
    p "[#{@name}] has #{@hp} hit points."
  end
end

 Hercules = Human.new "Hercules"
 Gilgamesh = Human.new "Gilgamesh"

Gilgamesh.attack Hercules, 20
Hercules.attack Gilgamesh, 30
