class Invoice
  #class method
  def self.print_out
    "Print out invoice"
  end

  #instance method
  def convert_to_pdf
    "Converted to PDF"
  end
end

puts Invoice.print_out
puts Invoice.new.convert_to_pdf