class EventCreator
  def title
    puts "Salut, tu veux créer un événement ? Cool !
    Commençons. Quel est le nom de l'événement ?"
    print "> "
    return title = gets.chomp
  end

  def start_date
    puts "Super. Quand aura-t-il lieu ?"
    print "> "
    return start_date = gets.chomp
  end

  def duration
    puts "Au top. Combien de temps va-t-il durer (en minutes) ?"
    print "> "
    return duration = gets.chomp
  end

  def attendees
    puts "Génial. Qui va participer ? Balance leurs e-mails (séparés par un ;)"
    print "> "
    return attendees = gets.chomp
  end

  def create_event(start_date, duration, title, attendees)
    puts "Super, c'est noté, ton évènement a été créé !"
    event = Event.new(start_date, duration, title, attendees)
    return event
  end
end