module ApplicationHelper
  def robotar(email)
    image_tag("https://robohash.org/#{email}.png/?size=64x64")
  end
end
