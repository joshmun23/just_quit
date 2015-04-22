class FetchCigaretteCosts
  attr_accessor :cigarette
  def initalize
    @cigarettes
    @cigarette
    @line
    @location
    @year
    @years
  end

  def find_or_create_data
    create_data if !(Cigarette.count == 96)

    split_by_years

    @years
  end

  def create_data
    file_path = './lib/assets/costs_by_state_2014.txt'
    File.readlines(file_path).each_with_index do |line, index|
      line.gsub!(/last year/, '') if index == 0

      @line = line.gsub!(/(\(|\):|=)|\n/, '')

      format_data

      create_new_cigarettes
    end
  end

  def format_data
    @data = {}

    line = @line.split('$')

    @data['rank'] = line[0].split[0].gsub!('.', '')
    @data['state'] = line[0].split[1..-1].join(' ')
    @data['2013_cost'] = line[1].to_f
    @data['2014_cost'] = line[2].split[0].to_f
    @data['change'] = line[2].split[1]
  end

  def create_new_cigarettes
    @location = Location.find_by(state: @data['state'])

    @location = Location.create!(state: @data['state']) if !@location

    create_2013_cigarette

    create_2014_cigarette
  end

  def create_2013_cigarette
    find_or_create_year(2013)

    cig_params = { cost: @data['2013_cost'],
                   location_id: @location.id,
                   year_id: @year.id
                 }

    Cigarette.create!(cig_params)
  end

  def create_2014_cigarette
    find_or_create_year(2014)

    cig_params = { cost: @data['2014_cost'],
                   location_id: @location.id,
                   rank: @data['rank'],
                   change: @data['change'],
                   year_id: @year.id
                 }

    Cigarette.create!(cig_params)
  end

  def split_by_years
    @years = {}

    year_2013 = Year.where(year: '2013').first
    year_2014 = Year.where(year: '2014').first

    @years['2013'] = Cigarette.where(year_id: year_2013.id)
    @years['2014'] = Cigarette.where(year_id: year_2014.id)
  end

  def find_or_create_year(year)
    @year = Year.where(year: year).first
    @year = Year.create!(year: year) if !@year
  end
end
