def ma_rotation(array) # dans le tableau faire passer 0 de 1 en 1 jusqu a la fin 0 et 1 switch 1 et 2 switch 2 et 3 swicth ect
    a = 0
    for i in 1..array.size-1
        array[i], array[a] = array[a], array[i]
        a+=1
    end
   puts array.join(' ')
end

#gestion d'erreur
(puts "error"; exit) if ARGV[0] == nil

#parsing 
tab = ARGV

#resolution
result = ma_rotation(tab)

#affichage
result

=begin Créez un programme qui décale tous les éléments d’un tableau vers la gauche. Le premier élément devient le dernier à chaque rotation.

Utilisez une fonction de ce genre (selon votre langage) :
ma_rotation(array) {
	# votre algorithme
	return (new_array)
}


Exemples d’utilisation :
$> python exo.py “Michel” “Albert” “Thérèse” “Benoit”
Albert, Thérèse, Benoit, Michel


Afficher error et quitter le programme en cas de problèmes d’arguments.
=end