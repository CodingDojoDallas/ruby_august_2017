=begin
  wizards.rb leif anderson 8/1/17
=end
require_relative 'human'

class Wizard < Human
  def initialize name
    super name
    @int = 25
    @hp = 50
  end
  def heal
    p "[#{@name}]: You heal yourself for 10 hit points!"
    @hp += 10
  end
  def fireball mob, dmg
    p "[#{@name}]: You hit #{mob.name} with a FIREBALL for #{dmg} damange!"
    mob.take_hit self, dmg
  end
end

class Ninja < Human
  def initialize name
    super name
    @stl = 175
  end
  def steal mob, dmg
    p "[#{@name}]: You steal #{dmg} health from #{mob.name} with your Ninja power!"
    mob.take_hit self, dmg
    @hp += dmg
  end
  def run_away
    p "[#{@name}]: You escape to the shadows, but the effort drains you 15 hit points..."
    @hp -= 15
  end
end

class Samurai < Human
  @@instances = []
  def initialize name
    super name
    @hp = 200
    @@instances << self
  end
  def how_many
    @@instances.count
  end
  def death_blow mob
    dmg = mob.hp
    p "[#{@name}]: You kill #{mob.name} with DEATH BLOW for #{dmg} damage!"
    mob.take_hit self, dmg
  end
  def meditate
    p "[#{@name}]: You meditate, regaining #{200-@hp} hit points ..."
    @hp = 200
  end
end

Authman = Wizard.new "Authman"
Cody = Ninja.new "Cody"
Matt = Samurai.new "Matt"

Authman.display_hp
Cody.display_hp
Matt.display_hp
Authman.attack Matt, 1
Cody.attack Matt, 2
Matt.display_hp
Matt.meditate
Cody.run_away
Cody.run_away
Cody.display_hp
Cody.steal Authman, 7
Authman.fireball Cody, 50
Authman.heal
Authman.display_hp
Matt.death_blow Cody
Matt.death_blow Authman
Authman.display_hp
Cody.display_hp
Matt.display_hp
Phil = Samurai.new "Phil"
Phil.display_hp
p "There are #{Matt.how_many} Samurai at the Dojo."
