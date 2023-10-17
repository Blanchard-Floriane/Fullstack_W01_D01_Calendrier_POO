require 'bundler' #Cette ligne charge la bibliothèque Bundler. 
Bundler.require #Cette ligne charge toutes les gemmes spécifiées dans le fichier Gemfile (ici pry, etc.).

# lignes qui appellent les fichiers lib/user.rb et lib/event.rb
# comme ça, tu peux faire User.new dans ce fichier d'application. Top.
require_relative 'lib/user'
require_relative 'lib/event'
require_relative 'lib/event_creator'

binding.pry
