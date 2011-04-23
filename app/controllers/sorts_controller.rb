class SortsController < ApplicationController
	# GET /sorts
	# GET /sorts.xml
	def index
		@sorts = Sort.all

		respond_to do |format|
			format.html # index.html.erb
			format.xml  { render :xml => @sorts }
		end
	end

	# GET /sorts/1
	# GET /sorts/1.xml
	def show
		@sort = Sort.find(params[:id])

		respond_to do |format|
			format.html # show.html.erb
			format.xml  { render :xml => @sort }
		end
	end

	# GET /sorts/new
	# GET /sorts/new.xml
	def new
		@sort = Sort.new

		respond_to do |format|
			format.html # new.html.erb
			format.xml  { render :xml => @sort }
		end
	end

	# GET /sorts/1/edit
	def edit
		@sort = Sort.find(params[:id])
	end

	# POST /sorts
	# POST /sorts.xml
	def create
		@sort = Sort.new(params[:sort])

		respond_to do |format|
			if @sort.save
				format.html { redirect_to(@sort, :notice => 'Sort was successfully created.') }
				format.xml  { render :xml => @sort, :status => :created, :location => @sort }
			else
				format.html { render :action => "new" }
				format.xml  { render :xml => @sort.errors, :status => :unprocessable_entity }
			end
		end
	end

	# PUT /sorts/1
	# PUT /sorts/1.xml
	def update
		@sort = Sort.find(params[:id])

		respond_to do |format|
			if @sort.update_attributes(params[:sort])
				format.html { redirect_to(@sort, :notice => 'Sort was successfully updated.') }
				format.xml  { head :ok }
			else
				format.html { render :action => "edit" }
				format.xml  { render :xml => @sort.errors, :status => :unprocessable_entity }
			end
		end
	end

	# DELETE /sorts/1
	# DELETE /sorts/1.xml
	def destroy
		@sort = Sort.find(params[:id])
		@sort.destroy

		respond_to do |format|
			format.html { redirect_to(sorts_url) }
			format.xml  { head :ok }
		end
	end
end
