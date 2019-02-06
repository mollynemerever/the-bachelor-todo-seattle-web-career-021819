def get_first_name_of_season_winner(data, season)
  data[season].each do |contestants|  #go directly into that season's value and go through array of contestants
    if contestants["status"] == "Winner"  #located the winner of the season
      name = contestants["name"]
      first_name = name.split  #winner name split into array
      return first_name[0]  #returns only first name
    end
  end
end


def get_contestant_name(data, occupation)
  data.each do |season_number, contestants|
    contestants.each do |contestant|  #contestant represents the element in the constantS array
      if contestant["occupation"] == occupation
         return contestant["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
    data.each do |season_number, contestants|
      contestants.each do |contestant|
        if contestant["hometown"] == hometown
          counter += 1
        end
      end
    end
    return counter
end

def get_occupation(data, hometown)
  data.each do |season_number, contestants|
    contestants.each do |contestant|
      if contestant["hometown"] == hometown
        return contestant["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  sum = 0
  count = 0
    data[season].each do |contestant|
      age = contestant["age"].to_f
      sum += age
      count += 1
    end
  average = sum/count
  return average.round
end
