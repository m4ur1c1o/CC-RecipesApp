class MainView
	def initialize
		# puts 'Sirven las vistas'
	end

	def interface
		puts "WELCOME!"
		puts "-" * 8
	end
	
	def index(list)
		puts "List of "
		list.each do |instance|
			puts instance.name
		end
	end

	def create_chef(attributes)
		puts "You have created a new chef:"
		puts "-" * 28
		puts "Name:  #{attributes.name}"
		puts "Email: #{attributes.email}"
		puts 
	end

	def update_chef(before, after)
		puts "You have updated a new chef:"
		puts "Before: #{before}"
		puts "After: #{after}"
	end

	def delete_chef(attributes)
		puts "You have deleted this chef:"
		puts "-" * 28
		puts "ID: #{attributes.id}"
	end
end