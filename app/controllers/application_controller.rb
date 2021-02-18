class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  def initialize
    super

    Content.all.each do |content|
      @head_body = content.description if content.url == 'head_body'
      @contacts  = content.description if content.url == 'contacts'
      @projects  = content.description if content.url == 'projects'
      @services  = content.description if content.url == 'services'
      @phone     = content.description if content.url == 'phone'
      @email     = content.description if content.url == 'email'
      @place     = content.description if content.url == 'place'
      @map       = content.description if content.url == 'map'
      @footer    = content.description if content.url == 'footer'

      @hidden_btn_slider = content.description if content.show if content.url == 'hidden_btn_slider'
      @hide_logo         = content.description if content.show if content.url == 'hide_logo'
      @hide_order        = content.description if content.show if content.url == 'hide_order'

      # order settings      
      if content.show
        @hide_order = 'hidden'
        @makeorder  = content.slave
      else
        @hide_order = ''
        @makeorder  = content.description
      end if content.url == 'makeorder'
    end
    
    @options = Option.last
  end
end
