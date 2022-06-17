def sorted_array(arr)
    array1 =[]
    array2 =[]
    h = 0
    for i in 0..arr.size-1    #crée le premier tableau
        break if arr[i] == "fusion"
        array1 << arr[i]
    end
    while arr[h] != "fusion" # efface la partie du premier tableau
        arr.delete_at(h)
    end
    for j in 1..arr.size-1   #crée le deuxieme tableau
        array2 << arr[j]
    end
sorted_fusion(array1, array2)
end
def sorted_fusion(array1, array2) #replacer dans un tableau les nombre trier des deux tableaux
    array3 = []
    array4 = []
    a = 0
    b = 0
    array3.push(array1, array2)
    array4 = array3.join(' ')
    puts     array4.split(' ').sort.join(' ')

    # while (a <= array1.size) && (b <= array2.size)
    #  #p array1.size, array2.size, '!!'
    #  p a, b, '??'
    #     if array1[a].to_i > array2[b].to_i
    #         array3 << array2[b]
    #         b+=1
    #     elsif array1[a].to_i < array2[b].to_i
    #         array3 << array1[a]
    #         a+=1
    #     else array1[a].to_i == array2[b].to_i
    #         array3 << array1[a]
    #         array3 << array1[b]
    #         a+=1
    #         b+=1
    #     end
    #    #p array3
    # end
    # p array3
end
#gestion d'erreur
(puts "error"; exit) if ARGV[0] == nil

#parsing 
tab = ARGV

#resolution
result = sorted_array(tab)

#affichage
result



=begin Créez un programme qui fusionne deux listes d’entiers triées en les gardant triées, les deux listes seront séparées par un “fusion”.

Utilisez une fonction de ce genre (selon votre langage) :
sorted_fusion(array1, array2) {
	# your algo
	return (new_array)
}


Exemples d’utilisation :
$> ruby exo.rb 10 20 30 fusion 15 25 35
10 15 20 25 30 35


Afficher error et quitter le programme en cas de problèmes d’arguments.
=end