$a = 0
$b = 0
def self.green(text) ; "\e[32m#{text}\e[0m"  end

def self.red(text)   ; "\e[31m#{text}\e[0m"  end

def self.blue(text)   ; "\e[34m#{text}\e[0m"  end

def testExo(name, input, output) #stocker deux variable pour a la fin Total success: (56/62)
    x = 0
    y = input.size
    z = 1
    while z <= y
        if input[x] == output[x]
            puts self.green("#{name} (#{z}/#{y}) : success")
            $a += 1
        else 
            puts self.red("#{name} (#{z}/#{y}) : failure")
        end
        x += 1
        z += 1
        $b += 1
    end
end

name = "air00.rb"
input1 = [` ruby air00.rb "Bonjour les gars" `, `ruby air00.rb "o les gadjo" `]
output = ["Bonjour \nles \ngars\n","Yo \nles \ngadjo\n"
]
testExo(name, input1, output)


name = "air01.rb"
input = [`ruby air01.rb "Crevette magique dans la mer des étoiles" "la"`]
output = ["Crevette magique dans
mer des étoiles
"]
testExo(name, input, output)

name = "air02.rb"
input = [`ruby air02.rb "je" "teste" "des" "trucs" " "`]
output = ["je teste des trucs \n"]
testExo(name, input, output)

name = "air03.rb"
input = [`ruby air03.rb 1 2 3 4 5 4 3 2 1`]
output = ["5\n"]
testExo(name, input, output)


name = "air04.rb"
input = [`ruby air04.rb "Hello milady,   bien ou quoi ??"`]
output = ["Helo milady, bien ou quoi ?\n"]

testExo(name, input, output)

name = "air05.rb"
input = [`ruby air05.rb 10 11 12 20 "-5"`]
output = ["5 6 7 15 \n"]
testExo(name, input, output)

name = "air06.rb"
input = [`ruby air06.rb "Michel" "Albert" "Thérèse" "Benoit" "t"`]
output = ["Michel \n"]
testExo(name, input, output)

name = "air07.rb"
input = [`ruby air07.rb 10 20 30 40 50 60 70 90 33`]
output = ["10, 20, 30, 33, 40, 50, 60, 70, 90\n"]
testExo(name, input, output)

name = "air08.rb"
input = [`ruby air08.rb 10 20 30 fusion 15 25 35`]
output = ["10 15 20 25 30 35\n"]
testExo(name, input, output)

name = "air09.rb"
input = [`ruby air09.rb "Michel" "Albert" "Thérèse" "Benoit"`]
output = ["Albert Thérèse Benoit Michel\n"]
testExo(name, input, output)

name = "air10.rb"
input = [`ruby air10.rb a.txt`]
output = ["je dance le milla\n"]
testExo(name, input, output)

name = "air11.rb"
input = [`ruby air11.rb O 5`]
output = ["    O\n   OOO\n  OOOOO\n OOOOOOO\nOOOOOOOOO\n"]
testExo(name, input, output)


name = "air12.rb"
input = [`ruby air12.rb  6 5 4 3 2 1`]
output = ["1 2 3 4 5 6\n"]
testExo(name, input, output)


puts self.blue("Total success: (#{$a}/#{$b})")


=begin Créez un programme qui vérifie si les exercices de votre épreuve de l’air sont présents dans le répertoire et qu’ils fonctionnent (sauf celui là). 
Créez au moins un test pour chaque exercice.


Exemples d’utilisation :
$> python exo.py
air00 (1/3) : success
air00 (2/3) : success
air00 (3/3) : success
air01 (1/2) : success
air01 (2/2) : failure
air02 (1/1) : success
... 
Total success: (56/62)


Bonus : trouvez le moyen d’utiliser du vert et du rouge pour rendre réussites et échecs plus visibles.
=end