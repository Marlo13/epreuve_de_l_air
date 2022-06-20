def pyramide(arr)# a pour stop a la bonne ligne, b pour le caractere
    caracter = arr[0]
    b=1
    a=1
    n = " "
    nombre = arr[1]
    while a <= nombre.to_i
        decale = nombre.to_i - a
        
       decale.times{|i| print n}
       b.times{|j| print caracter}
       puts
       
        b+=2
        a+=1
    end
end


#gestion d'erreur
(puts "error"; exit) if ARGV.size != 2

#parsing 
tab = ARGV

#resolution
result = pyramide(tab)

#affichage
result




# afficher espace a decale de fois apres afficher caracter à a.times




=begin Afficher un escalier constitué d’un caractère et d’un nombre d’étages donné en paramètre.


Exemples d’utilisation :
$> ruby exo.rb O 5
    O
   OOO
  OOOOO
 OOOOOOO
OOOOOOOOO


Afficher error et quitter le programme en cas de problèmes d’arguments.
=end