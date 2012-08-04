class ContactFormController < ApplicationController
	# skip_before_filter :authorize
	# def new
	#     @contact_form = ContactForm.new
	# end

	# def create
	#   	#begin
	#   	@contact_form = ContactForm.new(params[:contact_form])
	#     #@contact_form = Notifier.contact_form_send(params[:contact_form])

	# 	    respond_to do |format|
	# 	      if @contact_form.valid?
	# 	      	Notifier.contact_form_send(@contact_form).deliver
	# 	      	flash[:notice] = "Thank you for your message!"
	# 	        format.html { redirect_to '/', notice: 'Thank you for your message!' }
	# 	       	format.js 
	# 	        format.json { render json: '/', location: homes_path }
	# 	      else
	# 	        format.html { render action: "new" }
	# 	        format.js
	# 	        format.json { render json: @contact_form.errors, status: :unprocessable_entity }
	# 	      end
	# 		end
	# 	#end
	# end
end
	  #   if @contact_form.valid?
	  #   Notifier.contact_form_send(@contact_form).deliver
	  #   #if @contact_form.deliver
	  #     #flash.now[:notice] = 'Thank you for your message!'
		 #  redirect_to(homes_path, :notice => 'Thank you for your message!')
	  #   else
	  #   	render :new
	  #    # redirect_to('home', :notice => 'Message send failed.')
	  #   end
	  # rescue ScriptError
	  #   flash[:error] = 'Sorry, this message appears to be spam and was not delivered.'
	  # end
	#end