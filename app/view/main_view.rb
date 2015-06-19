class MainView
	def initialize
		# puts 'Sirven las vistas'
	end

	def interface
		puts "WELCOME!"
		puts "-" * 8
	end
	
	def index(list, list_class)
		puts "Index of #{list_class}"
		puts "-" * (list_class.length + 9)
		list.each do |instance|
			puts "#{instance.id}. #{instance.name}"
		end
	end

	def get_chef_attributes
		chef_attributes = []
		puts "Insert chef name: "
		chef_name = $stdin.gets.chomp
		chef_attributes << chef_name
		puts "Insert chef email: "
		chef_email = $stdin.gets.chomp
		chef_attributes << chef_email
		chef_attributes
	end

	def create_chef(attributes)
		puts "You have created a new chef:"
		puts "-" * 28
		puts "Name:  #{attributes.name}"
		puts "Email: #{attributes.email}"
		puts 
	end

	def get_meal_attributes
		meal_attributes = []
		puts "Insert chef creator id: "
		chef_id = $stdin.gets.chomp
		meal_attributes << chef_id
		puts "Insert meal name: "
		meal_name = $stdin.gets.chomp
		meal_attributes << meal_name
		puts "Insert meal description: "
		meal_description = $stdin.gets.chomp
		meal_attributes << meal_description
		meal_attributes
	end

	def create_meal(attributes)
		puts "You have created a new meal:"
		puts "-" * 28
		puts "Chef_id:     #{attributes.chef_id}"
		puts "Name:        #{attributes.name}"
		puts "Description: #{attributes.description}"
		puts 
	end

	def get_ingredient_attributes
		ingredient_attributes = []
		puts "Insert ingredient name: "
		ingredient_name = $stdin.gets.chomp
		ingredient_attributes << ingredient_name
		ingredient_attributes
	end

	def create_ingredient(attributes)
		puts "You have created a new ingredient:"
		puts "-" * 28
		puts "Name:  #{attributes.name}"
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

	def error_argv_elements
		puts "Please add 2 arguments"
	end

	def option_error
		puts "Not exist"
		puts "Use [chef][meal][ingredient]"
	end
end