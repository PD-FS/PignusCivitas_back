class MinuteBooksController < ApplicationController
  before_action :set_minute_book, only: [:show, :edit, :update, :destroy]

  # GET /minute_books
  # GET /minute_books.json
  def index
    @minute_books = MinuteBook.all
  end

  # GET /minute_books/1
  # GET /minute_books/1.json
  def show
  end

  # GET /minute_books/new
  def new
    @minute_book = MinuteBook.new
  end

  # GET /minute_books/1/edit
  def edit
  end

  # POST /minute_books
  # POST /minute_books.json
  def create
    @minute_book = MinuteBook.new(minute_book_params)

    respond_to do |format|
      if @minute_book.save
        format.html { redirect_to @minute_book, notice: 'Minute book was successfully created.' }
        format.json { render :show, status: :created, location: @minute_book }
      else
        format.html { render :new }
        format.json { render json: @minute_book.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /minute_books/1
  # PATCH/PUT /minute_books/1.json
  def update
    respond_to do |format|
      if @minute_book.update(minute_book_params)
        format.html { redirect_to @minute_book, notice: 'Minute book was successfully updated.' }
        format.json { render :show, status: :ok, location: @minute_book }
      else
        format.html { render :edit }
        format.json { render json: @minute_book.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /minute_books/1
  # DELETE /minute_books/1.json
  def destroy
    @minute_book.destroy
    respond_to do |format|
      format.html { redirect_to minute_books_url, notice: 'Minute book was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_minute_book
      @minute_book = MinuteBook.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def minute_book_params
      params.require(:minute_book).permit(:date, :generated_by, :notes, :file, :community_id)
    end
end
