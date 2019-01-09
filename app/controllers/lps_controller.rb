class LpsController < ApplicationController
	before_action :set_lp, only: [:show, :edit, :update, :destroy]

	def index
		puts params[:q]
		@lps = Lp.ransack(params[:q]).result
	end

	def show
	end

	def new
		@lp = Lp.new
	end

	def edit
	end

	def create
		@lp = Lp.new(lp_params)

		if @lp.save
			redirect_to @lp, notice: 'Lp was successfully created.'
		else
			render :new
		end
	end

	def update
		if @lp.update(lp_params)
			redirect_to @lp, notice: 'Lp was successfully updated.'
		else
			render :edit
		end
	end

	def destroy
		@lp.destroy
		redirect_to lps_url, notice: 'Lp was successfully destroyed.'
	end

	private
		def set_lp
			@lp = Lp.find(params[:id])
		end

		def lp_params
			params.require(:lp).permit(:name, :year, :genre, :artist_id)
		end
end
