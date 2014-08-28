class Beer
  attr_accessor :name, :image_url, :description, :abv

  def self.from_json(json)
    Beer.new.tap do |b|
      b.name = json["name"]
      b.description = json["description"]
      b.image_url = json["labels"]["medium"] if json["labels"]
      b.abv = json["abv"]
    end
  end
end