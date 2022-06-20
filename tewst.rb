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
a1 = []
a1 = File.expand_path(File.basename(__FILE__))
a2 = a1.split('/')
puts a2.last

puts File.dirname(' ')