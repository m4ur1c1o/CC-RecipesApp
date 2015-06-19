class MainController

	def initialize
		# puts "Se creo el controller"
		@view = MainView.new
		# @view.interface
	end
	
	def check_enough_argv_attributes
		if @argv.length < 2
			@view.error_argv_elements 
			true
		else
			false
		end
	end

	def command_case(argv)
		@argv = argv

		if check_enough_argv_attributes
			return
		else
			command = @argv[0]
			# puts "command: #{command}"
			argv_1 = @argv[1].dup if @argv[1]

			input_class = argv_1.capitalize!.constantize
			# puts "input_class: #{input_class}"
			# p @argv

			case command
			when "index"
				# puts "Inside index"
				@view.index(input_class.all, argv_1)
			when "create"
				# puts "Inside create"
				# @view.create_chef(input_class.create(name: "Chefcito", email: "chefcito@mail.com"))

				if input_class == Chef
					chef_attributes = @view.get_chef_attributes
					chef = Chef.create(name: chef_attributes[0], email: chef_attributes[1])
					@view.create_chef(chef)
				elsif input_class == Meal
					meal_attributes = @view.get_meal_attributes
					meal = Meal.create(chef_id: meal_attributes[0], name: meal_attributes[1], description: meal_attributes[2])
					@view.create_meal(meal)
				elsif input_class == Ingredient
					ingredient_attributes = @view.get_ingredient_attributes
					ingredient = Ingredient.create(name: ingredient_attributes[0])
					@view.create_ingredient(ingredient)
				else
					@view.option_error
				end
			when "update"
				# puts "Inside update"
				chef = Chef.find_by(name: "Chefcito")
				name_before = chef.name
				chef.name = "Dany"
				name_after = chef.name
				chef.save
				@view.update_chef(name_before, name_after)
			when "delete"
				# puts "Inside delete"
				@view.delete_chef(Chef.destroy(5))
			end
		end
	end
end