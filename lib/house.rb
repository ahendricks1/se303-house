class House

  def phrases
    [
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

  def lines(number)
    "This is the #{phrases.last(number).join(" ")}\n"
  end

  def line(number)
    case number
    when 1
      lines(number)
    when 2
      lines(number)
    when 3
      lines(number)
    when 4
      lines(number)
    when 5
      lines(number)
    when 6
      lines(number)
    when 7
      lines(number)
    when 8
      lines(number)
    when 9
      lines(number)
    when 10
      lines(number)
    when 11
      "This is the farmer sowing his corn that kept the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
    when 12
      "This is the horse and the hound and the horn that belonged to the farmer sowing his corn that kept the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
    end
  end

  def recite
    1.upto(12).collect { |number| line(number) }.join("\n")
  end 
end