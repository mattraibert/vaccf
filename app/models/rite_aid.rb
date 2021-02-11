class RiteAid < VaccSite

  # https://www.riteaid.com/services/ext/v2/stores/getStores?address=11238&attrFilter=PREF-112&fetchMechanismVersion=2&radius=50

  def has_slots?
    raw.Data.slots["1"]
  end

  def describe_slots
    raw if has_slots?
  end

  def template
    "https://www.riteaid.com/services/ext/v2/vaccine/checkSlots?storeNumber=%<storeNumber>d"
  end
end
