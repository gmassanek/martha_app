module ApplicationHelper

  
  def title
    base_title = "Acute Care Leadership Summit"
    if @title.nil?
      base_title
    else
      "#{base_title} | #{@title}"
    end
  end
  def menu_link_to(name, options = {}, html_options = {})
    class_info = html_options[:class]
    class_info = "#{class_info} current"
    html_options.merge!({ :class => class_info }) if current_page?(options)
    link_to name, options, html_options
  end
end


