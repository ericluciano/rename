def renomear
	return "#{rand(2**32..2**64)}"
end

puts "---"
puts "Digite a extensao do arquivo sem ponto:"
extensao = gets.chomp

count = 0

Dir['*'].each do |file|
	name = File.extname(file)

	if !(name == ".rb") && (name == ".#{extensao}")
		File.rename(file, "#{renomear}#{name}")
		puts "#{renomear}#{name}"
		puts "---"
		count += 1
		#puts File.extname(file) + " == #{name}"
	end
end
puts " "
puts "Arquivos renomeados: #{count}"
puts " "

