class School < ActiveRecord::Base
	belongs_to :category

	def self.search(search)
      if search
        find(:all, :conditions => ['city LIKE ? OR name LIKE ?', "%#{search}%", "%#{search}%"])
      else
        find(:all) 
      end
    end
end
