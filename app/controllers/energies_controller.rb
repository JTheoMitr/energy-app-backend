class EnergiesController < ApplicationController

    def index
        energies = Energy.all
        render json: EnergySerializer.new(energies, include: [:companies])
    end

end
