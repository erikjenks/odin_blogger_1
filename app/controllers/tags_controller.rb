class TagsController < ApplicationController

	def index
		@tags = Tag.all
	end

	def show
		@tag = Tag.find(params[:id])
	end

	def destroy
		@tags = Tags.find(params[:id])
		@tags.destroy

		flash.notice = "Tag '#{@tag.name}' was Deleted"
		
	end
end
