class BooksController < ApplicationController
  def index
  	@books = Book.all
  	@book = Book.new
  end

  def show
  	@book = Book.find(params[:id])
  end

  def new
  	@book = Book.new
  end

  def create
	@book = Book.new(book_params)
	if @book.save
		flash[:notice] = "Create successfully"
		redirect_to book_path(@book)
	else
		# 作成に失敗した場合、 /books/index に戻してバリデーションエラーを表示する
		# view 側で、 @book.errors を使ってエラーを表示する。
		@books = Book.all
		render :index
	end
  end
  def edit
  	@book = Book.find(params[:id])
  end

  def update
  	@book = Book.find(params[:id])
  	if @book.update(book_params)
  		redirect_to book_path(@book)
  		flash[:notice] = "Edit successfully"
  	else
  		render :edit
  	end
  end

  def destroy
  	book = Book.find(params[:id])
  	book.destroy
  	redirect_to books_path
  end



  private
  def book_params
  	params.require(:book).permit(:title,:body)
  end
end
