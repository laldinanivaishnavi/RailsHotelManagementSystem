class Bill < ApplicationRecord
  belongs_to :booking
  validates :room_charge,:total_charge,:payment_date,:payment_mode,:transaction_id,:transaction_status,presence: true
  validates :room_charge,:total_charge, numericality: true
  validates :creditcard_number,:creditcard_expiry,presence: true
  before_create :calculate_charges,:generate_transaction_id,:set_default_transaction_status
  
  private
  def calculate_charges()
    puts "@booking #{booking.inspect}"
    puts "checkin #{booking.checkin}"
    check_in_date=booking.checkin.to_date
    check_out_date=booking.checkout.to_date
    days=check_out_date-check_in_date
    hotel_id = booking.hotel_id
    roomtype_id = booking.room.roomtype_id
    puts "check in #{check_in_date}"
    puts "check out #{check_out_date}"
    puts "Days #{days}"
    puts "hotel id #{hotel_id}"
    puts "room type id #{roomtype_id}"
    if hotel_id ==1
      if roomtype_id==4
        self.room_charge=days*500
      elsif roomtype_id==5
        self.room_charge=days*400
      else 
        self.room_charge=600
      end
    elsif hotel_id ==2
      if roomtype_id==4
        self.room_charge=days*800
      elsif roomtype_id==5
        self.room_charge=days*700
      else 
        self.room_charge=days*900
      end
    elsif hotel_id ==3
      if roomtype_id==4
        self.room_charge=days*1100
      elsif roomtype_id==5
        self.room_charge=days*1000
      else 
        self.room_charge=days*1200
      end
    end
  self.roomservice_charge=days*100
  self.restaurant_charge=days*1000
  self.bar_charge=days*900
  self.misc_charge=0
  self.iflatecheckout_charge=0
  self.total_charge=self.room_charge+self.roomservice_charge+self.restaurant_charge+self.bar_charge+self.misc_charge+self.iflatecheckout_charge
  puts "Room charge #{self.room_charge}"
  puts "Room service charge #{self.roomservice_charge}"
  puts "Restaurant charge #{self.restaurant_charge}"
  puts "Bar charge #{self.bar_charge}"
  puts "Misc Charge #{self.misc_charge}"
  puts "If late checkout charge #{self.iflatecheckout_charge}"
  puts "Total charge #{self.total_charge}"
  end

  def generate_transaction_id
    self.transaction_id=SecureRandom.uuid
    puts "Txn Id #{self.transaction_id}"
  end
  
  def set_default_transaction_status
    self.transaction_status="paid"
    puts "Txn status #{self.transaction_status}"
  end
  
  public
  def calculate_values(booking)
    set_default_transaction_status
    generate_transaction_id
    calculate_charges(booking)
  end

end
