class Product < ActiveRecord::Base
	default_scope :order => 'title'
	has_many :line_items
	before_destroy :ensure_not_referenced_by_any_line_item
	
	validates :title , :description , :image_url , :presence => true
	validates :image_url, :format => { :with => %r{\.(gif|jpg|png)$}}
	validates :price , :numericality => { :greater_than_or_equal_to => 0.01 }
	

	def self.search(search)
		if search[:product] || search[:search]
		conditions = "1=1 "
		conditions << "and id =#{search[:product][:id]} " unless search[:product][:id].blank?
		conditions << "and description LIKE '%#{search[:search]}%' or price=#{search[:search].to_f}" unless search[:search].blank?
			find(:all, :conditions => conditions)
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
