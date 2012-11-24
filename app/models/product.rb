class Product < ActiveRecord::Base
attr_accessible :main_picture, :first_picture, :second_picture, :third_picture, :name, :price, :description
has_attached_file :main_picture, :styles => { :large => "430x288>", :medium => "288x187#", :thumb => "50x50#" },
                  :url  => "/system/:attachment/:id/:style/:basename.:extension",
                  :path => ":rails_root/public/system/:attachment/:id/:style/:basename.:extension"
has_attached_file :first_picture, :styles => { :large => "430x288>", :thumb => "50x50#" },
                  :url  => "/system/:attachment/:id/:style/:basename.:extension",
                  :path => ":rails_root/public/system/:attachment/:id/:style/:basename.:extension"
has_attached_file :second_picture, :styles => { :large => "430x288>", :thumb => "50x50#" },
                  :url  => "/system/:attachment/:id/:style/:basename.:extension",
                  :path => ":rails_root/public/system/:attachment/:id/:style/:basename.:extension"
has_attached_file :third_picture, :styles => { :large => "430x288>", :thumb => "50x50#" },
                  :url  => "/system/:attachment/:id/:style/:basename.:extension",
                  :path => ":rails_root/public/system/:attachment/:id/:style/:basename.:extension"                                    
end
