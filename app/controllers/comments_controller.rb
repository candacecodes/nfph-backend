class CommentsController < ApplicationController
    before_action :find_comment, only: [:show, :update, :destroy]

    def index
        comments = Comment.all
        render json: comments
    end

    def show
        if comment 
            render json: comment
        else 
            render json: { error: 'comment could not be found' }
        end
    end

    def create
        comment = Comment.new(comment_params)
        if comment.save
            render json: comment 
        else 
            render json: { error: 'comment could not be created' }
        end
    end

    def update
        comment.update(comment_params)
        if comment.valid?
            render json: comment
        else 
            render json: { error: 'comment could not be found' }
        end
    end

    def destroy
        if comment
            comment.delete
        else
            render json: { error: 'comment could not be found' }
        end
    end

    private
    def comment_params
        params.require(:comment).permit(:text, :owner_uuid, :date, :entry_id)
    end

    def find_comment
        comment = Comment.find(params[:id])
    end
end
