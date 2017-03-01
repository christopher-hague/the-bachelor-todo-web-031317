# Build a method, get_first_name_of_season_winner, that takes in two
# arguments, a hash called data (i.e. the data structure described
# above), and a season. The method should return the first name of that
# season's winner. Hint: you'll need to do some string manipulation to
# return only the first name of the winning lady.

def get_first_name_of_season_winner(data, season)
  data[season].each do |contestants|
    if contestants["status"] == "Winner"
      return contestants["name"].split(" ").first
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season_num, contestants|
    contestants.each do |contestant|
      if contestant["occupation"] == occupation
        return contestant["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  result = 0

  data.each do |season_num, contestants|
    contestants.each do |contestant|
      if contestant["hometown"] == hometown
        result += 1
      end
    end
  end

  result
end

def get_occupation(data, hometown)
  data.each do |season_num, contestants|
    contestants.each do |contestant|
      return contestant["occupation"] if contestant["hometown"] == hometown
    end
  end
end

def get_average_age_for_season(data, season)
  total_years = 0.0
  data[season].each do |contestants|
    total_years += contestants["age"].to_i
  end

  (total_years / data[season].count).round
end
