# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)
Product.delete_all
Product.create(:title => 'Eggs',
  :description => 
    %{<p>
        Chicken eggs are widely used in many types of dishes, both sweet and savory, 
        including many baked goods. Some of the most common preparation methods include
         scrambled, fried, hard-boiled, soft-boiled, and pickled. They can also be eaten raw,
          though this is not recommended for people who may be especially susceptible to salmonellosis, 
          such as the elderly, the infirm, or pregnant women. In addition, the protein in raw eggs 
          is only 51% bioavailable, whereas that of a cooked egg is nearer 91% bioavailable, 
          meaning the protein of cooked eggs is nearly twice as absorbable as the protein from raw eggs.
           As an ingredient, egg yolks are an important emulsifier in the kitchen, 
        and the proteins in egg white allow it to form foams and aerated dishes.

      </p>},
  :image_url =>   '/images/eggs.jpg',    
  :price => 42.95)
# . . .
Product.create(:title => 'Oil',
  :description =>
    %{<p>
        Cooking oil is fat that is used for cooking and is usually liquid at room temperature. 
        Some saturated oils such as coconut oil and palm oil are more solid at room temperature than others.
      </p>},
  :image_url => '/images/oil.jpg',
  :price => 49.50)
# . . .

Product.create(:title => 'Burger',
  :description => 
    %{<p>
        A hamburger (also called a hamburger sandwich or burger) is a sandwich consisting of a cooked patty 
        of ground meat (usually beef, but occasionally pork or a combination of meats) usually placed inside 
        a sliced bread roll.
      </p>},
  :image_url => '/images/burger.jpg',
  :price => 43.75)
# . . .

Product.create(:title => "Beer",
	 :description => 
	 %{<p>
	 	It might seem an unlikely claim when you're trying to choose from the bewildering
	 	array of beers available today but it’s true. All beer falls into one of these two categories -
	 	Ale or Lager. There are a few so-called hybrid styles that employ traditional brewing methods of 
		both but even these can be clearly distinguished as ale or lager based on the yeast used to ferment them.},
	 :image_url => '/images/beer.jpg',
	 :price => 34.44)
