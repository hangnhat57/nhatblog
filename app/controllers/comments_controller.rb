class CommentsController < ApplicationController
	http_basic_authenticate_with name: "hangnhat57", password: "1lanbihack", except: :create
def create
	@post = Post.find(params[:post_id])
	@comment = @post.comments.create(comment_params)
	redirect_to post_path(@post)
end


def destroy
	@post = Post.find(params[:post_id])
	@comment = @post.comments.destroy(params[:id])
	redirect_to post_path(@post)

end

def comment_params
	params.require(:comment).permit(:name,:body)
end

end
