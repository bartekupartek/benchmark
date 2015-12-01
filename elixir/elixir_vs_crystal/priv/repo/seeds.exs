# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     ElixirVsCrystal.Repo.insert!(%SomeModel{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

alias ElixirVsCrystal.Repo
alias ElixirVsCrystal.Post

Faker.start

Repo.delete_all(Post)

Enum.each 1..10000, fn i ->
  params = %{title: Enum.join(Faker.Lorem.words, ","), body: Enum.join(Faker.Lorem.sentences, ",")}
  Post.changeset(%Post{}, params) |> Repo.insert!
end
