  require "pry"
def get_first_name_of_season_winner(data, season)
  data[season].each do |names|
    names.each do |key, value|
      if value == "Winner"
        winner_name = names["name"]
        return winner_name.split.first
      end
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |key, value|
    value.each do |person_data|
      if person_data["occupation"] == occupation
        return person_data["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  people = []
  data.each do |key, value|
    value.each do |person_data|
      if person_data["hometown"] == hometown
        people.push(key)
      end
    end
  end
  people.length
end


def get_occupation(data, hometown)
  data.each do |season, info|
    info.each do |person_data|
      if person_data["hometown"] == hometown
        return person_data["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  ages = []
  data[season].each do |key|
    key.each do |k, v|
      if k == "age"
        ages.push(v.to_f)
      end
    end
  end
  return (ages.inject(&:+)/ages.length).round
end
