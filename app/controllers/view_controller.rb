class ViewController < ApplicationController
  def form_tag
    @book = Book.new
  end

  def form_for
    @book = Book.new
  end

  def create
    redirect_to view_keyword_path
  end

  def select
    @book = Book.new(publish: '기술평론사')
  end

  def col_select
    # 폼의 근본이 되는 모델을 준비
    @book = Book.new(publish: 'seo6')
    # distinct 중복제거
    @books = Book.select(:publish).distinct.order(:publish)
  end

  def group_select
    @review = Review.new
    @authors = Author.all.preload(:books)
  end
end
