require 'pry'

class  PigLatinizer


  #attr_reader :words

  #def split_phrase(phrase)
    #new_phrase = phrase.split(" ")
  #end

  def to_pig_latin(phrase)
    words = phrase.split(" ")
    words.map! {|word| piglatinize(word)}.join(" ")
    #words.join(" ")
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
