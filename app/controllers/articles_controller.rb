class ArticlesController < ApplicationController
    
    def index
        @articles = Article.includes(:user).page(params[:page]).per(5).order("created_at DESC")
    end

    def new
        @article = Article.new
    end

    def create
        @article = Article.new(articles_params)        
        if @article.save!
            redirect_to root_path
        else
            redirect_to root_path
        end
    end

    private
    def articles_params
      params.require(:article).permit(:text).merge(user_id: current_user.id)
    end
end
