class Array
  def my_uniq
    uniqs = []

    self.each { |el| uniqs << el unless uniqs.include?(el) }

    uniqs
  end

  def two_sum
    pairs = []

    (0...self.length).each do |i|
      ((i+1)...self.length).each do |j|
        pairs << [i, j] if (self[i] + self[j]) == 0
      end
    end

    pairs
  end

  def my_transpose
    self.transpose
  end

  def stock_picker
    #self.each {|el| p el.class}
    raise("Array includes non numbers") if self.any? do |el|
      el.class != Fixnum && el.class != Float
    end

    pair = nil
    difference = nil

    (0...self.length).each do |i|
      ((i+1)...self.length).each do |j|
        if difference.nil? || ((self[j] - self[i]) > difference)
          difference = self[j] - self[i]
          pair = [i, j]
        end
      end
    end

    pair
  end
end
