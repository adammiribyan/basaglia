Basaglia::Application.routes.draw do
  root to: "pages#show", id: "trainings"
  post "feedback/send", to: "pages#send_feedback", as: :send_feedback
  get ":id", to: "pages#show", as: :page, format: false
end
