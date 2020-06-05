class Api

  BASE_URL = 'https://swapi.dev/api/'

  def self.get_films
    res = RestClient.get(BASE_URL + "films/")
    data = JSON.parse(res.body)
    films = data["results"].each do |film|
         title = film["title"]
         episode_id = film["episode_id"]
         url = film["url"]
         Film.new(title, episode_id, url)
      end
    end
    
   def self.get_film_details_by_number(episode_id)
     puts "Loading..."
     selected_film = Film.find_by_id(episode_id)
     response = RestClient.get(selected_film.url)
     data = JSON.parse(response.body)
     opening_crawl = data["opening_crawl"]
     director = data["director"]
     producer = data["producer"]
     release_date = data["release_date"]
     selected_film.update(opening_crawl, director, producer, release_date)
     selected_film
   end
  
end