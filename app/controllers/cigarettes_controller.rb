class CigarettesController < ApplicationController
  def index
    @cigarettes = FetchCigaretteCosts.new.find_or_create_data
    # order by cost
    # @cigarettes['2013'].sort_by { |i| i.cost }
  end
end
