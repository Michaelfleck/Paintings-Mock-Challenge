class Painting < ActiveRecord::Base
    belongs_to :artist
    belongs_to :museum

    def description
        "#{title} was painted by #{artist.full_name} which currently resides in the #{museum.name}. It is currently priced at #{price_in_us_dollars}."
    end

end
