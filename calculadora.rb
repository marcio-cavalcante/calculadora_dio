def menu
  puts "Escolha uma operação:"
  puts "1. Soma"
  puts "2. Subtração"
  puts "3. Multiplicação"
  puts "4. Divisão"
  puts "5. Sair"
end

def operacao(opcao, valor1, valor2)
  case opcao
  when 1
    return valor1 + valor2
  when 2
    return valor1 - valor2
  when 3
    return valor1 * valor2
  when 4
    return valor1 / valor2
  else
    return nil
  end
end

loop do
  menu
  opcao = gets.chomp.to_i

  break if opcao == 5

  if (1..4).include?(opcao)
    puts "Digite o primeiro valor:"
    valor1 = gets.chomp.to_f
    puts "Digite o segundo valor:"
    valor2 = gets.chomp.to_f

    resultado = operacao(opcao, valor1, valor2)
    
    puts "O resultado é: #{resultado}"
  else
    puts "Opção inválida, tente novamente."
  end
end

puts "Programa encerrado."
