defmodule Question14_test do
  use ExUnit.Case
  import ExUnit.CaptureIO

  test "Question14_test functions" do
    io = capture_io(fn -> assert RPG.CharacterSheet.welcome() == :ok end)
    assert io == "Welcome! Let's fill out your character sheet together.\n"
  end
end
