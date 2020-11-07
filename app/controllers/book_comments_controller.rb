class BookCommentsController < ApplicationController
  def create
    # @book = Book.find(params[:book_id])
    # comment = current_user.book_comments.new(book_comment_params)
    # comment.book_id = @book.id
    # comment.save
    # redirect_back(fallback_location: root_path)
    @book = Book.find(params[:book_id]) 
    comment = current_user.book_comments.new(book_comment_params)
    comment.book_id = @book.id
    comment.save
    # respond_to do |format|
    #   format.html { redirect_to books_path(params[:book_id])  }
    #   format.json
    # end 
  end

  def destroy
    @book = Book.find(params[:book_id])
    comment = current_user.book_comments.find_by(id: params[:id], book_id: @book.id)
    comment.destroy
    # redirect_back(fallback_location: root_path)
  end
  
  private
  def book_comment_params
    params.require(:book_comment).permit(:comment)
  end
end
