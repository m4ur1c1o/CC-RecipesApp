require_relative 'config/application'


controller = MainController.new
controller.command_case(ARGV)
