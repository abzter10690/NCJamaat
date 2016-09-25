# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(its_id: '30342231' , password: 'abbasisdbest' , email: 'abbas_10690@yahoo.com' ,
        first_name: 'Abbas',
        last_name: 'Hussain',
        user_type: 'A')
User.create(its_id: '30342232' , password: 'abbasisdbest' , email: 'hazra.singaporewala@yahoo.com' ,
        first_name: 'Hazra',
        last_name: 'Singaporewala',
        user_type: 'U')
Event.create(event_name: 'First Moharram Waaz' ,  event_type:'MOHARRAM', event_date: '2016-10-1' , 
	venue: 'Swift Creek',
	event_start_time: '06:00AM', 
	event_end_time: '09:00AM' , 
	instructions: 'Please all be on time')
Event.create(event_name: 'Ashara 1438',  event_type:'MOHARRAM' , event_date: '2016-10-10' , 
	venue: 'Masonic Lodge',
	event_start_time: '06:00AM' , 
	event_end_time:  '09:00AM', 
	instructions: 'Please all be on time')



 