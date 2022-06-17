def for_one(array)
    l = array.pop
    l = l.split('')
    operator = l[0]
    l = l.drop(1) # unshift(n) pour supprimer n index du tab en comencant par le debut
    number = l.join('')
    for i in array
        i = i.to_i
        d = i.send(operator.to_sym, number.to_i) #to_sym converti en symbol// send prend i en premier nombre premier parametre l operation et apres le nombre
        print d," "
    end
    puts
end

#gestion d'erreur
(puts "error"; exit) if ARGV[0] == nil
a=0
while a < ARGV.size
    (puts "error" ; exit) if !/\d/.match(ARGV[a])
    a+=1 end
#parsing
tableaux = ARGV
#resolution
result = for_one(tableaux)
#affichage
result


=begin Créez un programme qui est capable de reconnaître et de faire une opération (addition ou soustraction) sur chaque entier d’une liste.


Exemples d’utilisation :
$> ruby exo.rb 1 2 3 4 5 “+2”
3 4 5 6 7

$> ruby exo.rb 10 11 12 20 "-5"
5 6 7 15


L’opération à appliquer sera toujours le dernier élément.


Afficher error et quitter le programme en cas de problèmes d’arguments.
=end