# Заполнить хеш гласными буквами,
# где значением будет являтся порядковый номер буквы в алфавите (a - 1).

abc = ('a'..'z')

abc_vowels = %w(a e i o u)
vowels = {}
abc.each_with_index { |l, n| vowels[l] = n+1 if abc_vowels.include?(l) }

puts vowels
