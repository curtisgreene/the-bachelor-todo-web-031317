require 'pry'
def get_first_name_of_season_winner(data, season)
  # code here
  data[season].each do |contestants_hash|
    if contestants_hash[:status] == "Winner" || "winner"
      return contestants_hash["name"].split(" ")[0]
    end
  end
end

def get_contestant_name(data, occupation)
  # code here
  data.each do |season, contestants|
    contestants.each do |hash|
      if hash["occupation"] == occupation
        return hash["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  # code here
  counter = 0
  data.each do |season, contestants|
    contestants.each do |hash|
      if hash["hometown"] == hometown
        counter += 1
      end
    end
  end
  counter
end

def get_occupation(data, hometown)
  # code here
  data.each do |season, contestants|
    contestants.each do |hash|
      if hash["hometown"] == hometown
        return hash["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  # code here
  ages = 0
  num_of_contestants = 0
  data[season].each do |contestants_hash|
    ages = ages + contestants_hash["age"].to_i
    num_of_contestants += 1
  end
  (ages / num_of_contestants.to_f).round(0)
end
