class Product < ActiveRecord::Base
  attr_accessible :name, :tags

  attr_taggable :tags

  searchable do
    text :name
    string :tags, :multiple => true
  end

end
