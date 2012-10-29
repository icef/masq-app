module ApplicationHelper
  # Renders a navigation element and marks it as active where
  # appropriate. See active_page? for details
  def nav(name, url, pages = nil, active = false)
    content_tag :li, link_to(name, url), :class => (active || (pages && active_page?(pages)) ? 'act' : nil)
  end
end
