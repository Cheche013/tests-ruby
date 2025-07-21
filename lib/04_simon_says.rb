
# Cette fonction renvoie simplement le mot qu'on lui donne.
def echo(word)
  word  # On retourne le mot tel quel
end

# Cette fonction met le mot en majuscules.
def shout(word)
  word.upcase  # La méthode .upcase transforme tout en MAJUSCULES
end

# Cette fonction répète un mot plusieurs fois.
# Par défaut, n = 2 (si on ne précise rien, le mot est répété 2 fois).
def repeat(word, n=2)
  ([word] * n).join(" ") 
  # [word] * n crée un tableau contenant 'word' répété n fois
  # Exemple : [word] * 3 => ["hello", "hello", "hello"]
  # .join(" ") colle les mots ensemble avec un espace : "hello hello hello"
end

# Cette fonction retourne les n premières lettres d’un mot.
def start_of_word(word, n)
  word[0...n] 
  # [0...n] veut dire "du caractère 0 jusqu'à n (non inclus)"
  # Exemple : "bonjour"[0...3] => "bon"
end

# Cette fonction retourne le premier mot d'une phrase.
def first_word(sentence)
  sentence.split.first
  

# Cette fonction met une phrase en mode "Titre" (première lettre des mots en majuscule),
# mais ne met pas en majuscule certains petits mots (and, or, the, etc.), sauf s'ils sont en début de phrase.
def titleize(sentence)
  little_words = ["and", "or", "the", "to", "the", "a", "but"]
  # Liste des petits mots qu'on ne veut pas capitaliser au milieu de la phrase
  
  words = sentence.split
  # On découpe la phrase en mots pour les traiter un par un
  
  words.map!.with_index do |w, i|
    # map! parcourt chaque mot et le remplace par la version transformée
    # with_index donne aussi l'indice i (position dans la phrase)
    
    if i == 0 || !little_words.include?(w)
      # Si c'est le premier mot (i == 0)
      # OU si le mot n'est pas dans la liste little_words
      w.capitalize  # On met la 1ère lettre en majuscule
    else
      w  # Sinon on laisse le mot tel quel
    end
  end
  
  words.join(" ")
  # On recolle les mots avec des espaces pour refaire une phrase
end
