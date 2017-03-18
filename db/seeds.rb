# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
50.times do 
	Article.create([{
	title: Faker::Book.title,
	text: Faker::Lorem.paragraphs(1),
	id: Faker::Number.unique.between(1, 50)
	}])
	end
	
		
500.times do 
	Comment.create([{
	commenter: Faker::HarryPotter.character,
	body: Faker::HarryPotter.quote,
	article_id: Faker::Number.between(1, 50)
	}])
	end