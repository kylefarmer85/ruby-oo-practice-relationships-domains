class Listing
  attr_reader :city

  @@all = []

  def initialize(city)
    @city = city
    @@all << self
  end

  def self.all
    @@all
  end

  def guests
    Trip.all.map do |trip|
      if trip.listing == self
        trip.guest
      end
    end.compact
  end

  def trips
    Trip.all.select {|trip| trip.listing == self}
  end

  def trip_count
    Trip.all.select {|trip| trip.listing == self}.count
  end

  def self.find_by_city(city)
    all.select {|listing| listing.city == city}
  end

  def self.most_popular
    all.max_by {|listing| listing.trip_count}
  end



end


