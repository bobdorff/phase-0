# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative

# => Require relative means the program requires a separate file to run, in the case of require relative, the program will look in the directory relative to where the original ruby file is. With relative, the program will look through the load path. 



require_relative 'state_data'

class VirusPredictor
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
  def virus_effects
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
      speed = 0.5
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
      speed = 1
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
      speed = 1.5
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
      speed = 2
    else
      number_of_deaths = (@population * 0.05).floor
      speed = 2.5
    end
    print "#{@state} will lose #{number_of_deaths} people in this outbreak"
    puts " and will spread across the state in #{speed} months.\n\n"
  end
  end

STATE_DATA.each do |state, pop|
  #state is the key from state_data hash
  VirusPredictor.new(state, pop[:population_density], pop[:population]).virus_effects
end

# Reflection Section