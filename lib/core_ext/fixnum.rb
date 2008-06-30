class Fixnum
  def minute; self * 60;         end; def minutes; minute; end
  def hour;   self * 60.minutes; end; def hours;   hour;   end
  def day;    self * 24.hours;   end; def days;    day;    end
  def week;   self * 7.days;     end; def weeks;   week;   end
  def month;  self * 30.days;    end; def months;  month;  end
end
