class WelcomeController < ApplicationController
  before_filter :add_item
  def index
    @article = Article.first
    @count = Article.count
  end

  private

  def add_item
    Article.create(title: 'test title', text: 'test text') if Article.all.count == 0
  end
end
