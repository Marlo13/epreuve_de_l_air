def cut(cut_string, separator)
    
    
    cut_string[0].each_line(separator) do |i|
        if i == ' '
        else puts i
        end
    end
end

#gestion d'erreur
(puts "error"; exit) if ARGV[0] == nil


#parsing
arr = ARGV
separator = ' '

#resolution
result = cut(arr, separator)
#affichage
result

#ruby air00.rb "je suis la "

=begin
Créez un programme qui découpe une chaîne de caractères en tableau (séparateurs : espaces, tabulations,
    retours à la ligne).
    
    Votre programme devra utiliser une fonction prototypée comme ceci :
    ma_fonction(string_à_couper, string_séparateur) { // syntaxe selon votre langage
        # votre algorithme
        return (tableau)
    }
    
    
    Exemples d’utilisation :
    $> python exo.py “Bonjour les gars”
    Bonjour
    les
    gars
    
    Afficher error et quitter le programme en cas de problèmes d’arguments.
    =end
    #recupere le parametre pour la string serparer a chaque espaces
    # def cut_fonction(arr)
    #     for i in arr
    #         d = i.split(' ')
    #         puts d
    #     end
    # end
=end