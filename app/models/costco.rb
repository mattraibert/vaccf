class Costco
  def initialize(raw)
    @raw = raw
  end

  def has_slots?
    @raw.data.gridHours.any?
  end

  def describe_slots
    @raw if has_slots?
  end

  x = "https://book-costcopharmacy.appointment-plus.com/book-appointment/get-grid-hours?startTimestamp=2021-02-09+15%3A47%3A25&endTimestamp=2021-03-11+00%3A00%3A00&limitNumberOfDaysWithOpenSlots=5&employeeId=4837&services%5B%5D=119&numberOfSpotsNeeded=1&isStoreHours=true&clientMasterId=421311&toTimeZone=false&fromTimeZone=149&_=1612903630184"
  y = "https://book-costcopharmacy.appointment-plus.com/book-appointment/get-grid-hours?startTimestamp=2021-02-09+15%3A47%3A25&endTimestamp=2021-03-11+00%3A00%3A00&limitNumberOfDaysWithOpenSlots=5&employeeId=4837&services%5B%5D=119&numberOfSpotsNeeded=1&isStoreHours=true&clientMasterId=421311&toTimeZone=false&fromTimeZone=149&_=1612903630184"
end

