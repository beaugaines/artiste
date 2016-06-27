class Profile < ActiveRecord::Base
  belongs_to :user

  def quote_list
    quotes.join(', ')
  end

  def quote_list=(quotes)
    self.quotes = quotes.split('*')
  end
end
