class PostsController < ApplicationController
before_action :find_post ,only:[:update,:edit,:delete,:destroy,:show]
http_basic_authenticate_with name: "hangnhat57", password: "1lanbihack", except: [:index,:nopage,:show,:home]

def new
	@post = Post.new
end

def create
	@post = Post.new(post_params)
	if @post.save
	flash[:notice] = "Post successfully created"
	redirect_to	 @post
	else
	render :new
	end 
end

def show
	
	
end

def update
	
	if @post.update(post_params)
	flash[:notice] = "Post successfully updated"
	redirect_to @post
	else
		render :edit
	end
end

def nopage
	
end

def edit
	
end
def home
	
end
def index
	@posts = Post.all.order("created_at desc" )
end

def delete
	
end

def destroy
	
	@post.destroy
	flash[:notice] = "Post successfully deleted"
	redirect_to posts_path
end


private
def post_params
	params.require(:post).permit(:title,:body)
end
def find_post
	@post = Post.find(params[:id])
end

end
