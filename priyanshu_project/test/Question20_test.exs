defmodule Question20_test do
  use ExUnit.Case
  import ExUnit.CaptureIO

  test "Question20_test functions" do
    team_data = %{
        "coach" => %{},
        "team_name" => "Hoop Masters",
        "players" => %{
          "99" => %{
            "first_name" => "Amalee",
            "last_name" => "Tynemouth",
            "email" => "atynemouth0@yellowpages.com",
            "statistics" => %{}
          },
          "98" => %{
            "first_name" => "Tiffie",
            "last_name" => "Derle",
            "email" => "tderle1@vimeo.com",
            "statistics" => %{}
          }
        }
      }
    assert BasketballWebsite.extract_from_path(team_data, "coach") == %{}
    assert BasketballWebsite.extract_from_path(team_data, "team_name") == "Hoop Masters"
    assert BasketballWebsite.extract_from_path(team_data, "players.99.first_name") == "Amalee"
    assert BasketballWebsite.get_in_path(team_data, "players.98.email") == "tderle1@vimeo.com"
  end
end