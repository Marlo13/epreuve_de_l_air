def concat(array_de_strings, separateur)
    arr = ""
    array_de_strings.each do |element|
        arr << (element + separateur)
    end
    return arr
end

#gestion d'erreur
(puts "error"; exit) if ARGV[0] == nil

#parsing
arr = ARGV
separator = ARGV.pop
#resolution
result = concat(arr, separator)
#affichage
puts result



=begin Créez un programme qui transforme un tableau de chaînes de caractères en une seule chaîne de caractères. Espacés d’un séparateur donné en dernier argument au programme.

Utilisez une fonction de ce genre (selon votre langage) :
ma_fonction(array_de_strings, separateur) {
	# votre algorithme
	return (string)
}

"je" "suis" "la" " "
Exemples d’utilisation :
$> python exo.py "je" teste" "des" "trucs" " " 
Je teste des trucs


Afficher error et quitter le programme en cas de problèmes d’arguments.
=end