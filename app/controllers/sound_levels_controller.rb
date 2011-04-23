class SoundLevelsController < ApplicationController
	# GET /sound_levels
	# GET /sound_levels.xml
	def index
		@sound_levels = SoundLevel.all

		respond_to do |format|
			format.html # index.html.erb
			format.xml  { render :xml => @sound_levels }
		end
	end

	# GET /sound_levels/1
	# GET /sound_levels/1.xml
	def show
		@sound_level = SoundLevel.find(params[:id])

		respond_to do |format|
			format.html # show.html.erb
			format.xml  { render :xml => @sound_level }
		end
	end

	# GET /sound_levels/new
	# GET /sound_levels/new.xml
	def new
		@sound_level = SoundLevel.new

		respond_to do |format|
			format.html # new.html.erb
			format.xml  { render :xml => @sound_level }
		end
	end

	# GET /sound_levels/1/edit
	def edit
		@sound_level = SoundLevel.find(params[:id])
	end

	# POST /sound_levels
	# POST /sound_levels.xml
	def create
		@sound_level = SoundLevel.new(params[:sound_level])

		respond_to do |format|
			if @sound_level.save
				format.html { redirect_to(@sound_level, :notice => 'Sound level was successfully created.') }
				format.xml  { render :xml => @sound_level, :status => :created, :location => @sound_level }
			else
				format.html { render :action => "new" }
				format.xml  { render :xml => @sound_level.errors, :status => :unprocessable_entity }
			end
		end
	end

	# PUT /sound_levels/1
	# PUT /sound_levels/1.xml
	def update
		@sound_level = SoundLevel.find(params[:id])

		respond_to do |format|
			if @sound_level.update_attributes(params[:sound_level])
				format.html { redirect_to(@sound_level, :notice => 'Sound level was successfully updated.') }
				format.xml  { head :ok }
			else
				format.html { render :action => "edit" }
				format.xml  { render :xml => @sound_level.errors, :status => :unprocessable_entity }
			end
		end
	end

	# DELETE /sound_levels/1
	# DELETE /sound_levels/1.xml
	def destroy
		@sound_level = SoundLevel.find(params[:id])
		@sound_level.destroy

		respond_to do |format|
			format.html { redirect_to(sound_levels_url) }
			format.xml  { head :ok }
		end
	end
end
