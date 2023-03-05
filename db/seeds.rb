puts "🌱 Seeding Hosts"
Host.create(full_name:"Ashley Jones", email:"Ashley123@gmail.com", phone_number:"301-235-2763", address:"123 Bright Road , Lanham MD 20773", verified:true)
Host.create(full_name:"Joseph Banks", email:"JB123@outlook.com", phone_number:"301-382-8362", address:"986 Circle Drive , Scranton PA 12865", verified:true)
Host.create(full_name:"Lola James", email:"Lola456@gmail.com", phone_number:"301-735-2827", address:"754 Dream Court , Gambrills MD 20976", verified:false)

puts "🌱 Seeding Homes"
Home.create(title:"Quirky Beachfront Stay", category:"House", description: "beautiful stay away from home", price:387 , guest_capacity:8, location: "123 Ocean Drive, Virginia Beach VA 12923", host_id:1)
Home.create(title:"Peaceful City Stay", category:"Apartment", description: "calm city sound with great views", price:157 , guest_capacity:4, location: "18 Calm Corner, Washington DC 12987", host_id:2)
Home.create(title:"Lively Party Home", category:"House", description: "bright party spot", price:500 , guest_capacity:12, location: "187 Part Way , Miami Florida 28521", host_id:2)
Home.create(title:"Rich cute condo", category:"Condo", description: "comfortable stay for work", price:287 , guest_capacity:4, location: "986 Work Road, Columbia, MD 20865", host_id:3)

puts "✅ Done seeding!"
