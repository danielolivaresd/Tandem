User.destroy_all
User.create!([
	{
		email:"a@a.com",
		password: "password",
		first_name: "Javier",
		last_name: "Martínez",
		date_of_birth: 10.years.from_now,
		country: "Mexico",
		state: "San Luis Potosi",
		city: "San Luis Potosi",
		sex: "Male",
		# avatar: URI.parse("http://www.stealthmediagroup.co.uk/wp-content/uploads/2014/05/IMG_3473.jpg"),
		skype_username: "a@a"
	},
	{
		email:"b@a.com",
		password: "password",
		first_name: "Chris",
		last_name: "Tucker",
		date_of_birth: 10.years.from_now,
		country: "USA",
		state: "San Luis Potosi",
		city: "San Luis Potosi",
		sex: "Male",
		# avatar: URI.parse("http://www.topdrawersoccer.com/the91stminute/wp-content/uploads/2012/08/Random-guy.jpg"),
		skype_username: "b@a"
	}
])

Language.destroy_all
Language.create!([
	{
		name:"English"
	},
	{
		name:"Spanish"
	},
	{
		name:"German"
	},
	{
		name:"Chinese"
	},
	{
		name:"Arabic"
	},
	{
		name:"Hindi"
	},
	{
		name:"Bengali"
	},
	{
		name:"Portuguese"
	},
	{
		name:"Russian"
	},
	{
		name:"Japanese"
	},
	{
		name:"Korean"
	},
	{
		name:"Vietnamese"
	},
	{
		name:"Telugu"
	},
	{
		name:"Kiswahili"
	},
	{
		name:"Marathi"
	},
	{
		name:"Tamil"
	},
	{
		name:"Javanese"
	},
	{
		name:"Turkish"
	},
	{
		name:"French"
	}
])
english = Language.find_by(name:"English")
spanish = Language.find_by(name:"Spanish")
german = Language.find_by(name:"German")
french = Language.find_by(name:"French")
chinese = Language.find_by(name:"Chinese")
arabic = Language.find_by(name:"Arabic")
hindi = Language.find_by(name:"Hindi")
bengali = Language.find_by(name:"Bengali")
portuguese = Language.find_by(name:"Portuguese")
russian = Language.find_by(name:"Russian")
japanese = Language.find_by(name:"Japanese")
korean = Language.find_by(name:"Korean")
vietnamese = Language.find_by(name:"Vietnamese")
telugu = Language.find_by(name:"Telugu")
kiswahili = Language.find_by(name:"Kiswahili")
marathi = Language.find_by(name:"Marathi")
tamil = Language.find_by(name:"Tamil")
javanese = Language.find_by(name:"Javanese")
turkish = Language.find_by(name:"Turkish")

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
		level: 9,
		is_native: false
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

Match.destroy_all

p "#{User.all.count} users created."
p "#{Language.all.count} languages created."
p "#{UserLanguage.all.count} user languages created."
p "#{LanguageInterest.all.count} language interests created."
p "#{Match.all.count} Matches found"
p "#{MatchUser.all.count} Match Users found"
p "#{MatchLanguage.all.count} Match Languages found"
