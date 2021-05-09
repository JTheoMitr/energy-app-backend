class EnergiesController < ApplicationController

    def index
        energies = Energy.all
        render json: EnergySerializer.new(energies, include: [:companies])
    end

    def show
        energy = Energy.find(params[:id])
        render json: EnergySerializer.new(energy)
    end

    def create
        energy = Energy.new(energy_params)
        if energy.save
            render json: EnergySerializer.new(energy)
        else
            render json: {error: "Could not save Energy"}
        end
    end

    def destroy
        energy = Energy.find(params[:id])
        energy.destroy
        render json: {message: "ENERGY DELETED: #{energy.name}"}
    end

    private

    def energy_params
        params.require(:energy).permit(:name)
    end

end
