module ApplicationHelper
    def login_helper
        if current_user.is_a?(User)
            button_to "Log Out", destroy_user_session_path, method: :delete 
        else 
            ( link_to "Regiser", new_user_registration_path ) +
            "<br>".html_safe +
            ( link_to "Log In", new_user_session_path )
        end
    end

    def source_helper(layout_name)
        if session[:source] 
            greeting = "Thanks for visting me from #{session[:source]} and you are on the #{layout_name} layout "
            content_tag(:p, greeting, class: "source-greeting")
        end 
    end
end
