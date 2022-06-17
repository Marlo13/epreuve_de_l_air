def ma_fonction(array_de_strings, string)
    for i in 0..array_de_strings.size-2
        if !array_de_strings[i].downcase.include?(string.downcase)
            print array_de_strings[i], " "
        end
    end
    puts ""
end

#gestion d'erreur
(puts "error"; exit) if ARGV[0] == nil

#parsing
arr = ARGV
cut = ARGV.last

#resolution
result = ma_fonction(arr,cut)

#affichage
result





=begin Créez un programme qui supprime d’un tableau tous les éléments qui ne contiennent pas une autre chaîne de caractères.

Utilisez une fonction de ce genre (selon votre langage) :
ma_fonction(array_de_strings, string) {
	# votre algorithme
	return (nouvel_array_de_strings)
}


Exemples d’utilisation :
$> python exo.py "Michel" "Albert" "Thérèse" "Benoit" "t"
Michel

$> python exo.py “Michel” “Albert” “Thérèse” “Benoit” “a”
Michel, Thérèse, Benoit



Afficher error et quitter le programme en cas de problèmes d’arguments.
=end