require 'test_helper'

<<<<<<< HEAD
class BooksControllerTest < ActionController::TestCase
=======
class BooksControllerTest < ActionDispatch::IntegrationTest
>>>>>>> 69a21e41517a5c85387a5f133e9fed41dcf36da2
  setup do
    @book = books(:one)
  end

  test "should get index" do
<<<<<<< HEAD
    get :index
    assert_response :success
    assert_not_nil assigns(:books)
  end

  test "should get new" do
    get :new
=======
    get books_url
    assert_response :success
  end

  test "should get new" do
    get new_book_url
>>>>>>> 69a21e41517a5c85387a5f133e9fed41dcf36da2
    assert_response :success
  end

  test "should create book" do
    assert_difference('Book.count') do
<<<<<<< HEAD
      post :create, book: { author: @book.author, available: @book.available, genre: @book.genre, image: @book.image, title: @book.title, year_published: @book.year_published }
    end

    assert_redirected_to book_path(assigns(:book))
  end

  test "should show book" do
    get :show, id: @book
=======
      post books_url, params: { book: { author: @book.author, available: @book.available, genre: @book.genre, image: @book.image, title: @book.title, year_published: @book.year_published } }
    end

    assert_redirected_to book_path(Book.last)
  end

  test "should show book" do
    get book_url(@book)
>>>>>>> 69a21e41517a5c85387a5f133e9fed41dcf36da2
    assert_response :success
  end

  test "should get edit" do
<<<<<<< HEAD
    get :edit, id: @book
=======
    get edit_book_url(@book)
>>>>>>> 69a21e41517a5c85387a5f133e9fed41dcf36da2
    assert_response :success
  end

  test "should update book" do
<<<<<<< HEAD
    patch :update, id: @book, book: { author: @book.author, available: @book.available, genre: @book.genre, image: @book.image, title: @book.title, year_published: @book.year_published }
    assert_redirected_to book_path(assigns(:book))
=======
    patch book_url(@book), params: { book: { author: @book.author, available: @book.available, genre: @book.genre, image: @book.image, title: @book.title, year_published: @book.year_published } }
    assert_redirected_to book_path(@book)
>>>>>>> 69a21e41517a5c85387a5f133e9fed41dcf36da2
  end

  test "should destroy book" do
    assert_difference('Book.count', -1) do
<<<<<<< HEAD
      delete :destroy, id: @book
=======
      delete book_url(@book)
>>>>>>> 69a21e41517a5c85387a5f133e9fed41dcf36da2
    end

    assert_redirected_to books_path
  end
end
