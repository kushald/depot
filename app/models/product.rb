class Product < ActiveRecord::Base
	validates :title , :description , :image_url , :presence => true
	validates :image_url, :format => { :with => %r{\.(gif|jpg|png)$}}
	validates :price , :numericality => { :greater_than_or_equal_to => 0.01 }
end
