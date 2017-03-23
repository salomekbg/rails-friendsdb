class Person < ApplicationRecord

  def as_json(options={})
    {id: self.id, name: self.name, favoriteCity: self.favoriteCity}
  end
end
