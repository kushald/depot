class Product < ActiveRecord::Base


	default_scope :order => 'title'
	has_many :line_items
	before_destroy :ensure_not_referenced_by_any_line_item
	
	validates :title , :description , :image_url , :presence => true
	validates :image_url, :format => { :with => %r{\.(gif|jpg|png)$}}
	validates :price , :numericality => { :greater_than_or_equal_to => 0.01 }
	

	def self.search(search)
		if search
			find(:all, :conditions => ["LOWER(title) LIKE ?",  "%#{search.downcase}%"])
		else
    	find(:all)
  	end
end
	private
	
	def ensure_not_referenced_by_any_line_item
		if line_items.empty?
			return true
		else
			errors.add(:base, 'Line Items present')
			return false
		end
	end
end
