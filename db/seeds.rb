User.destroy_all
User.create!([
	{
		email:"a@a.com",
		password: "password",
		first_name: "A",
		last_name: "Nice Guy",
		date_of_birth: 10.years.from_now,
		country: "Mexico",
		state: "San Luis Potosi",
		city: "San Luis Potosi",
		sex: "Male",
		#avatar: File.new("#{Rails.root}/app/assets/images/daniel.png")
	},
	{
		email:"b@a.com",
		password: "password",
		first_name: "A",
		last_name: "Nice Guy",
		date_of_birth: 10.years.from_now,
		country: "Mexico",
		state: "San Luis Potosi",
		city: "San Luis Potosi",
		sex: "Male",
		#avatar: File.new("#{Rails.root}/app/assets/images/daniel.png")
	}
])

Language.destroy_all
Language.create!([
	{
		name:"Mandarin"
	},
	{
		name:"English"
	},
	{
		name:"Spanish"
	},
	{
		name:"Arabic"
	},
	{
		name:"Bengali"
	},
	{
		name:"Hindi"
	},
	{
		name:"Russian"
	},
	{
		name:"Portuguese"
	},
	{
		name:"Japanese"
	},
	{
		name:"German"
	},
	{
		name:"Chinese"
	},
	{
		name:"Javanese"
	},
	{
		name:"Korean"
	},
	{
		name:"French"
	},
	{
		name:"Turkish"
	},
	{
		name:"Vietnamese"
	},
	{
		name:"Telugu"
	},
	{
		name:"Marathi"
	},
	{
		name:"Tamil"
	},
	{
		name:"Italian"
	},
	{
		name:"Urdu"
	},
	{
		name:"Polish"
	},
	{
		name:"Thai"
	},
	{
		name:"Ukrainian"
	},
	{
		name:"Persian"
	},
	{
		name:"Malayam"
	},
	{
		name:"Kannada"
	},
	{
		name:"Oriya"
	},
	{
		name:"Romanian"
	},
	{
		name:"Finnish"
	}

])
english = Language.find_by(name:"English")
spanish = Language.find_by(name:"Spanish")
german = Language.find_by(name:"German")
french = Language.find_by(name:"French")

UserLanguage.destroy_all
UserLanguage.create!([
	{
		user: User.first,
		language: english,
		level: 10,
		is_native: true
	},
	{
		user: User.first,
		language: spanish,
		level: 3,
		is_native: false
	},
	{
		user: User.last,
		language: spanish,
		level: 10,
		is_native: true
	},
	{
		user: User.last,
		language: english,
		level: 3,
		is_native: false
	}
])

LanguageInterest.destroy_all
LanguageInterest.create!([
	{
		user: User.first,
		language: spanish,
		actual_level: 3
	},
	{
		user: User.last,
		language: english,
		actual_level: 3
	},
])

p "#{User.all.count} users created."
p "#{Language.all.count} languages created."
p "#{UserLanguage.all.count} user languages created."
p "#{LanguageInterest.all.count} language interests created."