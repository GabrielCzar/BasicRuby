#Comentario de uma linha
=begin
Para comentarios de varias linhas serao usados esse comandos
para definir o bloco de comentario
=end

#Comandos de saida do Ruby

print "Hello World" # Nao possui quebra de linha
puts "Hello World" # Mostra dos dados e quebra a linha

print "Hello", " ", "World" # Mostra todos os dados juntos
puts "Hello", " ", "World" # Cada valor antes da virgula ficara em uma linha


print "Hello", 1, 2.3, 'Hello', 'g'
puts "Hello", 1, 2.3, 'Hello', 'g'

# Variaveis

name = "Gabriel" # String
numF = 2.3 # Float
numI = 2 # Fixnum

# Para sabe o tipo de uma variavel
nome_variavel.class

# String inteporlation
nome = "cesar"
novo_nome  = "Hello, #{nome}" 
novo_nome2 = "Hello, %s" % nome # %s para string
novo_nome3 = "Hello, %s, %s" % ["Czar", "Cesar"]	 
num1 = "Numero %d" % numI # %d para Inteiro ou Fixnum
num2 = "Numero %f" % numF # %f para Float
num3 = "Numero %.2f" % numF # Tambem pode limitar o numero de casas

# Operadores basicos
=begin
&& ou and
|| ou or
!  ou not
=end

# Para entrada de dados
=begin
STDOUT é uma constante global que é a saída padrão atual do programa.
flush (fluir) limpa qualquer dado armazenado no buffer (área de armazenamento temporário de dados) de entrada e saída do Ruby. 
=end
nome_digitado1 = gets # Recebe uma unica linha, incluindo o \n
nome_digitado2 = gets.chomp # Recebe a linha mas nao inclui o \n
