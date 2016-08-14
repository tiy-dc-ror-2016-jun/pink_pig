class CompaniesController < ApplicationController

  def index
    render :index
  end

  def new
    @company = Company.new
  end

  def create
    @company = Company.new(company_params)
    if @company.save
      redirect_to dashboard_show_path
    else
      render :new
    end
  end

  private def company_params
    params.require('company').permit(:name, :distributor)
  end
end
