class ReviewsController < ApplicationController
	# GET /reviews
	# GET /reviews.xml
	def index
		@reviews = Review.all

		respond_to do |format|
			format.html # index.html.erb
			format.xml  { render :xml => @reviews }
		end
	end

	# GET /reviews/1
	# GET /reviews/1.xml
	def show
		@review = Review.find(params[:id])

		respond_to do |format|
			format.html # show.html.erb
			format.xml  { render :xml => @review }
		end
	end

	# GET /reviews/new
	# GET /reviews/new.xml
	def new
		@review = Review.new
		@review.establishment = Establishment.new
		@review.category = Category.new
		@review.clientele = Clientele.new
		@review.sound_level = SoundLevel.new
		@review.hygiene = Hygiene.new
		@review.rating = Rating.new
		
		collect_additional_params()

		respond_to do |format|
			format.html # new.html.erb
			format.xml  { render :xml => @review }
		end
	end

	# GET /reviews/1/edit
	def edit
		@review = Review.find(params[:id])
		
		collect_additional_params()
	end	

	# POST /reviews
	# POST /reviews.xml
	def create
		@review = Review.new(params[:review])
		@review.establishment = Establishment.find(params[:establishment])
		@review.category = Category.find(params[:category])
		@review.clientele = Clientele.find(params[:clientele])
		@review.sound_level = SoundLevel.find(params[:sound_level])
		@review.hygiene = Hygiene.find(params[:hygiene])
		@review.rating = Rating.find(params[:rating])

		respond_to do |format|
			if @review.save
				format.html { redirect_to(@review, :notice => 'Review was successfully created.') }
				format.xml  { render :xml => @review, :status => :created, :location => @review }
			else
				format.html { render :action => "new" }
				format.xml  { render :xml => @review.errors, :status => :unprocessable_entity }
			end
		end
	end

	# PUT /reviews/1
	# PUT /reviews/1.xml
	def update
		@review = Review.find(params[:id])
		@review.establishment = Establishment.find(params[:establishment])
		@review.category = Category.find(params[:category])
		@review.clientele = Clientele.find(params[:clientele])
		@review.sound_level = SoundLevel.find(params[:sound_level])
		@review.hygiene = Hygiene.find(params[:hygiene])
		@review.rating = Rating.find(params[:rating])

		respond_to do |format|
			if @review.update_attributes(params[:review])
				format.html { redirect_to(@review, :notice => 'Review was successfully updated.') }
				format.xml  { head :ok }
			else
				format.html { render :action => "edit" }
				format.xml  { render :xml => @review.errors, :status => :unprocessable_entity }
			end
		end
	end

	# DELETE /reviews/1
	# DELETE /reviews/1.xml
	def destroy
		@review = Review.find(params[:id])
		@review.destroy

		respond_to do |format|
			format.html { redirect_to(reviews_url) }
			format.xml  { head :ok }
		end
	end
	
	
	def collect_additional_params
		@establishments = Establishment.all
		@categories = Category.all
		@clienteles = Clientele.all
		@sound_levels = SoundLevel.all
		@hygienes = Hygiene.all
		@ratings = Rating.all
	end
end
