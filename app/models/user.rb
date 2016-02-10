class User < ActiveRecord::Base
  has_secure_password
  has_many :book

  def owner? (the_book)
     the_book.user.id == self.id
  end

end
