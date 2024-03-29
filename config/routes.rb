class SubdomainPresent
  def self.matches?(request)
    request.subdomain.present?
  end
end

class SubdomainBlank
  def self.matches?(request)
    request.subdomain.blank?
  end
end


PracMed::Application.routes.draw do
  constraints(SubdomainPresent) do
    root 'project#index', as: :subdomain_root
    devise_for :users
  end
  
  constraints(SubdomainBlank) do
    root 'welcome#index'
    resources :accounts, only: [:new, :create]
  end
end
