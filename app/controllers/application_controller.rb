class ApplicationController < ActionController::Base
  include Masq::ApplicationHelper
  protect_from_forgery

  helper_method :page_title, :identity_page?, :home_page?, :scheme
end
