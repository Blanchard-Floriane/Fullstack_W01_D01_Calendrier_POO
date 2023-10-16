class EventCreator
  def title_to_save
    puts "Salut, tu veux créer un événement ? Cool !
    Commençons. Quel est le nom de l'événement ?"
    print "> "
    return title = gets.chomp
  end

  def start_date_to_save
    puts "Super. Quand aura-t-il lieu ?"
    print "> "
    return start_date = gets.chomp
  end

  def duration_to_save
    puts "Au top. Combien de temps va-t-il durer (en minutes) ?"
    print "> "
    return duration = gets.chomp
  end

  def attendees_to_save
    puts "Génial. Qui va participer ? Balance leurs e-mails (séparés par un ;)"
    print "> "
    return attendees = gets.chomp
  end

  def create_event(start_date_to_save, duration_to_save, title_to_save, attendees_to_save)
    puts "Super, c'est noté, ton évènement a été créé !"
    event = Event.new(start_date_to_save, duration_to_save, title_to_save, attendees_to_save)
    return event
  end
end