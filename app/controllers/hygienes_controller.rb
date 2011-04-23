class HygienesController < ApplicationController
	# GET /hygienes
	# GET /hygienes.xml
	def index
		@hygienes = Hygiene.all

		respond_to do |format|
			format.html # index.html.erb
			format.xml  { render :xml => @hygienes }
		end
	end

	# GET /hygienes/1
	# GET /hygienes/1.xml
	def show
		@hygiene = Hygiene.find(params[:id])

		respond_to do |format|
			format.html # show.html.erb
			format.xml  { render :xml => @hygiene }
		end
	end

	# GET /hygienes/new
	# GET /hygienes/new.xml
	def new
		@hygiene = Hygiene.new

		respond_to do |format|
			format.html # new.html.erb
			format.xml  { render :xml => @hygiene }
		end
	end

	# GET /hygienes/1/edit
	def edit
		@hygiene = Hygiene.find(params[:id])
	end

	# POST /hygienes
	# POST /hygienes.xml
	def create
		@hygiene = Hygiene.new(params[:hygiene])

		respond_to do |format|
			if @hygiene.save
				format.html { redirect_to(@hygiene, :notice => 'Hygiene was successfully created.') }
				format.xml  { render :xml => @hygiene, :status => :created, :location => @hygiene }
			else
				format.html { render :action => "new" }
				format.xml  { render :xml => @hygiene.errors, :status => :unprocessable_entity }
			end
		end
	end

	# PUT /hygienes/1
	# PUT /hygienes/1.xml
	def update
		@hygiene = Hygiene.find(params[:id])

		respond_to do |format|
			if @hygiene.update_attributes(params[:hygiene])
				format.html { redirect_to(@hygiene, :notice => 'Hygiene was successfully updated.') }
				format.xml  { head :ok }
			else
				format.html { render :action => "edit" }
				format.xml  { render :xml => @hygiene.errors, :status => :unprocessable_entity }
			end
		end
	end

	# DELETE /hygienes/1
	# DELETE /hygienes/1.xml
	def destroy
		@hygiene = Hygiene.find(params[:id])
		@hygiene.destroy

		respond_to do |format|
			format.html { redirect_to(hygienes_url) }
			format.xml  { head :ok }
		end
	end
end
