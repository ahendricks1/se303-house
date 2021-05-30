class House

  def subjects
    [
      "horse and the hound and the horn",
      "farmer sowing his corn",
      "rooster",
      "priest all shaven and shorn",
      "man all tattered and torn",
      "maiden all forlorn",
      "cow with the crumpled horn",
      "dog",
      "cat",
      "rat",
      "malt"
    ]
  end

  def verbs
    "belonged to",
    "kept",
    "woke",
    "married",
    "kissed",
    "milked",
    "tossed",
    "worried",
    "killed",
    "ate",
    "lay in"
  end

  def phrases
    [
      "the horse and the hound and the horn that belonged to ",
      "the farmer sowing his corn that kept ",
      "the rooster that crowed in the morn that woke ",
      "the priest all shaven and shorn that married ",
      "the man all tattered and torn that kissed ",
      "the maiden all forlorn that milked ",
      "the cow with the crumpled horn that tossed ",
      "the dog that worried ",
      "the cat that killed ",
      "the rat that ate ",
      "the malt that lay in ",
    ]
  end

  def prefix
    "This is"
  end

  def line(number)
    "#{prefix} #{phrases.last(number - 1).join("")}the house that Jack built.\n"
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

  def phrases
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

  def phrases
    @random_template.phrases
  end

end