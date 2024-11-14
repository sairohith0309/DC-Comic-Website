class BooksController < ApplicationController
    def productlisting
        @books = Book.all
        render :productlisting
    end


    def booksearch
        @books = Book.all
        @books = if params[:search].present?
            filter_books = books
            filter_books = books.where(book_char: params[:search][:book_char]) if params[:search][:book_char].present?
        end

        render :booksearch
    end


    def productdetails
        @book = Book.find(params[:id])
        render :productdetails
    end

    def myorder
        @book = Book.all
        @book = Book.find(params[:id])
        render :myorder
    end


	def orderpay
        render :orderpay
    end

	def reviewresukt
        @book = Book.all
        render :reviewresult
    end

    def myorder
        @book = Book.find(params[:id])
        @order= Order.find(params[:id])
        render :myorder
    end
    

    def create
        @book = Book.productdetails(params.require(:book).permit(:review))
        if @book.save
            flash[:success] = 'New review added successfully!'
            redirect_to review_url
          else
            flash.now[:error] = 'To-do item creation failed'
            render :new, status: :unprocessable_entity
          end
    end

    
    def productdetails
        @book = Book.find(params[:id])
        render :productdetails
    end



    def index
		if params[:category].blank?
			@books = Book.all.order("created_at DESC")
		else
			@category_id = Category.find_by(name: params[:category]).id
			@books = Book.where(:category_id => @category_id).order("created_at DESC")
		end
	end

	def show
		if @book.reviews.blank?
			@average_review = 0
		else
			@average_review = @book.reviews.average(:rating).round(2)
		end
	end

	def new
		@book = current_user.books.build
		@categories = Category.all.map{ |c| [c.name, c.id] }
	end

	def create
		@book = current_user.books.build(book_params)
		@book.category_id = params[:category_id]

		if @book.save
			redirect_to root_path
		else
			render 'new'
		end
	end

	def edit
		@categories = Category.all.map{ |c| [c.name, c.id] }
	end

	def update
		@book.category_id = params[:category_id]
		if @book.update(book_params)
			redirect_to book_path(@book)
		else
			render 'edit'
		end
	end

	def destroy
		@book.destroy
		redirect_to root_path
	end

	private

		def book_params
			params.require(:book).permit(:title, :description, :author, :category_id, :book_img)
		end

		def find_book
			@book = Book.find(params[:id])
		end
end
