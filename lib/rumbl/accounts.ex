defmodule Rumbl.Accounts do
  @moduledoc """
    the accounts contex
  """
  alias Rumbl.Accounts.User
  alias Rumbl.Repo

  def get_user(id) do
    Repo.get(User,id)
  end

  def get_user!(id) do
    Repo.get!(User,id)
  end

  def get_user_by(params) do
    Repo.get_by(User,params)
  end
  
  def list_users do
    Repo.all(User)
  end

  def change_user(%User{} = user) do
    User.changeset(user,%{})
  end

  def create_user(attrs \\ %{}) do
    %User{}
    |> User.changeset(attrs)
    |> Repo.insert()
  end

  #def list_users do
  #  [
   #   %User{id: "1", name: "José", username: "josevalim"},
   #   %User{id: "2", name: "Bruce", username: "redrapids"},
   #   %User{id: "3", name: "Chris", username: "chrismccord"}
   # ]
  #end

  #def get_user(id) do
    #Enum.find(list_users(), fn map -> map.id == id end)
  #end

  #def get_user_by(params) do
    #Enum.find(list_users(),fn map -> Enum.all?(params, fn {key, val} -> Map.get(map,key) == val end)end)
  #end
  
end