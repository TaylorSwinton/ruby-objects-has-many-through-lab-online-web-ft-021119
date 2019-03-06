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

  def appointments
    Appointment.all.select do |appoint|
      appoint.patient == self
    end
  end

  def doctors
    appointments.map do |appoint|
      appoint.docter
    end
  end

  def self.all
    @@all
  end

end
