def sorted_insert(array, add)
    for i in 0..array.size-2
        if array[add].to_i < array[i].to_i
            array[i], array[add] = array[add], array[i]
        end
    end
    puts  array.join(', ')
end

#gestiond d'erreur
(puts "error"; exit) if ARGV[0] == nil

#parsing
array = ARGV
last = ARGV.size-1

#resolution
result = sorted_insert(array, last)

#affichage
result





=begin Créez un programme qui ajoute à une liste d’entiers triée un nouvel entier tout en gardant la liste triée dans l’ordre croissant. Le dernier argument est l’élément à ajouter.

Utilisez une fonction de ce genre (selon votre langage) :
sorted_insert(array, new_element) {
	# your algo
	return (new_array)
}


Exemples d’utilisation :
$> ruby exo.rb 1 3 4 2
1 2 3 4

$> ruby exo.rb 10 20 30 40 50 60 70 90 33
10 20 30 33 40 50 60 70 90


Afficher error et quitter le programme en cas de problèmes d’arguments.
=end