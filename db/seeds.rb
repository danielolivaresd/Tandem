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
		name:"French"
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
])

p "#{Language.all.count} languages created."
p "#{UserLanguage.all.count} user languages created."