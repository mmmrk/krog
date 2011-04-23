class ClientelesController < ApplicationController
	# GET /clienteles
	# GET /clienteles.xml
	def index
		@clienteles = Clientele.all

		respond_to do |format|
			format.html # index.html.erb
			format.xml  { render :xml => @clienteles }
		end
	end

	# GET /clienteles/1
	# GET /clienteles/1.xml
	def show
		@clientele = Clientele.find(params[:id])

		respond_to do |format|
			format.html # show.html.erb
			format.xml  { render :xml => @clientele }
		end
	end

	# GET /clienteles/new
	# GET /clienteles/new.xml
	def new
		@clientele = Clientele.new

		respond_to do |format|
			format.html # new.html.erb
			format.xml  { render :xml => @clientele }
		end
	end

	# GET /clienteles/1/edit
	def edit
		@clientele = Clientele.find(params[:id])
	end

	# POST /clienteles
	# POST /clienteles.xml
	def create
		@clientele = Clientele.new(params[:clientele])

		respond_to do |format|
			if @clientele.save
				format.html { redirect_to(@clientele, :notice => 'Clientele was successfully created.') }
				format.xml  { render :xml => @clientele, :status => :created, :location => @clientele }
			else
				format.html { render :action => "new" }
				format.xml  { render :xml => @clientele.errors, :status => :unprocessable_entity }
			end
		end
	end

	# PUT /clienteles/1
	# PUT /clienteles/1.xml
	def update
		@clientele = Clientele.find(params[:id])

		respond_to do |format|
			if @clientele.update_attributes(params[:clientele])
				format.html { redirect_to(@clientele, :notice => 'Clientele was successfully updated.') }
				format.xml  { head :ok }
			else
				format.html { render :action => "edit" }
				format.xml  { render :xml => @clientele.errors, :status => :unprocessable_entity }
			end
		end
	end

	# DELETE /clienteles/1
	# DELETE /clienteles/1.xml
	def destroy
		@clientele = Clientele.find(params[:id])
		@clientele.destroy

		respond_to do |format|
			format.html { redirect_to(clienteles_url) }
			format.xml  { head :ok }
		end
	end
end
