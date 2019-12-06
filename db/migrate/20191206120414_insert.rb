class Insert < ActiveRecord::Migration[6.0]
  def change
  	User.create name:'Linguini', password:'12345'
  	User.create name:'ChiefOfHapiness', password:'12345'

	Pastry.create name:'Financier'
	Pastry.create name:'Cookies'
	Pastry.create name:'Cornes de gazelle'
	Pastry.create name:'Churros'
	Pastry.create name:'Flan'
	Pastry.create name:'Fruits'

	Employee.create name:'Antoine' , id_speciality:1
	Employee.create name:'Maïa' , id_speciality:1
	Employee.create name:'Xavier' , id_speciality:2
	Employee.create name:'Matthieu' , id_speciality:2
	Employee.create name:'Rym' , id_speciality:3
	Employee.create name:'Aran' , id_speciality:4
	Employee.create name:'Inès' , id_speciality:4
	Employee.create name:'Marguerite' , id_speciality:5
	Employee.create name:'Roxane' , id_speciality:5
	Employee.create name:'Sophie' , id_speciality:6
	Employee.create name:'Ahmed' , id_speciality:6
	Employee.create name:'Maxime' , id_speciality:6


  end
end
