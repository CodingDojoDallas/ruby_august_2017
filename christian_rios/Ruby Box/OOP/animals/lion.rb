require_relative 'mammal'

class Lion < Mammal
  def initialize
    @animal_health = 170
  end

  def fly
    @animal_health -= 10
    self
  end

  def attack_town
    @animal_health -= 50
    self
  end

  def eat_humans
    @animal_health += 50
    self
  end

  def display_health
    puts "This is a lion"
    super
  end
end

Alex = Lion.new
Alex.attack_town.attack_town.attack_town.eat_humans.eat_humans.fly.fly.display_health
