class Chores
  def self.throw_bin_away
    "Take the rubbish and put it the in dustin"
  end

  def self.iron_clothes
    "Place clothing on ironning board and press with iron"
  end
end

puts Chores.throw_bin_away


class Delivery
  class << self
    def one_day_delivery
      "Quickly to your door"
    end

    def normal_business_days
      "Up to five working days"
    end
  end
end

class Roof
  def Roof.tiles
    "Old style mororrcan"
  end
end

puts Delivery.one_day_delivery

puts Roof.tiles
