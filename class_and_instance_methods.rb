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


class BetterComputer
  attr_accessor :ports, :display, :number_of_keys, :processor_type
 @@trackpad = true

 def initialize(options={})
   @ports = options[:ports]
   @display = options[:display]
   @number_of_keys = options[:number_of_keys]
   @processor_type = options[:processor]
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


comp = {ports: 4, display: "vdu", number_of_keys: 128, processor: "intel i7"}


@better_computer = BetterComputer.new(comp)
puts @better_computer.usb_ports



class SupremeComputer
  attr_accessor :ports, :display, :number_of_keys, :processor_type
 @@trackpad = true

 def initialize(options={})
   @ports = options.fetch(:ports, 6)
   @display = options.fetch(:vdu, "CRT")
   @number_of_keys = options.fetch(:number_of_keys, 110)
   @processor_type = options.fetch(:processor_type, "intel i3")
 end

 def usb_ports
   "has #{@ports} ports"
 end

 def vdu
   "Visual Display Unit Type: #{@display}"
 end

 def processor
   "the processor is: #{@processor_type}"
 end

 def keyboard
   "the keyboard has #{@number_of_keys} keys"
 end

 def self.has_trackpad
   @@trackpad
 end
end

supreme_computer = {ports: 4, display: "vdu", number_of_keys: 128, processor: "intel i7"}

@supreme = SupremeComputer.new(supreme_computer)

puts @supreme.keyboard

missing_parts = {}

@supreme3 = SupremeComputer.new(missing_parts)
puts @supreme3.processor
