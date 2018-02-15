class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    full_name = self.first_name + " " + self.last_name
  end

  def list_roles
    list_of_roles = []
    character_arr = self.characters
    character_arr.each do |character|
      name_and_show = "#{character.name} - #{character.show.name}"
      list_of_roles << name_and_show
    end
    list_of_roles
  end
end
