defmodule ElixirVsCrystal.Router do
  use ElixirVsCrystal.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", ElixirVsCrystal do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
  end

  # Other scopes may use custom stacks.
  scope "/api", ElixirVsCrystal do
    pipe_through :api
    resources "/posts", PostController, except: [:new, :edit]
  end
end
