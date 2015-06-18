class MainController

	def initialize
		# puts "Se creo el controller"
		@view = MainView.new
		# @view.interface
	end
	
	def command_case(argv)
		@argv = argv
		command = @argv[0]
		# puts "command: #{command}"
		# input_class = @argv[1]
		# input_class.capitalize
		# puts "input_class: #{input_class}"
		# p @argv

		case command
		when "index"
			# puts "Inside index"
			@view.index(Chef.all)
		when "create"
			# puts "Inside create"
			@view.create_chef(Chef.create(name: "Chefcito", email: "chefcito@mail.com"))
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