class CartController < ApplicationController
before_filter :authenticate_user!
  def add
    id = params[:id]
    cart = session[:cart] ||= {}
    cart[id] = (cart[id] || 0) + 1
    redirect_to :action => :index
  end
  def index
    @cart = session[:cart] || {}
  end
  def change
    cart = session[:cart]
    id = params[:id];
    quantity = params[:quantity].to_i
    if cart and cart[id]
    unless quantity <= 0
    cart[id] = quantity
    else
    cart.delete id
  end
  end
    redirect_to :action => :index
  end
  def remove
    id = params[:id]
    cart = session[:cart]
    cart.delete id
    redirect_to :action => :index
  end
  def clearCart
    session[:cart] = nil
    redirect_to :action => :index
  end
  def checkout
    flash[:notice] = "CHECKOUT IS NOT IMPLEMENTED YET!!!"
    redirect_to :action => :index
  end
  def createOrder
    # Step 1: Get the current user
    @user = User.find(current_user.id)

    @ticketnameid = params[:ticketname]
    ticketdiscount = Ticketname.find(@ticketnameid).discount
    totalprice = 0

    @screeninginfo = params[:screeninginfos]
    screen = Screeninginfo.find(@screeninginfo.to_i)
    @quantity = params[:quantity].to_i

    capacity = screen.screeningroom.capacity.to_i

    @purchasedQuantity = Ticket.where(:screeninginfo_id=>@screeninginfo.to_i).size

    @ticketArray = Array.new

    #checking to make sure the cinima isnt full so tickets can be purchased
    if @quantity < (capacity-@purchasedQuantity)
      @quantity.times do |purchase|
        @ticket = Ticket.new
        @ticket.screeninginfo_id = @screeninginfo
        @ticket.user_id = @user.id
        @ticket.price = screen.price - (screen.price / ticketdiscount)
        totalprice += @ticket.price
        @ticket.ticketname_id = @ticketnameid.to_i
        @ticketArray << @ticket
        @ticket.save!
      end
    end

    # Step 2: Create a new order and associate it with the current user
    @order = @user.orders.build(:order_date => DateTime.now)
    @order.save
    # Step 3: For each item in the cart, create a new item on the order!!
    @cart = session[:cart] || {} # Get the content of the Cart
    @cart.each do | id, quantity |
    item = Movie.find_by_id(id)
    @orderitem = @order.orderitems.build(:item_id => item.id, :title => 
    item.name, :description => item.description, :quantity => @quantity,:price=>totalprice)
    @orderitem.save
    session[:cart] = nil
  end
  end
  end
