class Event
  attr_accessor :start_date, :duration, :title, :attendees
  #Ainsi notre classe Event comprend 4 attributs (ou variables d'instance qu'on écrit avec @....)
  @@all_events = [] #variable de classe

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

  def end_date
    @start_date + @duration
  end

  def is_past? #la convention veut que si la méthode renvoie un bouléen on ajoute un "?"
    @start_date < Time.now
  end

  def is_future? #on aurait aussi pu obtenir l'inverse avec "!". Exemple dans PRY, si je tape : !my_event.is_past? 
    @start_date > Time.now
  end

  def is_soon?
    @start_date < (Time.now + 1800) #1800 secondes ce qui correspond à 30 min
  end

  def to_s
    event_info = ">Titre : #{@title}\n"
    event_info += ">Date de début : #{@start_date}\n"
    event_info += ">Durée : #{@duration / 60} minutes\n"
    event_info += ">Invités : " + @attendees.join(", ")
    return event_info
  end

  def self.all
    return @@all_events
  end

end

#un event a un ou pls invités, ces invités sont définis par leur email tel que ["truc@machin.com", "bidule@chose.fr"]