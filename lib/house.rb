class House

  def subjects
    [
      "",
      " the malt",
      " the rat",
      " the cat",
      " the dog",
      " the cow with the crumpled horn",
      " the maiden all forlorn",
      " the man all tattered and torn",
      " the priest all shaven and shorn",
      " the rooster that crowed in the morn",
      " the farmer sowing his corn",
      " the horse and the hound and the horn"
    ]
  end

  def verbs 
    [
      "",
      " that lay in",
      " that ate",
      " that killed",
      " that worried",
      " that tossed",
      " that milked",
      " that kissed",
      " that married",
      " that woke",
      " that kept",
      " that belonged to"
    ]
  end

  def prefix
    "This is"
  end

  def phrase(number)
    number.downto(1).collect { |i| subjects[i - 1]+verbs[i - 1] }.join("")
  end

  def line(number)
    "#{prefix}#{phrase(number)} the house that Jack built.\n"
  end

  def recite
    1.upto(12).collect { |number| line(number) }.join("\n")
  end 
end

class PirateHouse < House

  def prefix
    "Thar be"
  end
  
end

class RandomHouse < House

  def subjects
    super.shuffle!
  end

  def verbs
    super.shuffle!
  end

end

class RandomPirateHouse < House

  def initialize(pirate_template, random_template)
    @pirate_template = pirate_template
    @random_template = random_template
  end

  def prefix
    @pirate_template.prefix
  end

  def subjects
    @random_template.subjects
  end

  def verbs
    @random_template.verbs
  end
end