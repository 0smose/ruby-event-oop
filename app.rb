# lignes très pratiques qui appellent les gems du Gemfile. On verra plus tard comment s'en servir ;) - ça évite juste les "require" partout
require 'bundler'

Bundler.require

# lignes qui appellent les fichiers lib/user.rb et lib/event.rb
# comme ça, tu peux faire User.new dans ce fichier d'application. Top.
require_relative 'lib/user'
require_relative 'lib/event'
require_relative 'lib/EventCreator'


#------------EventCreator------------------



#EventCreator.new







# Maintenant c'est open bar pour tester ton application. Tous les fichiers importants sont chargés
# Tu peux faire User.new, Event.new, binding.pry, User.all, etc.

# robin = User.new("my_email", 27)
my_event = Event.new("2019-04-15 14:40", 30, "prise de tête à tuba",
 ["robin@robin.com", "truc@truc.com"])

#puts robin
#puts my_event.start_date
#puts my_event.duration
#puts my_event.title
puts my_event.end_date
#puts my_event.postpone_24h
#puts my_event.is_soon?
# puts my_event.to_s
# User.new("julie@julie.com", 35)
# User.new("jean@jean.com", 23)
# User.new("claude@claude.com", 75)

# puts user1 = User.find_by_email("claude@claude.com")