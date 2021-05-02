class CompaniesController < ApplicationController

    def index
        companies = Company.all
        render json: CompanySerializer.new(companies)
    end

    def show
        company = Company.find(params[:id])
        render json: CompanySerializer.new(company)
    end

    def create
        company = Company.new(company_params)
        if company.save
            render json: CompanySerializer.new(company)
        else
            render json: {error: "Could not save new company"}
        end

    end

    def destroy
        company = Company.find(params[:id])
        company.destroy
        render json: {message: "COMPANY DELETED: #{company.name}"}
    end

    def update
        company = Company.find(params[:id])
        if company.update(company_params)
            render json: CompanySerializer.new(company)
        else
            render json: {error: "Could not update company"}
        end

    end

    private

    def company_params
        params.require(:company).permit(:name, :location, :description, :website, :energy_id)
    end

end
