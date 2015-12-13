class Category < ActiveRecord::Base
    
      validates :name, presence: true, length: { maximum: 140 }

end
