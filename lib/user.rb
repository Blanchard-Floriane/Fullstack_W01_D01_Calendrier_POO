class User
  attr_accessor :email, :age #2 instances de ma class User
  @@all_users = [] #variable de classe pour initialiser l'array

  def initialize(email_to_save, age_to_save)
    #Dès la création d'un `User`, on veut définir son e-mail et son âge.
    @email = email_to_save
    @age = age_to_save
    @@all_users.push(self) # Ajoutez l'instance actuelle à @@all_users, pas les valeurs individuelles
  end

  def self.find_by_email(email)
    found_user = @@all_users.find{|user| user.email == email}
    if found_user
      puts "Voici l'âge du User trouvé : #{found_user.age} ans" #pour accéder à l'attribut de l'objet user
    else
      puts "Aucun utilisateur trouvé avec cet e-mail"
    end
  end

  def self.all
    return @@all_users
  end

end

