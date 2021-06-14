class Shift
  attr_reader :key,
              :date

  def initalize
    @key      = key
    @date     = date
    @key_hash = key_hash
  end

  def create_key
    @key = rand(99999).to_s.rjust(5, '0')
  end

  def create_date
    @date = Date::today.strftime('%d%m%y')
  end

  def create_key_hash(key)
    key_arr   = key.split('').map(&:to_i)
    @key_hash = {
      A: key_arr.values_at(0, 1).join.to_i,
      B: key_arr.values_at(1, 2).join.to_i,
      C: key_arr.values_at(2, 3).join.to_i,
      D: key_arr.values_at(3, 4).join.to_i
    }
  end

  def create_offsets_hash(date)
    date_arr  = date.to_i * date.to_i
    date_arr  = date_arr.to_s.split('')
    @offsets_hash = {
      D: date_arr.pop.to_i,
      C: date_arr.pop.to_i,
      B: date_arr.pop.to_i,
      A: date_arr.pop.to_i
    }
  end
end
