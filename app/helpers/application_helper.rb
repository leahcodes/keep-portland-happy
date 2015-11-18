module ApplicationHelper

  def happy_now?(eat)
    if Time.now.monday?
      if (Time.now.min.to_f/60).between?(eat.mon_happy_start, eat.mon_happy_end)
        true
      else
        false
      end
    elsif Time.now.tuesday?
      if (Time.now.min.to_f/60).between?(eat.tues_happy_start, eat.tues_happy_end)
        true
      else
        false
      end
    elsif Time.now.wednesday?
      if (Time.now.min.to_f/60).between?(eat.wed_happy_start, eat.wed_happy_end)
        true
      else
        false
      end
    elsif Time.now.thursday?
      if (Time.now.min.to_f/60).between?(eat.thur_happy_start, eat.thur_happy_end)
        true
      else
        false
      end
    elsif Time.now.friday?
      if (Time.now.min.to_f/60).between?(eat.fri_happy_start, eat.fri_happy_end)
        true
      else
        false
      end
    elsif Time.now.saturday?
      if (Time.now.min.to_f/60).between?(eat.sat_happy_start, eat.sat_happy_end)
        true
      else
        false
      end
    else Time.now.sunday?
      if (Time.now.min.to_f/60).between?(eat.sun_happy_start, eat.sun_happy_end)
        true
      else
        false
      end
    end
  end

  def today_happy_start(eat)
    if Time.now.monday?
      eat.mon_happy_start
    elsif Time.now.tuesday?
      eat.tues_happy_start
    elsif Time.now.wednesday?
      eat.wed_happy_start
    elsif Time.now.thursday?
      eat.thur_happy_start
    elsif Time.now.friday?
      eat.fri_happy_start
    elsif Time.now.saturday?
      eat.sat_happy_start
    else Time.now.sunday?
      eat.sun_happy_start
    end
  end

  def today_happy_end(eat)
    if Time.now.monday?
      eat.mon_happy_end
    elsif Time.now.tuesday?
      eat.tues_happy_end
    elsif Time.now.wednesday?
      eat.wed_happy_end
    elsif Time.now.thursday?
      eat.thur_happy_end
    elsif Time.now.friday?
      eat.fri_happy_end
    elsif Time.now.saturday?
      eat.sat_happy_end
    else Time.now.sunday?
      eat.sun_happy_end
    end
  end

  def format_time(time)
    formatted_time = []
    hour = time.floor #rounds down
    minutes = ((time-hour)*60).floor #isolates minutes and multiplies by 60, rounding to 2 places
    if hour > 12
      hour_converted = hour - 12
      formatted_time.push(hour_converted)
    else
      formatted_time.push(hour) #push in hour
    end
    if minutes != 0
      formatted_time.push(":") #push in colon
      formatted_time.push(minutes) #push in minute
    end
    if time < 12
      formatted_time.push("am")
    else
      formatted_time.push("pm")
    end
    formatted_time.join("")
  end
end
