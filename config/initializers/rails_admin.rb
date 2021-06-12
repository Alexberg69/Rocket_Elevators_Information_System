# RailsAdmin.config do |config|
#   config.authorize_with do |controller|
#     unless current_user.role == 'admin'
#       redirect_to main_app.root_path
#       flash[:error] = "You are not an admin"
#     end
#   end
# end










RailsAdmin.config do |config|
    config.authenticate_with do
      warden.authenticate! scope: :user
    end
    config.current_user_method(&:current_user)
  end
