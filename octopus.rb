fish_arr = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']

def sluggish_octopus(arr)
  biggest = nil
  for i in 0...arr.length
    for j in 0...arr.length
      fish = arr[i]
      other_fish = arr[j]
      biggest = fish if fish.length < other_fish.length && fish.length > biggest.length
    end
  end
  biggest
end

def dominant_octopus(arr)
  arr.merge_sort.last
end


class Array
  def merge_sort(&prc)
    return self if size <= 1
    mid = size / 2
    left = self[0...mid].merge_sort(&prc)
    right = self[mid..-1].merge_sort(&prc)
    Array.merge(left, right, &prc)
  end

  def self.merge(left, right, &prc)
    prc ||= Proc.new{|x,y| x <=> y}
    sorted = []
    until left.empty? || right.empty?
      sorted << (prc.call(left.first, right.first) < 0 ? left.shift : right.shift)
    end

    sorted + left + right
  end

end

def clever_octopus(arr)
  biggest = arr.first
  arr.each do |el|
    biggest = el if el.length > biggest.length
  end
  biggest
end

tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up" ]
def slow_dance(dir, tiles_array)
  tiles_array.find_index(dir)
end

tiles_hash = {
    "up" => 0,
    "right-up" => 1,
    "right"=> 2,
    "right-down" => 3,
    "down" => 4,
    "left-down" => 5,
    "left" => 6,
    "left-up" => 7
}

def constant_dance(dir, tiles_hash)
  tiles_hash[dir]
end
