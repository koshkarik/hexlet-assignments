class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    puts('here are params', params)
    @article = Article.find(params[:id])
  end
end
