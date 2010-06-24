module ApplicationHelper

  #Return a title on a per-page basis.
  def title
    base_title = "Ruby on Rails Tutorial Sample App"
    if @title.nil?
      base_title
    else
      "#{base_title} | #{h(@title)}"  # Sanitize!!!
    end
  end

  #Define a bit of logo action
  def logo
    @logo = image_tag("logo.png", :alt => "Sample App", :class => "round")
  end
end
