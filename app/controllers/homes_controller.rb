class HomesController < ApplicationController
  skip_before_filter :authorize
  # GET /homes
  # GET /homes.json
  def index
    @homes = Home.all
    
    @contact_form = ContactForm.new
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @homes }
    end
  end

  # GET /homes/1
  # GET /homes/1.json
  # def show
  #   @home = Home.find(params[:id])

  #   respond_to do |format|
  #     format.html # show.html.erb
  #     format.json { render json: @home }
  #   end
  # end

  # GET /homes/new
  # GET /homes/new.json
  # def new
  #   @home = Home.new

  #   respond_to do |format|
  #     format.html # new.html.erb
  #     format.json { render json: @home }
  #   end
  # end

  # GET /homes/1/edit
  # def edit
  #   @home = Home.find(params[:id])
  # end

  # POST /homes
  # POST /homes.json
  def create
    @home = Home.new(params[:home])
    @contact_form = ContactForm.new(params[:contact_form])
      #@contact_form = Notifier.contact_form_send(params[:contact_form])

        respond_to do |format|
          if @contact_form.valid?
            Notifier.contact_form_send(@contact_form).deliver
            flash[:notice] = "Thank you for your message!"
            format.html { redirect_to '/', notice: 'Thank you for your message!' }
            format.js 
            format.json { render json: '/', location: homes_path }
          else
            format.html { render action: "new" }
            format.js
            format.json { render json: @contact_form.errors, status: :unprocessable_entity }
          end
      end
    # respond_to do |format|
    #   if @home.save
    #     format.html { redirect_to @home, notice: 'Home was successfully created.' }
    #     format.json { render json: @home, status: :created, location: @home }
    #   else
    #     format.html { render action: "new" }
    #     format.json { render json: @home.errors, status: :unprocessable_entity }
    #   end
    # end
  end

  # PUT /homes/1
  # PUT /homes/1.json
  # def update
  #   @home = Home.find(params[:id])

  #   respond_to do |format|
  #     if @home.update_attributes(params[:home])
  #       format.html { redirect_to @home, notice: 'Home was successfully updated.' }
  #       format.json { head :no_content }
  #     else
  #       format.html { render action: "edit" }
  #       format.json { render json: @home.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # DELETE /homes/1
  # DELETE /homes/1.json
  # def destroy
  #   @home = Home.find(params[:id])
  #   @home.destroy

  #   respond_to do |format|
  #     format.html { redirect_to homes_url }
  #     format.json { head :no_content }
  #   end
  # end
end
