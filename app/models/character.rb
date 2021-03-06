class Character < ActiveRecord::Base
  belongs_to :actor
  belongs_to :show


  def say_that_thing_you_say
    that_thing = "#{self.name} always says: #{self.catchphrase}"
  end

  def build_show(name:)
    @name = name
    show = Show.new(:name => @name)
    self.show = show
    self.save
    show
  end

end
