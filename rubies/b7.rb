Interval = Struct.new(:start, :finish)

def merge_intervals(intervals)
    intervals.sort_by! {|interval| interval.start}
    merged = []
    merged << intervals[0]

    i = 1
    while i < intervals.length 
        current = intervals[i]
        last_merged = merged.last
        if current.start <= last_merged.finish
            if current.finish > last_merged.finish
                last_merged.finish = current.finish
            end
        else
            merged << current
        end
        i += 1
    end
    merged
end

n = gets.chomp.to_i
intervals = []
while n != 0
    start = gets.chomp.to_i
    finish = gets.chomp.to_i
    intervals << Interval.new(start, finish)
    n -= 1
end

result = merge_intervals(intervals)
p result.map { |item| [item.start, item.finish] }

# 4
# 1 3 2 6 8 10 15 18 