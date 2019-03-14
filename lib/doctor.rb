class Doctor
  attr_accessor :name 
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def new_appointment(patient, date)
    Patient.new(date)
  end
  
  def appointments
    Appointments.all.select {|appointment| Appointment.doctor == self}
  end
  
end