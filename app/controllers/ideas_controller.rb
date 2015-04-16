class IdeasController < ApplicationController
	
	before_filter :authenticate_user!
	
	def index
		@ideas = Idea.all
		@idea = Idea.new
	end

	def create
		@idea = current_user.ideas.build(params[:idea])
		if @idea.save
			redirect_to ideas_path
			flash[:success] = "Idea Submitted!"
		else
			redirect_to ideas_path
			flash[:error] = "Please try again with a title and content..."
		end
	end

	def show
		if Idea.find(params[:id])
			@idea = Idea.find(params[:id])
		else
			redirect_to ideas_path
		end
	end

end
