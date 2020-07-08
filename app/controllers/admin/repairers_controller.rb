class Admin::RepairersController < ApplicationController
	before_action :find_repairer, only: [:edit, :update, :destroy, :show]
 
 def index
 	@repairers = Repairer.all 
 end

 def create
	Repairer.create(params[:repairers])
	#переход на другое действие контроллера и роутхелпер
	redirect_to admin_repairers_path
 end

 def new
 	@repairer = Repairer.new
 end

 def edit
 end

 def show
 end

 def update 
 	@repairer.update(params[:repairers])
 	redirect_to admin_repairers_path
 end

 def destroy
 	@repairer.delete
 	redirect_to admin_repairers_path
 end

 private

 def find_repairer
 	@repairer = Repairer.find(params[:id])
 end

end