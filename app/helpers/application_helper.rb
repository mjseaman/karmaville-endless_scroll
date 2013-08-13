module ApplicationHelper

  def num_pages
    User.count / 50
  end

end
