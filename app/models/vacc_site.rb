class VaccSite < ApplicationRecord
  def self.any_slots?
    all.map do |site|
      {id: site.id, type: site.type, slots?: site.has_slots?}
    rescue => e
      puts e.message
      {id: site.id, type: site.type, slots?: nil}
    end
  end

  def raw
    Hashie::Mash.new(JSON.parse(`curl '#{check_url}'`))
  end

  def render_url
    format(template, JSON.parse(self.meta).symbolize_keys)
  end
end
