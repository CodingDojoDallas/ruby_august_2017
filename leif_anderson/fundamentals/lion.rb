=begin
  lion.rb leif anderson 8/1/17
=end
require_relative 'mammal'

class Lion < Mammal
  def initialize
    @health = 170
  end
  def fly
    @health -= 10
    self
  end
  def attack_town
    @health -=50
    p 'Your town is ugly!'
    self
  end
  def eat_ninja
    @health += 20
    p 'Mmmm, tasty ninja ...'
    self
  end
  def display_health
    p 'Hear me roar!'
    super
    self
  end
end

Simba = Lion.new
Simba.attack_town.attack_town.attack_town.eat_ninja.eat_ninja.fly.fly.display_health
