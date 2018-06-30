defmodule CqrsWeb.Router do
  use CqrsWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", CqrsWeb do
    pipe_through :api
  end
end
