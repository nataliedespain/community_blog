class PostsController < ApplicationController
	def show
		@posts = Post.all
	end

	def new
		@post = Post.new
	end

	def create
		@post = Post.create(post_params)
	end

	private

		def post_params
			params.require(:post).permit(:name, :title, :body)
		end
end
