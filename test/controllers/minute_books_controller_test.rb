require 'test_helper'

class MinuteBooksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @minute_book = minute_books(:one)
  end

  test "should get index" do
    get minute_books_url
    assert_response :success
  end

  test "should get new" do
    get new_minute_book_url
    assert_response :success
  end

  test "should create minute_book" do
    assert_difference('MinuteBook.count') do
      post minute_books_url, params: { minute_book: { community_id: @minute_book.community_id, date: @minute_book.date, file: @minute_book.file, generated_by: @minute_book.generated_by, notes: @minute_book.notes } }
    end

    assert_redirected_to minute_book_url(MinuteBook.last)
  end

  test "should show minute_book" do
    get minute_book_url(@minute_book)
    assert_response :success
  end

  test "should get edit" do
    get edit_minute_book_url(@minute_book)
    assert_response :success
  end

  test "should update minute_book" do
    patch minute_book_url(@minute_book), params: { minute_book: { community_id: @minute_book.community_id, date: @minute_book.date, file: @minute_book.file, generated_by: @minute_book.generated_by, notes: @minute_book.notes } }
    assert_redirected_to minute_book_url(@minute_book)
  end

  test "should destroy minute_book" do
    assert_difference('MinuteBook.count', -1) do
      delete minute_book_url(@minute_book)
    end

    assert_redirected_to minute_books_url
  end
end
