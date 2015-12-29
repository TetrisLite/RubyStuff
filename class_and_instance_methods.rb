class Computer
  attr_accessor :ports, :display, :number_of_keys, :processor_type
  @@trackpad = true

  def initialize(ports, display, number_of_keys, processor_type)
    @ports = ports
    @display = display
    @number_of_keys = number_of_keys
    @processor = processor_type
  end

  def usb_ports
    "has #{@ports} ports"
  end

  def vdu
    "Visual Display Unit Type: #{@display}"
  end

  def processor
    "the processor is: #{@processor}"
  end

  def keyboard
    "the keyboard has #{@number_of_keys} keys"
  end

  def self.has_trackpad
    @@trackpad
  end
end


@dell = Computer.new(4, "LCD", 128, "Intel i5")

puts @dell.usb_ports
puts @dell.vdu
puts @dell.processor
puts @dell.keyboard
puts @dell.class.has_trackpad
