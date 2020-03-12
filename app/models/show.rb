require 'pry'
class Show < ActiveRecord::Base
  belongs_to :network
  has_many :characters
  has_many :actors, through: :characters
  
  def actors_list
    c = self.characters
    a = self.actors
    first_name = a[0].first_name
    last_name = a[0].last_name
    format_arr = [first_name, last_name]
    a = format_arr.join(' ')
    arr = []
    arr << a
  end
end