class VaccSite < ApplicationRecord
  def self.any_slots?
    all.map do |site|
      {id: site.id, type: site.check_handler, slots?: site.has_slots?}
    rescue => e
      puts e.message
      {id: site.id, type: site.check_handler, slots?: nil}
    end
  end

  def raw
    Hashie::Mash.new(JSON.parse(`curl '#{check_url}'`))
  end

  def handler
    self.check_handler.constantize.new(raw)
  end

  delegate :has_slots?, :describe_slots, to: :handler
end
