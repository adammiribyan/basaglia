Basaglia::Application.routes.draw do
  root to: "pages#show", id: "trainings"
  get ":id", to: "pages#show", as: :page, format: false
end
