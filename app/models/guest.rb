class Guest
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def listings
    Trip.all.map do |trip| 
      if trip.guest == self
        trip.listing
      end
    end.compact
  end

  def trips
    Trip.all.select {|trip| trip.guest == self}
  end

  def trip_count
    Trip.all.select {|trip| trip.guest == self}.count
  end

  def self.pro_traveller
    all.select {|guest| guest.trip_count > 1}
  end

  def self.find_all_by_name(name)
    all.select {|guest| guest.name == name }
  end
  
end