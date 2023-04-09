defmodule Blogger do
  @moduledoc """
  Documentation for `Blogger`.
  """
  use HTTPoison.Base

  # Start the HTTP client
  HTTPoison.start()

  @doc """
  Fetch Blogger configuration

  ## Examples

      iex> Blogger.fetch_blog()
  #Outputs Headers and a whole bunch of other stuff

  """

  def fetch_blog do
    HTTPoison.get!(
      "https://medium.com/podiihq/quick-connect-to-your-amazon-ec2-linux-instance-through-the-command-line-6c682960ef91"
    )
  end

  # This is just a  demonstation with an arguement syntax
  # def custom_fetch_blog(url) do
  #   HTTPoison.get!(url)
  # end

  def to_uppercase do
    "cow goat sheep" |> String.upcase() |> String.split()
  end

  # AGAIN THIS HAS ARGUEMENTS BUT WITH AN OPTIONAL VALUE OF NIL JUST IN CASE WAS NOT
  # SPECIFIED BY THE USER. YOU CAN ALSO ADD A DEFAULT VALUE

  def to_uppercase_withArgs(a, b, c \\ "") do
    (a <> " " <> b <> " " <> c) |> String.upcase() |> String.split()
  end
end
