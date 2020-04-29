 class Patient 
  
  attr_accessor :name, :appointment, :doctor
   @@all = []
   
   def initialize(name)
     @name = name
     @@all << self
   end
   
   def new_appointment(doctor, date)
     Appointment.new(self, date, doctor)
   end
    
   def self.all
     @@all
   end
  
   def appointments
    Appointment.all.select do |appointment| 
      appointment.patient == self
    end 
   end
   
   def doctors 
     Appointments.all.map do |appointment| 
       appointment.doctor
     end 
    end 

 
 end


   
   
   

