class Artist < ActiveRecord::Base
    has_many :paintings
    has_many :museums, through: :paintings

    def full_name
        "#{first_name} #{last_name}"
    end

    def self.sort_by_year
        # self.order(:birthyear)
        self.all.sort_by { |artist| artist.birthyear }
    end

    def add_painting(museum, title, price_in_us_dollars)
        Painting.create(museum_id: museum.id, title: title, price_in_us_dollars: price_in_us_dollars, artist_id:self.id)
    end 

end
