class Shift
  attr_reader :key,
              :date

  def initalize
    @key = key
    @date = date
    @key_hash = Hash.new(0)
  end

  def create_key
    @key = rand(99999).to_s.rjust(5, '0')
  end

  def create_date
    @date = Date::today.strftime('%d%m%y')
  end

  def create_key_hash(key)
    key = key.split('').map(&:to_i)
    @key_hash = {
      A: key.values_at(0, 1).join.to_i,
      B: key.values_at(1, 2).join.to_i,
      C: key.values_at(2, 3).join.to_i,
      D: key.values_at(3, 4).join.to_i
    }
  end
end
