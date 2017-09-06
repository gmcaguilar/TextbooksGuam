class PostsController < ApplicationController

	before_action :require_user, only: [:new, :create, :edit]

	def index
		@posts = Post.all
	end

	def new
		@post = Post.new
	end

	def create
		@post = Post.new(post_params)
		@post.user_id = session[:user_id]
		if (@post.save)
			redirect_to '/'
		else
			redirect_to 'create'
		end
	end

	def show
		@post = Post.find(params[:id])
	end

	def edit
		@post = Post.find(params[:id])
	end

	def update
		@post = Post.find(params[:id])
		if @post.update(post_params)
			redirect_to @post
		else
			render 'edit'
		end
	end

	private
		def post_params
			params.require(:post).permit(:title, :authors, :isbn10, :isbn13, :description, :price)
		end

end
