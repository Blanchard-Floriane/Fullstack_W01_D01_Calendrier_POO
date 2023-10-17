class Event
  attr_accessor :start_date, :duration, :title, :attendees
  #Ainsi notre classe Event comprend 4 attributs (ou variables d'instance qu'on écrit avec @....)

  def initialize(start_date, duration, title, attendees)
    #Pas plus de 4 paramètres par méthode.
    @start_date = Time.parse(start_date)
    @duration = duration.to_i
    @title = title.to_s
    @attendees = attendees
  end

  def postpone_24h
    @start_date += 24 * 60 * 60
    #en ajoutant + 86 400 (soit le nb de secondes dans une heure) cela décale la date de début de l'événement de 24h 
  end

  def end_date
    return @start_date + @duration*60
  end

  def is_past? #la convention veut que si la méthode renvoie un bouléen on ajoute un "?"
    return @start_date < Time.now
  end

  def is_future?
    !self.is_past?
  end

  def is_soon?
    @start_date < (Time.now + 30*60) #1800 secondes ce qui correspond à 30 min
  end

  def to_s
    puts ">Titre : #{@title}\n"
    puts ">Date de début : #{@start_date}\n"
    puts ">Durée : #{@duration / 60} minutes\n"
    puts ">Invités : " + @attendees.join(", ")
  end
end

#un event a un ou pls invités, ces invités sont définis par leur email tel que ["truc@machin.com", "bidule@chose.fr"]