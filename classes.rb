#!/usr/bin/env ruby
# Introducao a Class

# Criando a classe
class Launcher
	# Construtor
	# mapping hash
	def initialize app_map
		@app_map = app_map
	end

	# Method, executa o file_name no app associado
	def run file_name
		application = select_app file_name
		system "#{application} #{file_name}"
	end

	def select_app file_name
		ftype = file_type file_name
		@app_map[ftype]
	end

	def file_type file_name
		File.extname (file_name).gsub /^\./, ''
	end
end

def help
	puts "Voce deve passar o caminho de um arquivo.
	Usage: #{__FILE__} target_file"
end

# unless é um SE NAO
unless ARGV.size > 0
	help
	exit
end

app_map = {
   'html' => 'chromium-browser -new-window  --enable-plugins    --allow-outdated-plugins ',
   'rb' => 'gvim',
   'jpg' => 'gimp'
}

# Instanciando
launcher = Launcher.new app_map
target = ARGV.join ' '
launcher.run target
