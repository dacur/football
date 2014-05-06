class Runningback < Player
	attr_writer :longest_run

	@longest_run = 0

	def initialize(name, longest_run)
		super(name)
		@longest_run = longest_run
	end



end