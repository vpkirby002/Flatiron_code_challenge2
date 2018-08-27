Rails.application.routes.draw do
  get 'home/index'
  get '/superheroes' => 'superheroes#index', as: 'superhero'
  get '/superheroes/new' => 'superheroes#new', as: 'superheroes/new'
  get '/superheroes/:id' => 'superheroes#show', as: 'superhero/bio'
  get '/superpowers' => 'superpowers#index', as: 'superpower'
  get '/superpowers/:id' => 'superpowers#show', as: 'superpower/id'
  get '/super_names' => 'super_names#index', as: 'super_name'
  

  resources :superpowers
  resources :superheroes
  resources :super_names
  resources :superpowers, only: [:index]
  resources :superheroes, only: [:index]
  resources :super_names, only: [:index]

  root "superheroes#index"

end

# root to 'superheroes#index'


# match "Peter Parker", 		to: "Spider-Man"
# match "Steve Rogers", 		to: "Captain America"
# match "Bruce Banner", 		to: "Hulk"
# match "Natasha Romanoff",	to: "Black Widow"
# match "Matthew Murdock", 	to: "Dare Devil"
# match "Reed Richards", 		to: "Mr.Fantastic"
# match "T'Challa", 			to: "Black Panther"
# match "Thor Odinson", 		to: "Thor" 
# match "Tony Stark", 		to: "Iron Man"
# match "Carol Danvers", 		to: "Captain Marvel"
 

#   {name:"", super_name:"Spider-Man" },
#   {name:"Steve Rogers", super_name:"Captain America" },
#   {name:"Bruce Banner", super_name:"Hulk" },
#   {name:"Natasha Romanoff", super_name:"Black Widow" },
#   {name:"Matthew Murdock", super_name:"Dare Devil" },
#   {name:"Reed Richards", super_name:"Mr.Fantastic" },
#   {name:"T'Challa", super_name:"Black Panther" },
#   {name:"Thor Odinson", super_name:"Thor" },
#   {name:"Tony Stark", super_name:"Iron Man" },
#   {name:"Carol Danvers", super_name:"Captain Marvel" }
# ]

