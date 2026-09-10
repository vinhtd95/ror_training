# Dọn dẹp dữ liệu cũ và reset id về 1
Product.destroy_all
ActiveRecord::Base.connection.execute("DELETE FROM sqlite_sequence WHERE name = 'products'")

products_data = [
  {
    name: "iPhone 16 Pro Max",
    inventory_count: 10,
    description: "<p>Điện thoại thông minh cao cấp nhất của Apple với chip A18 Pro và camera nâng cấp mạnh mẽ.</p>"
  },
  {
    name: "MacBook Pro M3",
    inventory_count: 5,
    description: "<p>Máy tính xách tay hiệu năng cao dành cho lập trình viên và nhà sáng tạo nội dung chuyên nghiệp.</p>"
  },
  {
    name: "AirPods Pro 2",
    inventory_count: 0, # Số lượng 0 (hết hàng) để kiểm tra tính năng form đăng ký nhận thông báo (Subscriber)
    description: "<p>Tai nghe chống ồn chủ động xuất sắc, âm thanh không gian sống động.</p>"
  },
  {
    name: "Bàn phím cơ Keychron K2",
    inventory_count: 15,
    description: "<p>Bàn phím cơ layout 75%, hỗ trợ kết nối Bluetooth và Type-C, tương thích cả Mac và Windows.</p>"
  },
  {
    name: "Chuột Logitech MX Master 3S",
    inventory_count: 20,
    description: "<p>Chuột không dây công thái học cao cấp với con lăn siêu tốc MagSpeed và cảm biến 8000 DPI.</p>"
  }
]

products_data.each do |data|
  Product.create!(data)
end

puts "Đã tạo thành công #{Product.count} sản phẩm!"
