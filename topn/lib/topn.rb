class Topn
  def self.get_sorted_n(filename)
    contents_array = []
    filename       = open("#{filename}")
    filename.each_line { |line| contents_array << line.chomp.to_i }
    filename.close
    contents_array = contents_array.uniq
    sorted         = contents_array.sort{|y,x| x.zero? ? 1 : x<=>y}
    return sorted[0..5]
  end
end
