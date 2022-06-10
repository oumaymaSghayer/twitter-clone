defmodule Twitter.Timeline.Post do
  use Ecto.Schema
  import Ecto.Changeset

  schema "posts" do
    field :body, :string
    field :likes_cout, :integer, default: 0
    field :reposts_count, :integer, default: 0
    field :username, :string, default: "Oumaima"

    timestamps()
  end

  @doc false
  def changeset(post, attrs) do
    post
    |> cast(attrs, [:body])
    |> validate_required([:body])
    |> validate_length(:body, min: 2, max: 100)
  end
end
