class IndexController < ApplicationController
  def home
    @title = "Home"
  end

  def about
    @title = "About"
  end

  def contact
    @title = "Contact"
  end
  
  def news
    @title = "News"
  end
  
  def coming
    @title = "Coming"
  end
end
