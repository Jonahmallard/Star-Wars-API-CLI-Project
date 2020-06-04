class Cli
    def run 
      welcome 
      Api.get_films
      main
    end 

    def main
      print_all
    end 

    def print_all
      Film.all.each { |f| puts f.films}
    end
 
    def welcome 
      puts "Welcome to Star Wars CLI!"
    end

end