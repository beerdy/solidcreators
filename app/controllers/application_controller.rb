class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  def initialize
    super

    Content.all.each do |content|
      @head_body = content.description if content.url == 'head_body'
      @contacts  = content.description if content.url == 'contacts'
      @projects  = content.description if content.url == 'projects'
      @makeorder = content.description if content.url == 'makeorder'
      @services  = content.description if content.url == 'services'
      @phone     = content.description if content.url == 'phone'
      @email     = content.description if content.url == 'email'
      @place     = content.description if content.url == 'place'
      @map       = content.description if content.url == 'map'
      @footer    = content.description if content.url == 'footer'
    end
  
  end
end
