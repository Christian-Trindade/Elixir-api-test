defmodule RocketpayWeb.UsersView do
  use RocketpayWeb, :view
  alias Rocketpay.User

  def render("create.json", %{user: %User{} = user}) do
    response = %{
      message: "User #{user.nickname} create successfully",
      user: %{
        name: user.name,
        nickname: user.nickname,
        email: user.email,
        account: %{
          id: user.account.id,
          balance: user.account.balance,
        }
      }
    }
    response
  end

end
