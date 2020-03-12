require 'pry'
class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters
  
  def full_name
    f = self.first_name
    l = self.last_name
    arr = [f, l]
    arr.join(' ')
  end
  
  def list_roles
    arr = []
    c = self.characters
    name = c[0].name
    show_id = c[0].show_id
    show = Show.find(show_id).name
    arr << name
    arr << show
    arr.join(' - ')
  end
end