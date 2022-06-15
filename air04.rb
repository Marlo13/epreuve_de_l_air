
def intru(arr) 
    for element in 0..arr.size-1
        i = element + 1
        if arr[element] != arr[i]
            print arr[element]
        end
    end
    puts
end

#gestion d'erreur
(puts "error"; exit) if ARGV.size != 1

#parsing
arr = ARGV[0]

#resolution
result = intru(arr)

#affichage
result




=begin Créez un programme qui affiche une chaîne de caractères en évitant les caractères identiques adjacents.


Exemples d’utilisation :
$> python exo.py “Hello milady,   bien ou quoi ??”
Helo milady, bien ou quoi ?


Afficher error et quitter le programme en cas de problèmes d’arguments.
first = 0
second = 1

while second < arr.size
    print arr[first], arr[second], '.!.'
    if arr[first] == arr[second]
        arr.delete_at(second)
        
    end
    if arr[first] == " " && arr[second] == " "
        arr.delete_at(second)
    end
    
    
    first += 1
    second += 1
end
=end