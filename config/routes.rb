Rails.application.routes.draw do
  devise_for :users

  root to: redirect('/dashboard')
 
  get 'dashboard', to: 'dashboard#index', as:'dashboard'
  get 'account' , to:'dashboard#account', as: 'account'
  get 'editpay' , to:'dashboard#editpay', as: 'editpay'
  get 'offer', to: 'dashboard#offer', as:'offer'
  get 'books', to:'books#productlisting', as:'books'
  get 'orderpay', to:'books#orderpay', as:'orderpay'
  get 'books/:id', to: 'books#productdetails', as: 'productdetails_book'
  get 'books/:id', to: 'books#productdetails', as: 'book'
  get 'myorder/:id', to:'books#myorder', as: 'myorder' 
  get 'quiz',to: 'contest#quiz', as:'quiz'
  get 'productdetails', to: 'books#productdetails', as: 'productdetails'
  get 'review/:id', to: 'books#review', as: 'review'
  post 'books', to: 'books#create'
  get 'reviewresult', to: 'books#reviewresult', as: 'reviewresult'

  get 'books/new', to: 'books#new', as: 'newbook'
  get 'books', to: 'books#booksearch', as: 'booksearch'
  get 'books/:id', to: 'books#show', as: 'order'
  
  

end
