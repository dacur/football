class Makeplayer < Player
	# attr_reader :id, :user_id, :user_name, :text, :post_date

	# def initialize(id, user_id, user_name, text, post_date)
	# 	@id = id
	# 	@user_id = user_id
	# 	@user_name = user_name
	# 	@text = text
	# 	@post_date = post_date
	# end

	def save
		p 'Saving Player! '
		newPlayer = Team.create(name: @name, longest_throw: @longest_throw, longest_run: @longest_run)
		# @id = newCluck.id.to_s
	end

	def self.get_all
		p 'Getting all the players'
		return Team.all
	end

end