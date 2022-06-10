defmodule Twitter.TimelineFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Twitter.Timeline` context.
  """

  @doc """
  Generate a post.
  """
  def post_fixture(attrs \\ %{}) do
    {:ok, post} =
      attrs
      |> Enum.into(%{
        body: "some body",
        likes_cout: 42,
        reposts_count: 42,
        username: "some username"
      })
      |> Twitter.Timeline.create_post()

    post
  end
end
