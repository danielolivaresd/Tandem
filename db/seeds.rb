User.destroy_all
User.create!([
	{
		username: "Kinslayer",
		password: "3NCRYPT3D",
		name: "Daniel Olivares",
		email: "danieloddl2@hotmail.com",
		city: "San Luis Potosí", 
		country: "Mexico",
		birth_date: 18.years.ago - 52.days
	},
	{
		username: "El_Gaddys",
		password: "ILoveMachotes",
		name: "Gaddyel Enriquez",
		email: "gaddyel@gmail.com",
		city: "San Luis Potosí", 
		country: "Mexico",
		birth_date: 24.years.ago + 52.days	
	}])

Language.destroy_all
Language.create!([
	{
		name: "Spanish",
		country: "Mexico"
	},
	{
		name: "English",
		country: "United States"
	},
	{
		name: "German",
		country: "Germany"
	}])

UserLanguage.destroy_all
UserLanguage.create!([
	{
		user: User.first,
		language: Language.first
	},
	{
		user: User.first,
		language: Language.last
	},
	{
		user: User.last,
		language: Language.where(name: "English").first
	}])

LanguageInterest.destroy_all
LanguageInterest.create!([
	{
		user: User.first,
		language: Language.where(name: "English").first
	},
	{
		user: User.last,
		language: Language.first
	}])

Offer.destroy_all
Offer.create!([{
		user_language: UserLanguage.first,
		cost: nil,
		sessions: 5,
		session_mode: "Virtual",
		start_date: 1.day.from_now,
		end_date: 20.days.from_now,
		city: nil
	},
	{
		user_language: UserLanguage.where(language: Language.last).first,
		cost: 200,
		sessions: 4,
		session_mode: "Real",
		start_date: 1.day.from_now,
		end_date: 20.days.from_now,
		city: "San Luis Potosi"
	}])

Match.destroy_all
Match.create([{
		offer: Offer.first,
		user: User.last
	}])

p "#{User.count} Users created."
p "#{Language.count} Languages created."
p "#{UserLanguage.count} User Languages created."
p "#{LanguageInterest.count} Language Interests created."
p "#{Offer.count} Offers created."
p "#{Match.count} Matches created."