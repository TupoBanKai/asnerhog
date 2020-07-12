class Admin::RepairersController < ApplicationController
	before_action :find_repairer, only: [:edit, :update, :destroy, :show]
 
 def index
 	@repairers = Repairer.all 
 end

 def create
	Repairer.create(permitted_params)
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
 	@repairer.update(permitted_params)
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

 def permitted_params
	params.require(:repairer).permit(:first_name, :middle_name, :last_name, :discription, :profession)
 end

end