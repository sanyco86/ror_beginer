# Сумма покупок.
# Пользователь вводит поочередно название товара,
# цену за единицу и кол-во купленного товара (может быть нецелым числом).
# Пользователь может ввести произвольное кол-во товаров до тех пор, пока не введет "стоп" в качестве названия товара.
# На основе введенных данных требуетеся:
# Вычислить и вывести на экран итоговую сумму всех покупок в "корзине".

name = ''
cart = {}
sum = 0

until  name == 'стоп'

  puts "чтобы закончить покупки введите 'стоп'"
  print 'Введите название товара: '
  name = gets.chomp

  next if name == 'стоп'

  print 'Введите цену за ед.: '
  cost = gets.chomp.to_f

  print 'Введите количество купленного товара: '
  amount = gets.chomp.to_f

  cart[name] = { cost: cost, amount: amount, sum: amount * cost }
  sum += amount * cost

end

puts cart
puts "Итоговая сумма покупок составляет: #{sum}р."
