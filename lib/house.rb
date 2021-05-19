class House

  def initialize
    @intro = "This is"
  end

  def phrases
    [
      "horse and the hound and the horn that belonged to the",
      "farmer sowing his corn that kept the",
      "rooster that crowed in the morn that woke the",
      "priest all shaven and shorn that married the",
      "man all tattered and torn that kissed the",
      "maiden all forlorn that milked the",
      "cow with the crumpled horn that tossed the",
      "dog that worried the",
      "cat that killed the",
      "rat that ate the",
      "malt that lay in the",
      "house that Jack built."
    ]

  end

  def line(number, pirate_mode=false)
    if pirate_mode
      @intro = "Thar be"
    end

    "#{@intro} the #{phrases.last(number).join(" ")}\n"
  end

  def recite
    1.upto(12).collect { |number| line(number) }.join("\n")
  end 
end