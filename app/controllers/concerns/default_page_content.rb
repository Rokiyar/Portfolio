module DefaultPageContent
    extend ActiveSupport::Concern

    included do 
        before_action :set_page_defaults
    end

    def set_page_defaults
        @page_title = "Protfolio | My Portfolio"
        @seo_keywords = "May Thune portfolio"
    end
end