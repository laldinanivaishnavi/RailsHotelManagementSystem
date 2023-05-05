# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#-----------------------------------Hotel------------------------------------
# hotels =Hotel.create!([ 
#     {name: 'Red Fox',
#     address: 'Sector 55',
#     postalcode: '122001',
#     city: 'Gurgaon',
#     country: 'India',
#     totalrooms: 1000,
#     phonenumber: '9890123900',
#     starrating: 4.0,
#     owner_id:4
#    },
   
#    {name: 'Lalit',
#     address: 'Rambagh',
#     postalcode: '110023',
#     city: 'Delhi',
#     country: 'India',
#     totalrooms: 3000,
#     phonenumber: '9876543343',
#     starrating: 5.0,
#     owner_id: 5
#    },
   
#    {name: 'Ghoomar',
#     address: 'Malviya Nagar',
#     postalcode: '132110',
#     city: 'Jaipur',
#     country: 'India',
#     totalrooms: 300,
#     phonenumber: '8299234560',
#     starrating: 4.5,
#     owner_id:6
#    }
# ]) 

# p "Hotels #{Hotel.count} created"

#-----------------------------------RoomType------------------------------

# roomtypes =Roomtype.create([ 
#     {image: 'type1.png',
#      description: 'Executive Suite',
#      facilities: 'lobby area, business services, furniture, and a kitchen.'
#     },
    
#     {image: 'type2.png',
#      description: 'Junior Suite',
#      facilities: 'lobby area, furniture, and a kitchen.'
#     },
    
#     {image: 'type3.png',
#      description: 'Premium Suite',
#      facilities: 'lobby area, premium services, furniture, and a kitchen.'
#     }
# ])

# p "Roomtypes #{Roomtype.count} created"

# #-----------------------------------------Room------------------------------------------

# rooms =Room.create([ 
#     {occupancy: 'Occupied',
#      status: 'Clean',
#      roomtype_id: 4,
#      hotel_id:1
#     },
    
#     {occupancy: 'Available',
#      status: 'Clean',
#      roomtype_id: 5,
#      hotel_id:2
#     },
    
#     {occupancy: 'Occupied',
#      status: 'Clean',
#      roomtype_id: 6,
#      hotel_id:3
#     }
# ])

# p "Rooms #{Room.count} created"

# #------------------------------------------------Bookings-------------------------------------

# bookings =Booking.create!([ 
#     {estarrival: Time.new(2023,05,15,20,0,0),
#      estdeparture: Time.new(2023,05,20,17,0,0),
#      checkin: Time.new(2023,05,15,21,0,0),
#      checkout: Time.new(2023,05,20,16,0,0),
#      numofadults: 2 ,
#      numofchild: 0,
#      specialconcern: 'No',
#      bookingstatus: 'Completed',
#      hotel_id: 1,
#      room_id: 1,
#      user_id: 4
#     },
    
#     {estarrival: Time.new(2023,06,15,20,0,0),
#      estdeparture: Time.new(2023,06,20,17,0,0),
#      checkin: Time.new(2023,06,15,21,0,0),
#      checkout: Time.new(2023,06,20,16,0,0),
#      numofadults: 3 ,
#      numofchild: 1,
#      specialconcern: 'DND',
#      bookingstatus: 'Pending',
#      hotel_id: 2,
#      room_id: 2,
#      user_id: 5
#     },
    
#     {estarrival: Time.new(2023,07,15,20,0,0),
#      estdeparture: Time.new(2023,07,20,17,0,0),
#      checkin: Time.new(2023,07,15,21,0,0),
#      checkout: Time.new(2023,07,20,16,0,0),
#      numofadults: 1 ,
#      numofchild: 0,
#      specialconcern: 'Nothing',
#      bookingstatus: 'Completed',
#      hotel_id: 3,
#      room_id: 3,
#      user_id: 6
#     }
# ])

# p "Bookings #{Booking.count} created"

# #---------------------------------------Guest-------------------------------------

# guests =Guest.create!([ 
#     {name: 'Kamla Singh',
#      age: 22,
#      gender: 'F',
#      phonenumber:'9800122121',
#      aadharnumber:'123409093456' ,
#      booking_id: 1
#     },
    
#     {name: 'Jitendra Yadav',
#      age: 34,
#      gender: 'M',
#      phonenumber:'2453423121',
#      aadharnumber:'132435432132' ,
#      booking_id: 2
#     },
    
#     {name: 'Shoab Ali',
#      age: 32,
#      gender: 'M',
#      phonenumber:'9080900002',
#      aadharnumber:'766543213321' ,
#      booking_id: 3
#     }
# ])

# p "Guests #{Guest.count} created"



# #----------------------------------------------Owner---------------------------------------------

# owners =Owner.create([ 
#     {owned_hotels: 'Red Fox',
#      numofhotels: 1,
#      first_name: 'Ajay',
#      last_name: 'Singh',
#      age: 22 ,
#      phonenumber: '9898789342',
#      email: 'ajaysingh@gmail.com'
#     },
    
#     {owned_hotels: 'Lalit',
#      numofhotels: 1,
#      first_name: 'Sheela',
#      last_name: 'Dixit',
#      age: 32 ,
#      phonenumber: '9895434232',
#      email: 'sheeladixit@gmail.com'
#     },
    
#     {owned_hotels: 'Ghoomar',
#      numofhotels: 1,
#      first_name: 'Rizwan',
#      last_name: 'Alam',
#      age: 27 ,
#      phonenumber: '9879980982',
#      email: 'rizwanalam@gmail.com'
#     }
# ])

# p "Owners #{Owner.count} created"

# #------------------------------------------------User---------------------------------------------

# users =User.create([ 
#     {name: 'Kamla Singh',
#      password: 'user'
#     },
    
#     {name: 'Jitendra Yadav',
#      password: 'user'
#     },
    
#     {name: 'Shoab Ali',
#      password: 'user'
#     }
# ])

# p "Users #{User.count} created"

# #------------------------------------Employee---------------------------------------------

# employeees= Employee.create!([ 
#     {first_name: 'Reeta',
#      last_name: 'Gupta',
#      dob: Date.new(2000,03,03),
#      gender: 'F',
#      phonenumber: '5654653643',
#      email: 'reeta@gmail.com',
#      password: 'employee',
#      salary: 20000,
#      hotel_id: 1,
#      employeerole_id: 4
#     },
    
#     {first_name: 'Kamlesh',
#      last_name: 'Chawla',
#      dob: "1999-07-08",
#      gender: 'M',
#      phonenumber: '9899898902',
#      email: 'kamlesh@gmail.com',
#      password: 'employee',
#      salary: 25000,
#      hotel_id: 2,
#      employeerole_id: 5
#     },
    
#     {first_name: 'Kashish',
#      last_name: 'Singh',
#      dob: "2000-01-02",
#      gender: 'F',
#      phonenumber: '9879880000',
#      email: 'kashish@gmail.com',
#      password: 'employee',
#      salary: 30000,
#      hotel_id: 3,
#      employeerole_id: 6
#     }
# ])

# p "Employees #{Employee.count} created"

# #-------------------------------------EmployeeRole-------------------------------------------

# employeeroles =EmployeeRole.create([ 
#     {title: 'Guard',
#      description: 'Security Guard'
#     },
    
#     {title: 'Cook',
#      description: 'Chef Senior Cook'
#     },
    
#     {title: 'Receptionist',
#      description: 'Desk Receptionist'
#     }
# ])

# p "Employee Roles #{EmployeeRole.count} created"


# #----------------------------------------------------Feedback-----------------------------------------------

# feedbacks= Feedback.create([ 
#     {ratings: 3.0,
#      comments: 'Nice Service',
#      booking_id: 1
#     },
    
#     {ratings: 4.0,
#      comments: 'Infrastructure is good',
#      booking_id: 2
#     },
    
#     {ratings: 4.5,
#      comments: 'Everything is perfect',
#      booking_id: 3
#     }
# ])

# p "Feedbacks #{Feedback.count} created"

# #-------------------------------------------------Bill-------------------------------------------------------

# bills= Bill.create([ 
#     {room_charge: 1000,
#      roomservice_charge: 500,
#      restaurant_charge: 900,
#      bar_charge: 200,
#      misc_charge: 0,
#      iflatecheckout_charge: 0,
#      total_charge: 2600,
#      payment_date: DateTime.parse("15/05/2023 8:00"),
#      payment_mode: 'Online',
#      creditcard_number: '997898996688',
#      creditcard_expiry: DateTime.new(2026,9),
#      transaction_id: '546532134564',
#      transaction_status: 'Successful',
#      booking_id: 1 
#     },
    
#     {room_charge: 1200,
#      roomservice_charge: 800,
#      restaurant_charge: 500,
#      bar_charge: 200,
#      misc_charge: 0,
#      iflatecheckout_charge: 0,
#      total_charge: 2700,
#      payment_date: DateTime.parse("15/06/2023 8:00"),
#      payment_mode: 'Online',
#      creditcard_number: '900898996688',
#      creditcard_expiry: DateTime.new(2026,7),
#      transaction_id: '546532999964',
#      transaction_status: 'Successful',
#      booking_id: 2
#     },
    
#     {room_charge: 2000,
#      roomservice_charge: 500,
#      restaurant_charge: 900,
#      bar_charge: 200,
#      misc_charge: 0,
#      iflatecheckout_charge: 0,
#      total_charge: 3600,
#      payment_date: DateTime.parse("15/07/2023 8:00"),
#      payment_mode: 'Online',
#      creditcard_number: '997898990008',
#      creditcard_expiry: DateTime.new(2026,2),
#      transaction_id: '546532000564',
#      transaction_status: 'Successful',
#      booking_id: 3
#     }
# ])

# p "Bills #{Bill.count} created"