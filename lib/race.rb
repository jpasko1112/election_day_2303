class Race
  attr_reader :office,
              :candidates

  def initialize(office)
    @office = office
    @candidates = []
  end

  def register_candidate!(details)
    require 'pry'; binding.pry
    # @candidates << details.to_a
  end
end