module ArticlesHelper
  def to_date(thisdate)
    thisdate.strftime("%e %B %Y")
  end
end
