class House

  def line(number)
    case number
    when 1
      default_verse
    end
  end

  def default_verse
    return "This is the house that Jack built.\n"
  end
end