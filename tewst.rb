# const args = process.argv.slice(2);

# for (let i = 0; i < args.length; i++) {
#     console.log(args[i]);
# }
# 
# arr = ["Hello", "HallO", "Regted"]

# map re map le tableau
# select qui permet de selectionner des element de facon booléen
# reduc
#  arr.map {|string| string.downcase}
#  [1, 2, 3, 4, 5, 6, 7, 8].select { |n| n % 2 == 0}

# arr.reduce({}) do |lengths, state|
#     lengths[state] = state.length
#     p lengths
# end
# arr.reverse_each {|i| puts i }
# out put : "Regted", "HallO", "Hello"

def sorted_insert(array, new_element)
    array << new_element.join
    1.upto(array.length-1) do |i|
        value = array[i]
         j = i - 1
        while j >= 0 && array[j] > value
            array[j+1] = array[j]
            j -= 1
        end
        array[j+1] = value
    end
    return array.join(' ')
end

# Partie 1: Gestion d'erreur
(puts "error"; exit) if ARGV.size <= 2

# Partie 2 : Parsing
array = ARGV   
new_element = [] 
new_element << array[-1] ; array.pop

# Partie 3: Résolution
solution = sorted_insert(array, new_element)

# Partie 4: Solution
puts solution