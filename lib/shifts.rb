class Shift
  attr_reader :key,
              :date,
              :key_hash,
              :offsets_hash

  def initalize
    @key          = key
    @date         = date
    @key_hash     = Hash.new(0)
    @offsets_hash = Hash.new(0)
  end

  def create_key
    # @key = rand(99999).to_s.rjust(5, '0')
    @key = '02715'
  end

  def create_date
    # @date = Date::today.strftime('%d%m%y')
    @date = '040895'
  end

  def create_key_hash
    key_arr   = @key.split('').map(&:to_i)
    @key_hash = {
      :A => key_arr.values_at(0, 1).join.to_i,
      :B => key_arr.values_at(1, 2).join.to_i,
      :C => key_arr.values_at(2, 3).join.to_i,
      :D => key_arr.values_at(3, 4).join.to_i
    }
  end

  def create_offsets_hash
    date_arr      = @date.to_i * @date.to_i
    date_arr      = date_arr.to_s.split('')
    @offsets_hash = {
      :D => date_arr.pop.to_i,
      :C => date_arr.pop.to_i,
      :B => date_arr.pop.to_i,
      :A => date_arr.pop.to_i
    }
  end

  def create_shift_hash
    create_key_hash.merge(create_offsets_hash)
  end
end
