module PostsHelper
  def format_date(date, format=:long, blank_message="&nbsp;")
    date.blank? ? blank_message : date.to_s(format)
  end
end
