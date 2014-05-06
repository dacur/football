# require 'makeplayer.rb'

class MainController < ApplicationController

	def saveplayer
		name = params[:name]
		stat = params[:stat]
		option = params[:option]
		
		p name + ' | ' + stat + ' | ' + option

		t = Team.new(name: name, stat: stat, option: option)

		t.save
			
		render json: t
		
	end

	def index
    	@teams = Team.all
  	end



end
