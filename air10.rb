
def montre_fichier(arr)
fichier = arr[0]

    File.open(fichier) do |fichier|
        fichier.each_line do |line|
          puts line
        end
    end
end


#gestion d'erreur
(puts "error"; exit) if ARGV[0] == nil

#parsing 
tab = ARGV

#resolution
result = montre_fichier(tab)

#affichage
result




=begin Créez un programme qui affiche le contenu d’un fichier donné en argument.


Exemples d’utilisation :
$> cat a.txt
Je danse le mia
$> ruby exo.rb “a.txt”
Je danse le mia


Afficher error et quitter le programme en cas de problèmes d’arguments ou de fichier inaccessible.
=end