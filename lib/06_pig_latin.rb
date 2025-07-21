def translate(sentence)
  words = sentence.split(" ")
  words.map! do |w|
    if w.match?(/\A[aeiou]/)
      w + "ay"
    else
      # On déplace jusqu'à la première voyelle, mais "qu" est traité comme un bloc
      if w.include?("qu")
        qu_index = w.index("qu") + 2
        w = w[qu_index..-1] + w[0...qu_index] + "ay"
      else
        consonant = w.match(/\A[^aeiou]+/)[0]
        w = w[consonant.size..-1] + consonant + "ay"
      end
    end
  end
  words.join(" ")
end

