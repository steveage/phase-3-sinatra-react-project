class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/todos" do
    Todo.all.to_json(include: :category)
  end

  get "/categories" do
    Category.all.to_json()
  end

  post "/todos" do
    todo = Todo.create(
      category_id: params[:category_id],
      title: params[:title],
      description: params[:description],
      due_date: params[:due_date],
      effort: params[:effort]
    )
    todo.to_json
  end

  patch "/todos/:id" do
    todo = Todo.find(params[:id])
    todo.update(
      title: params[:title],
      description: params[:description],
      due_date: params[:due_date],
      effort: params[:effort]
    )
    todo.to_json
  end

  delete "/todos/:id" do
    todo = Todo.find(params[:id])
    todo.destroy
    todo.to_json
  end
end