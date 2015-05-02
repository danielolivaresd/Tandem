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
		avatar: URI.parse("http://www.stealthmediagroup.co.uk/wp-content/uploads/2014/05/IMG_3473.jpg"),
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
		avatar: URI.parse("http://www.topdrawersoccer.com/the91stminute/wp-content/uploads/2012/08/Random-guy.jpg"),
		skype_username: "b@a"
	}
])

Language.destroy_all
Language.create!([
	{
		name:"Afrikaans"
	},
	{
		name:"Albanian"
	},
	{
		name:"Arabic"
	},
	{
		name:"Armenian"
	},
	{
		name:"Basque"
	},
	{
		name:"Bulgarian"
	},
	{
		name:"Czech"
	},
	{
		name:"Chinese"
	},
	{
		name:"Croatian"
	},
	{
		name:"Danish"
	},
	{
		name:"Dutch"
	},

	{
		name:"English"
	},
	{
		name:"Farsi"
	},
	{
		name:"Finnish"
	},
	{
		name:"French"
	},
	{
		name:"German"
	},
	{
		name:"Greek"
	},
	{
		name:"Hebrew"
	},
	{
		name:"Hindi"
	},
	{
		name:"Hungarian"
	},
	{
		name:"Icelandic"
	},
	{
		name:"Italian"
	},
	{
		name:"Japanese"

	},
	{
		name:"Korean"
		
	},
	{
		name:"Kurdish"
		
	},
	{
		name:"Lithuanian"
		
	},
	{
		name:"Macedonian"
		
	},
	{
		name:"Polish"
		
	},
	{
		name:"Russian"
		
	},
	{
		name:"Swedish"
		
	},
	{
		name:"Spanish"
		
	},
	{
		name:"Turkish"
		
	},
	{
		name:"Ucrainian"
		
	},
	{
		name:"Viernamese"
		
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


