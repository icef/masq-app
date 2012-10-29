class ApplicationController < ActionController::Base
  include Masq::ApplicationHelper
  protect_from_forgery

  helper_method :page_title, :identity_page?, :home_page?, :scheme,
                :active_page?, :checkid_request

  layout 'masq/application'
end
