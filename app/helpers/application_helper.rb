module ApplicationHelper

  def happy_now?(eat)
    now = Time.now
    if now.monday?
      if ((now.hour) + (now.min.to_f/60)).between?(eat.mon_happy_start, eat.mon_happy_end)
        true
      else
        false
      end
    elsif now.tuesday?
      if ((now.hour) + (now.min.to_f/60)).between?(eat.tues_happy_start, eat.tues_happy_end)
        true
      else
        false
      end
    elsif now.wednesday?
      if ((now.hour) + (now.min.to_f/60)).between?(eat.wed_happy_start, eat.wed_happy_end)
        true
      else
        false
      end
    elsif now.thursday?
      if ((now.hour) + (now.min.to_f/60)).between?(eat.thur_happy_start, eat.thur_happy_end)
        true
      else
        false
      end
    elsif now.friday?
      if ((now.hour) + (now.min.to_f/60)).between?(eat.fri_happy_start, eat.fri_happy_end)
        true
      else
        false
      end
    elsif now.saturday?
      if ((now.hour) + (now.min.to_f/60)).between?(eat.sat_happy_start, eat.sat_happy_end)
        true
      else
        false
      end
    else now.sunday?
      if ((now.hour) + (now.min.to_f/60)).between?(eat.sun_happy_start, eat.sun_happy_end)
        true
      else
        false
      end
    end
  end

  def today_happy_start(eat)
    now = Time.now
    if now.monday?
      eat.mon_happy_start
    elsif now.tuesday?
      eat.tues_happy_start
    elsif now.wednesday?
      eat.wed_happy_start
    elsif now.thursday?
      eat.thur_happy_start
    elsif now.friday?
      eat.fri_happy_start
    elsif now.saturday?
      eat.sat_happy_start
    else now.sunday?
      eat.sun_happy_start
    end
  end

  def today_happy_end(eat)
    now = Time.now
    if now.monday?
      eat.mon_happy_end
    elsif now.tuesday?
      eat.tues_happy_end
    elsif now.wednesday?
      eat.wed_happy_end
    elsif now.thursday?
      eat.thur_happy_end
    elsif now.friday?
      eat.fri_happy_end
    elsif now.saturday?
      eat.sat_happy_end
    else now.sunday?
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

  def display_in_stars(eat)
     (if eat.average_rating.between?(0, 1.5)
       "<span class='glyphicon glyphicon-star'></span>"
     elsif eat.average_rating.between?(1.5, 2.5)
       "<span class='glyphicon glyphicon-star'></span> <span class='glyphicon glyphicon-star'></span>"
     elsif eat.average_rating.between?(2.5, 3.5)
        "<span class='glyphicon glyphicon-star'></span> <span class='glyphicon glyphicon-star'></span> <span class='glyphicon glyphicon-star'></span>"
     elsif eat.average_rating.between?(3.5, 4.5)
      "<span class='glyphicon glyphicon-star'></span> <span class='glyphicon glyphicon-star'></span> <span class='glyphicon glyphicon-star'></span> <span class='glyphicon glyphicon-star'></span>"
     else eat.average_rating.between?(4.5, 5)
        "<span class='glyphicon glyphicon-star'></span> <span class='glyphicon glyphicon-star'></span> <span class='glyphicon glyphicon-star'></span> <span class='glyphicon glyphicon-star'></span> <span class='glyphicon glyphicon-star'></span>"
     end).html_safe
  end
end
