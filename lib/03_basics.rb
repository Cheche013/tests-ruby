
# 1. Trouve le plus grand nombre parmi a, b, c
def who_is_bigger(a, b, c)
  return "nil detected" if a.nil? || b.nil? || c.nil?

  max = [a, b, c].max
  if max == a
    "a is bigger"
  elsif max == b
    "b is bigger"
  else
    "c is bigger"
  end
end

# 2. Inverse, met en majuscules, et enlève les lettres L, T et A
def reverse_upcase_noLTA(string)
  string.reverse.upcase.delete("LTA")
end

# 3. Vérifie si 42 est présent dans le tableau
def array_42(array)
  array.include?(42)
end

# 4. Transforme le tableau selon des règles
#    - Multiplie chaque nombre par 2
#    - Enlève les multiples de 3
#    - Supprime les doublons
#    - Trie par ordre croissant
def magic_array(array)
  array.flatten.map { |n| n * 2 }.reject { |n| n % 3 == 0 }.uniq.sort
end
