class Show < ActiveRecord::Base
  has_many :characters
  belongs_to :network

  def build_network(call_letters:)
    @call_letters = call_letters
    network = Network.new(:call_letters => @call_letters)
    self.network = network
    self.save
  end

end
