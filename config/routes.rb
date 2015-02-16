Rails.application.routes.draw do
    root 'notes#index'

    resources :notes, only: [:index, :create, :update, :destroy]

    # resources :todo_list, only: [] do
    #     resources :todo_items, only: [:create, :update]
    # end

    resources :todo_lists, only: [] do
        resources :todo_items, only: [:destroy]
    end

    get '*any' => 'notes#index'
end
