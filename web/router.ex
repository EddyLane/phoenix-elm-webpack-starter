defmodule ElmElixirWorkshop.Router do

  use ElmElixirWorkshop.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :browser_session do
    plug Guardian.Plug.VerifySession
    plug Guardian.Plug.LoadResource
  end

  pipeline :api do
    plug :accepts, ["json"]
    plug Guardian.Plug.VerifyHeader # Looks in the Authorization header for the token
    plug Guardian.Plug.LoadResource

  end

  scope "/", ElmElixirWorkshop do
    pipe_through [:browser, :browser_session] # Use the default browser stack

    get "/", PageController, :index

    get "/login", SessionController, :new, as: :login
    post "/login", SessionController, :create, as: :login
    delete "/logout", SessionController, :delete, as: :logout
    get "/logout", SessionController, :delete, as: :logout

    resources "/users", UserController

  end

   scope "/api", ElmElixirWorkshop do
     pipe_through :api

     resources "/messages", MessageController, except: [:new, :edit]
     resources "/users", Json.UserController, except: [:new, :edit]

  end

end
