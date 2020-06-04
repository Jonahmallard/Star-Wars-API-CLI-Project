class Api

  BASE_URL = 'https://swapi.dev/api/'

  def self.get_films
    res = RestClient.get(BASE_URL)
    data = JSON.parse(res.body)
    films = data["films"]
    Film.new(films)
  end



end