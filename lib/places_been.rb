class Place
  @@all_places = []

  define_method(:initialize) do |description|
    @description = description
  end
  define_method(:description) do
    @description
  end

  define_singleton_method(:all_places) do
    @@all_places
  end
  define_singleton_method(:clear) do
    @@all_places = []
  end
  define_method(:save) do
    @@all_places.push(self)
  end
end
