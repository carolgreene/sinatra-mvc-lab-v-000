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
      first_split = word.split(/([aeiouAEIOU].*)/)[0]
      second_split = word.split(/([aeiouAEIOU].*)/)[1]
      if first_split == ""
        second_split + "way"
      else
        second_split + first_split + "ay"
      end
    end
  end
end
