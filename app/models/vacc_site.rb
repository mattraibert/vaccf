class VaccSite < ApplicationRecord
  def self.any_slots?
    all.map do |site|
      { id: site.id, type: site.type, slots?: site.has_slots? }
    rescue => e
      puts e.message
      { id: site.id, type: site.type, slots?: nil }
    end
  end

  def raw
    response = check_cache(check_url) { `curl '#{check_url}'` }
    Hashie::Mash.new(JSON.parse(response))
  end

  def render_url
    format(template, JSON.parse(self.meta).symbolize_keys)
  end

  def check_cache(key)
    cache_read = Rails.cache.read(key)
    return cache_read if cache_read.present?

    response = yield
    Rails.cache.write(key, response, expires_in: 1.minute)
    response
  end
end
