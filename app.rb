require 'bundler' #Cette ligne charge la bibliothèque Bundler. 
Bundler.require #Cette ligne charge toutes les gemmes spécifiées dans le fichier Gemfile (ici pry, etc.).

# lignes qui appellent les fichiers lib/user.rb et lib/event.rb
# comme ça, tu peux faire User.new dans ce fichier d'application. Top.
require_relative 'lib/user'
require_relative 'lib/event'
require_relative 'lib/event_creator'

event_creator = EventCreator.new
title = event_creator.title_to_save
date = event_creator.start_date_to_save
duration = event_creator.duration_to_save
attendees = event_creator.attendees_to_save

event = event_creator.create_event(title, date, duration, attendees)
puts event.to_s
