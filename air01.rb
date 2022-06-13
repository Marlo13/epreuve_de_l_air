def cut(cut_string, separator)
    arr = cut_string.split(' ')
    newtab = []
    arr.each do |string| 
        if string != separator
            newtab << string
        elsif string == separator 
            puts newtab.join(' ')
            newtab = []
        end
    end
    puts newtab.join(' ')
end


#gestion d'erreur
(puts "error"; exit) if ARGV[0] == nil


#parsing
arr = ARGV[0]
separator = ARGV[1]
#resolution
result = cut(arr, separator)
#affichage
result

# tenter d utiliser map
#tant que y a pas le separateur mettre dans un tableau qd il est la afficher puis reset tableau
=begin Créez un programme qui découpe une chaîne de caractères en tableau en fonction du séparateur donné en 2e argument.

Votre programme devra intégrer une fonction prototypée comme ceci :
ma_fonction(string_à_couper, string_séparateur) { // syntaxe selon votre langage
	# votre algorithme
	return (tableau)
}


Exemples d’utilisation :
$> python exo.py “Crevette magique dans la mer des étoiles” “la”
Crevette magique dans 
 mer des étoiles

Afficher error et quitter le programme en cas de problèmes d’arguments.
=end