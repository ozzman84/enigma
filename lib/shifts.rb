class Shift
  attr_reader :key,
              :date

  def initalize
    @key = key
    @date = date
  end

  def create_key
    @key = rand(99999).to_s.rjust(5, '0')
  end

  def create_date
    @date = Date::today.strftime('%d%m%y')
  end
end
