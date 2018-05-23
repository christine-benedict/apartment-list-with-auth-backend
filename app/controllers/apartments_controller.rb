class ApartmentsController < ApplicationController
    def index
        apartments = Apartment.all
        render json: apartments
    end
    def create
        apartment_info = Apartment.create(apartment_params)
        render json: apartment_info
    end
    def apartment_params
        params.require(:apartment).permit(
           :crossroad,
           :city,
           :zipcode,
           :state,
           :country,
           :manager_name,
           :manager_phone_number,
           :manager_hours )
    end
end
