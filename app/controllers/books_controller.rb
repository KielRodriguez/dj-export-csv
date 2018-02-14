class BooksController < ApplicationController
  def index
    @books = Book.all

    respond_to do |format|
      format.html
      format.csv { send_data @books.to_csv }
      format.xls { send_data @books.to_csv(col_sep: "\t")}
    end
  end
end
