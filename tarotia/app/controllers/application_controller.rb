class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern

  # Changes to the importmap will invalidate the etag for HTML responses
  stale_when_importmap_changes

  helper_method :logged_in?, :current_user

  private

  def logged_in?
    session[:user_id].present?
  end

  def current_user
    if logged_in?
      @current_user ||= { id: 1, name: 'Alexandra', email: 'alexandra@universo.com', plan: 'PRO' }
    end
  end
end
