class Admin::RepairersController < ApplicationController
 
 def index
 	@repairers = Repairer.all 
 end

 def create
	Repairer.create(params[:repairers])
	#переход на другое действие контроллера
	redirect_to admin_repairers_path
 end

 def new
 	@rep = Repairer.new
 end

 def edit
 	@rep = Repairer.find(params[:id])
 end

 def show
 	@rep = Repairer.find(params[:id])
 end

 def update
 	ye = Repairer.find(params[:id]
 	ye.update(params[:repairers])
 	redirect_to admin_repairers_path
 end

 def destroy
 	ye = Repairer.find(params[:id]
 	ye.delete
 	redirect_to admin_repairers_path
 end

end