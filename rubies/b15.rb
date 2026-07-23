def shortest_path(graph, start, target)
  queue = [start]
  visited = {start => true}
  parent = {}

  until queue.empty?
    current = queue.shift

    break if current == target

    graph[current].each do |neighbor|
      next if visited[neighbor]
      visited[neighbor] = true
      parent[neighbor] = current
      queue << neighbor
    end
  end
  return [] if !visited[target]

  path = []
  node = target

  while node != nil
    path << node 
    node = parent[node]
  end

  path.reverse
end

graph = {
  "A" => ["B", "C"],
  "B" => ["D"],
  "C" => ["E"],
  "D" => ["F"],
  "E" => ["F"],
  "F" => []
}

complex_graph = {
  "Kho_Tong_HN" => ["Bac_Ninh", "Thai_Nguyen", "Ninh_Binh"],

  "Bac_Ninh"    => ["Hai_Phong", "Quang_Ninh", "Thai_Nguyen"],
  "Thai_Nguyen" => ["Bac_Ninh", "Kho_Tong_HN"],
  "Hai_Phong"   => ["Quang_Ninh", "Vinh"],
  "Quang_Ninh"  => ["Hai_Phong"], 

  "Thanh_Hoa"   => ["Vinh", "Hue"],
  "Vinh"        => ["Thanh_Hoa", "Dong_Hoi"],
  "Dong_Hoi"    => ["Hue"],
  "Hue"         => ["Da_Nang", "Quang_Ngai"],

  "Da_Nang"     => ["Quy_Nhon", "Kon_Tum"],
  "Kon_Tum"     => ["Gia_Lai"],
  "Gia_Lai"     => ["Buon_Ma_Thuot", "Quy_Nhon"],
  "Quy_Nhon"    => ["Nha_Trang"],
  "Quang_Ngai"  => ["Quy_Nhon"],

  "Ca_Mau"      => [], 
  "Dao_Phu_Quoc"=> [],

  "Nha_Trang"   => ["Phan_Thiet", "Da_Lat"],
  "Buon_Ma_Thuot"=> ["Da_Lat", "TPHCM"],
  "Da_Lat"      => ["TPHCM"],
  "Phan_Thiet"  => ["TPHCM", "Vung_Tau"],
  "Vung_Tau"    => ["TPHCM"],

  "TPHCM"       => ["Can_Tho", "Long_An", "Vung_Tau"],
  "Long_An"     => ["My_Tho"],
  "My_Tho"      => ["Can_Tho"],
  "Can_Tho"     => ["Rach_Gia", "Ca_Mau"],
  "Rach_Gia"    => ["Dao_Phu_Quoc"] 
}

p shortest_path(complex_graph, "Hai_Phong", "Vung_Tau")
