module DefaultPageContent
    extend ActiveSupport::Concern
    
    included do
        before_action :set_page_defaults
    end

    def set_page_defaults
        @page_title = "Portafolio | Héctor Tello"
        @seo_keywords = "Héctor Tello portfolio"
    end
end