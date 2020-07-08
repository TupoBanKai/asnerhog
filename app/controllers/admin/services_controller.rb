class Admin::ServicesController < ApplicationController
	before_action :find_service, only: [:edit, :update, :destroy, :show]
 
 def index

 end

 def create
 	Service.create(params[:services])
 	redirect_to admin_services_path
 end

 def new
 	@service = Service.new
 end

 def edit
 end

 def show
 end

 def update 
 	@service.update
 	redirect_to admin_services_path
 end

 def destroy
 	@service.destroy
 	redirect_to admin_services_path
 end

 private

 def find_service
 	@service = Service.find(params[:id])
 end
end