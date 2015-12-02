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

What are the differences between the two different hash syntaxes shown in the state_data file?
  The system with the rockets uses strings as the keys for each value while the other notation is based around symbols for each key. 
What does require_relative do? How is it different from require?
  It means that another file must be present for the code in this file to run. It differs from require because it will begin its search for the other file in the directory that the initializing file is in. That means it starts its search in a location relative to the file that asked for the required file. By contrast, require by itself will begin its search for the required file in the directory that contains the ruby intall.
What are some ways to iterate through a hash?
  You can use each or variations of each that will target the key or value or both parts of each item in the hash. In each case, what you are accessing with the variables you create between the pipes that are part of the code block will change, so you need to understand how the method you choose will reference those variables.
When refactoring virus_effects, what stood out to you about the variables, if anything?
  The instance variables were not being used efficiently. Because they are accessible throughout the entire cl
What concept did you most solidify in this challenge?