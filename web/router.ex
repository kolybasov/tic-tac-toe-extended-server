defmodule TTTServer.Router do
  use TTTServer.Web, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", TTTServer do
    pipe_through :api
  end
end
