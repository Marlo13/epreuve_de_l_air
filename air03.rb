
def intru(arr)
    second = 0
    
    while second < arr.size-2
        
        for first in second+1..arr.size    
            if arr[second] == arr[first]
                arr.delete_at(first) ; arr.delete_at(second)
                second = -1
            end
        end
        second += 1
    end
    puts arr
end


#gestion d'erreur
(puts "error"; exit) if ARGV[0] == nil

#parsing
arr = ARGV

#resolution
result = intru(arr)

#affichage
result



=begin Créez un programme qui retourne la valeur d’une liste qui n’a pas de paire.


Exemples d’utilisation :
$> python exo.py 1 2 3 4 5 4 3 2 1
5

$> python exo.py bonjour monsieur bonjour
monsieur


Afficher error et quitter le programme en cas de problèmes d’arguments. 
=end
