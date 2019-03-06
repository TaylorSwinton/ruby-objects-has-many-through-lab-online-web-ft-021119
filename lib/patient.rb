class Patient

  attr_accessor :name

  @@all = []
  def initialize(name)
    @name = name

    @@all << self
  end

  def new_appointment(docter, date)
    Appointment.new(date, self, docter)
  end

  def self.all
    @@all
  end

end
