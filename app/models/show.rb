class Show < ActiveRecord::Base

    belongs_to :network
    has_many :characters
    has_many :actors, through: :characters

    def actors_list
        names = []
        characters.each do |c|
            names << c.actor.full_name
        end
        return names
    end
  
end