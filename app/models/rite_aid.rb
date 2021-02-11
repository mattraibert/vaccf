class RiteAid
  def initialize(raw)
    @raw = raw
  end

  def has_slots?
    @raw.Data.slots["1"]
  end

  def describe_slots
    @raw if has_slots?
  end
end
