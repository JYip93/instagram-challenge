class PostsController < ApplicationController
    before_action :authenticate_user!
    def index
        @posts = Post.all
    end

    def create 
        Post.create(post_params)
        redirect_to root_path
    end

    def show
        @post = Post.find(parms[:id])
    end

    private

    def post_params
        params.require(:post).permit(:caption, :image, :user_id)

    end
end
