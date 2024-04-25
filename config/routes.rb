Rails.application.routes.draw do
  root "games#homepage"

  get "/rock", to: "games#rock"
  get "/paper", to: "games#paper"
  get "/scissors", to: "games#scissors"
end

