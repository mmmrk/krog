class EstablishmentsController < ApplicationController
	# GET /establishments
	# GET /establishments.xml
	def index
	@establishments = Establishment.all :include => {:reviews => :rating}

		respond_to do |format|
			format.html # index.html.erb
			format.xml  { render :xml => @establishments }
		end
	end

	# GET /establishments/1
	# GET /establishments/1.xml
	def show
		@establishment = Establishment.find(params[:id], :include => {:reviews => :rating})
		@reviews = @establishment.reviews

		respond_to do |format|
			format.html # show.html.erb
			format.xml  { render :xml => @establishment }
		end
	end

	# GET /establishments/new
	# GET /establishments/new.xml
	def new
		@establishment = Establishment.new
		@establishment.tapped_beer = Beer.new
		@establishment.bottled_beer = Beer.new
		
		@establishment.opening_hour = Hour.new
		@establishment.closing_hour = Hour.new
		
		@beers = Beer.all
		@categories = Category.all

		respond_to do |format|
			format.html # new.html.erb
			format.xml  { render :xml => @establishment }
		end
	end

	# GET /establishments/1/edit
	def edit
		@establishment = Establishment.find(params[:id])
	end

	# POST /establishments
	# POST /establishments.xml
	def create
		@establishment = Establishment.new(params[:establishment])
		@establishment.tapped_beer = Beer.find(params[:tapped_beer])
		@establishment.bottled_beer = Beer.find(params[:bottled_beer])
		@establishment.category = Category.find(params[:category])

		@establishment.closing_hour = Hour.parse(params[:closing_hour])
		@establishment.opening_hour = Hour.parse(params[:opening_hour])

		respond_to do |format|
			if @establishment.save
				format.html { redirect_to(@establishment, :notice => 'Establishment was successfully created.') }
				format.xml  { render :xml => @establishment, :status => :created, :location => @establishment }
			else
				format.html { render :action => "new" }
				format.xml  { render :xml => @establishment.errors, :status => :unprocessable_entity }
			end
		end
	end

	# PUT /establishments/1
	# PUT /establishments/1.xml
	def update
		@establishment = Establishment.find(params[:id])

		respond_to do |format|
			if @establishment.update_attributes(params[:establishment])
				format.html { redirect_to(@establishment, :notice => 'Establishment was successfully updated.') }
				format.xml  { head :ok }
			else
				format.html { render :action => "edit" }
				format.xml  { render :xml => @establishment.errors, :status => :unprocessable_entity }
			end
		end
	end

	# DELETE /establishments/1
	# DELETE /establishments/1.xml
	def destroy
		@establishment = Establishment.find(params[:id])
		@establishment.destroy

		respond_to do |format|
			format.html { redirect_to(establishments_url) }
			format.xml  { head :ok }
		end
	end
end
