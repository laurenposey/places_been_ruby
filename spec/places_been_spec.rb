require("rspec")
require("places_been")

describe(Place) do
  before() do
    Place.clear()
  end

  describe(".clear") do
    it("clears out the array") do
    Place.new("Kitten Neck, Rainbowland").save()
    Place.clear()
    expect(Place.all_places()).to(eq([]))
    end
  end

  describe("#description") do
    it("lets you add a visted place") do
      test_place = Place.new("Pairis, Epicoda")
      expect(test_place.description()).to(eq("Pairis, Epicoda"))
    end
  end

  describe(".all_places") do
    it("is empty at first") do
      expect(Place.all_places()).to(eq([]))
    end
  end

  describe("#save") do
    it("adds a new place to the array of places") do
      test_place = Place.new("Candy Mountain, Charlie")
      test_place.save()
      expect(Place.all_places()).to(eq([test_place]))
    end
  end
end
