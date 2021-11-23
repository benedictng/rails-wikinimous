class ArticlesController < ApplicationController
  before_action :set_article, only: [:show, :edit, :update, :destroy]

  def index
    @articles = Article.all
  end

  def show
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    if @article.save
      redirect_to articles_path, alert: 'article created successfully.'
    else
      redirect_to new_article_path, alert: 'Error creating article.'
    end
  end

  def edit
  end

  def update
    if @article.update(article_params)
      redirect_to articles_path, alert: 'article updated successfully.'
    else
      redirect_to new_article_path, alert: 'Error updating article.'
    end
  end

  def destroy
    @article.delete
    redirect_to articles_path, alert: 'article updated successfully.'
  end

  private

  def set_article
    @article = Article.find(params[:id])
  end

  def article_params
    params.require(:article).permit(:title, :content)
  end
end
