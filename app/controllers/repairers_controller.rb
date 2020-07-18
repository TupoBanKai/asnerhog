class RepairersController < ApplicationController

	def index
		@repairers = Repairer.all 
	end

end
