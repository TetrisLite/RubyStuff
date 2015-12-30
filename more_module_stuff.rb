module UnitedKigdom
  module NorthernEngland
    module Cities
      def distance_from_the_southern_coast
        "400 miles in distance but a million miles in culture"
      end

      class Newcastle
        def population
          "1.2 million in Newcastle"
        end

        def train_stations
          "There are 16 train station in Newcastle"
        end
      end

      class York
        def self.population
          "600,000 people in York"
        end

        def self.distance_from_south
          "Quite far, York is about 360 miles from the South"
        end
      end
    end
  end

  module SouthernEngland
    module Cities
      def number_of_cities
        "These are 10 towns with a city status"
      end
    end
  end

  module EasternEngland
    module Cities
      class Norwich
        def population
          "There are 800,000 people living here."
        end

        def universities
          "There are 2 Universities here."
        end
      end
    end
  end
end

@norwich = UnitedKigdom::EasternEngland::Cities::Norwich.new

puts @norwich.population

class Location
  include UnitedKigdom::SouthernEngland::Cities
end


@location = Location.new
puts @location.number_of_cities


class AnotherLocation
  extend UnitedKigdom::SouthernEngland::Cities
end

puts AnotherLocation.number_of_cities

@newcastle = UnitedKigdom::NorthernEngland::Cities::Newcastle.new
puts @newcastle.population
puts @newcastle.train_stations

puts UnitedKigdom::NorthernEngland::Cities::York.population
puts UnitedKigdom::NorthernEngland::Cities::York.distance_from_south


class NorthernLocation
  extend UnitedKigdom::NorthernEngland::Cities
end

puts NorthernLocation.distance_from_the_southern_coast

module Languages
  module Regions
    module Europe
      module England
        class English
          def spoken_language
            "Queens English to Cockney slang is spoken here."
          end
        end
      end
    end

    module NorthernAmerica
      module UnitedStates
        class English
          def spoken_language
            "Various types of English is spoken here " +
            "from Texan to Spanglish."
          end
        end
      end
    end
  end
end

@lingo = Languages::Regions::Europe::England::English.new

puts @lingo.spoken_language

@lingua = Languages::Regions::NorthernAmerica::UnitedStates::English.new
puts @lingua.spoken_language
