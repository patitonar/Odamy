class ChargeController < ApplicationController

	before_action :authenticate_user!

	def free
		project = Project.find(params[:project_id])
		current_user.subscriptions.create(project: project)

		redirect_to project
	end

	def pay
		project = Project.find(params[:project_id])

		customer = Stripe::Customer.create(
	    :email => current_user.email,
	    :card  => params[:stripeToken]
	  )

	  charge = Stripe::Charge.create(
	    :customer    => customer.id,
	    :amount      => project.price_in_cents,
	    :description => project.name,
	    :currency    => 'usd'
	  )

	  if charge
	  	current_user.subscriptions.create(project: project)
	  	redirect_to project
	  end

	rescue Stripe::CardError => e
	  flash[:error] = e.message
	  redirect_to project
	end

end
