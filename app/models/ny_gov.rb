class NyGov < VaccSite
  def describe_slots
    raw.providerList.select {|s| s.availableAppointments != "NAC"}
  end

  def has_slots?
    describe_slots.any?
  end
end