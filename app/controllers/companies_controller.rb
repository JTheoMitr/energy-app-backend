class CompaniesController < ApplicationController

    def index
        companies = Company.all
        render json: CompanySerializer.new(companies)
    end

    def show
        company = Company.find(params[:id])
        render json: CompanySerializer.new(company)
    end

end
