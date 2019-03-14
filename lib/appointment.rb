class Appointment
  attr_accessor :date, :doctor
  
  @@all = []
  
  def initialize(date, doctor)
    @date = date
    @doctor = doctor
    @@all << self
  end
  
  def self.all
    @@all
  end
  
end