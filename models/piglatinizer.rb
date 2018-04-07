require 'pry'

class  PigLatinizer


  def to_pig_latin(phrase)
    words = phrase.split(" ")
    words.map! {|word| piglatinize(word)}.join(" ")
  end

  def piglatinize(word)
    if word.include?(" ")
      to_pig_latin(word)
    else
      vowels = %w{a e i o u}
      word.each_char do |chr|
        index = word.index(chr)
        if index != 0 && vowels.include?(chr.downcase)
          consonants = word.slice!(0..index-1)
          return word + consonants + "ay"
        elsif index == 0 && vowels.include?(chr.downcase)
          return word + "way"
        end
      end
    end
  end
end
