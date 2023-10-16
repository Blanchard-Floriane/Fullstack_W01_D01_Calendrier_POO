class Event
  attr_accessor :start_date, :duration, :title, :attendees
  #Ainsi notre classe Event comprend 4 attributs (ou variables d'instance)
  @@all_events = []

  def initialize(start_date_to_save, duration_to_save, title_to_save, attendees_to_save)
    #Pas plus de 4 paramètres par méthode.
    @start_date = Time.parse(start_date_to_save)
    @duration = duration_to_save.to_i
    @title = title_to_save.to_s
    @attendees = attendees_to_save
    @@all_events.push(self)
  end

  def postpone_24h
    @start_date = @start_date + 24 * 60 * 60
    #en ajoutant + 86 400 (soit le nb de secondes dans une heure) cela décale la date de début de l'événement de 24h 
  end

  def self.all
    return @@all_events
  end

end

#un event a un ou pls invités, ces invités sont définis par leur email tel que ["truc@machin.com", "bidule@chose.fr"]