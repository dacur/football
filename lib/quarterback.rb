class Quarterback < Player
	attr_writer :longest_throw

	@longest_throw = 0

	def initialize(name, longest_throw)
		super(name)
		@longest_throw = longest_throw
	end



end