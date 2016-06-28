module ApplicationHelper
  def robotar(email)
    image_tag("https://robohash.org/#{email}.png/?size=64x64")
  end

  def foundation_key(key)
    {alert: 'alert', notice: 'primary'}[key.to_sym]
  end
end
