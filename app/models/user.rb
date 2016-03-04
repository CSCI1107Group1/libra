class User < ActiveRecord::Base
  has_secure_password
  has_many  :book
  has_many :subscription
  has_many :club, through: :subscription
  has_many :comment

  def owner? (the_book)
     the_book.user.id == self.id
  end

  def club_owner?(the_club)
    the_club.user_id == self.id
  end

  def in_club?(the_club)
    subscription = Subscription.where(user_id: self.id, club_id: the_club.id)
    puts subscription
    subscription == nil
  end

end
