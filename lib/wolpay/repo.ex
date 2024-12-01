defmodule Wolpay.Repo do
  use Ecto.Repo,
    otp_app: :wolpay,
    adapter: Ecto.Adapters.Postgres
end
