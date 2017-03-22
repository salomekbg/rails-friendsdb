class Person < ApplicationRecord

  def as_json(options={})
    {name: self.name, favoriteCity: self.favoriteCity}
  end
end
