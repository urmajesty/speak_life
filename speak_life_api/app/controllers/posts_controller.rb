class PostsController < ApplicationController
    def index
        posts = Post.all

        choices = { include: [:category, :affirmations] }

        render json: PostSerializer.new(posts, choices)
    end

    def create
        choices = { include: [:category, :affirmations] }

        category = Category.find_by(id: post_params["category_id"])

        post = Post.new(content: post_params["content"], likes: 0)
        post.category = category
        post.affirmations_attributes=(post_params["affirmations_attributes"])
    
        if post.save!
            render json: PostSerializer.new(post, choices)
        else
            render json: { :message => "Post did not save" }
        end
    end

    def update
        post = Post.find_by(id: params[:id])

        if post
            if post.update!(likes: post_params[:likes])
                render json: post.to_json(:only => [:likes])
            else
                render json: { :message => "Unable to update Affirmation" }
            end
        else
            render json: { :message => "Affirmation not found"}
        end
    end

    private

    def post_params
        params.require(:post).permit(:likes, :user_id, :content, :category_id, affirmations_attributes: [:tag_name])
    end
end
