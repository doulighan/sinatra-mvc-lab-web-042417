class PigLatinizer
  attr_accessor :text
  VOWELS = %w(a e i o u A E I O U)

  def to_pig_latin(text)
    out = []
    text.split(" ").each do |word| 
      out << self.piglatinize(word)
    end
    out.join(" ")
  end
  
  def piglatinize(word)
    if VOWELS.include?(word[0])
      word + "way"
    else
      split = word.partition(/[aeiou]/)
      split[1] + split[2] + split[0] + "ay"
    end
  end

end