Rails.application.routes.draw do
  resources :houses, only: [ :show ] do
    resources :monsters, only: [ :create ]
  end
  resources :monsters, only: [ :destroy ]
end

# As a user I can see one haunted houses's monsters
# houses#show
# /houses/:id

# As a user I can summon a monster into a house
# monsters#new, monsters#create
# houses/:house_id/monsters/new
# houses/:house_id/monsters

# As a user I can destroy a monster
# monsters#destroy
# /monsters/:id
