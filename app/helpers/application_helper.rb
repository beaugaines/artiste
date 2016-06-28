module ApplicationHelper
  def robotar(email)
    image_tag("https://robohash.org/#{email}.png/?size=64x64")
  end

  def foundation_key(key)
    {alert: 'alert', notice: 'primary'}[key.to_sym]
  end

  def lorem_blather
    ((FFaker::BaconIpsum.words(rand(4..8)) << FFaker::CheesyLingo.words(rand(4..8)) << FFaker::HealthcareIpsum.words(rand(4..8)) << FFaker::HipsterIpsum.words(rand(4..8))).shuffle.join(' ')  << '!').capitalize
  end
end
