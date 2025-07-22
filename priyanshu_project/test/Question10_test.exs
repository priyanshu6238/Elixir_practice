defmodule Question10_test do
  use ExUnit.Case

  test "Question_10 functions" do
    assert HighSchoolSweetheart.first_letter("John Doe") == "John"
    assert HighSchoolSweetheart.initials("John Doe") == "J.D."
    assert HighSchoolSweetheart.initials("Jane Smith") == "J.S."
    assert HighSchoolSweetheart.initials("Alice Johnson") == "A.J."
    assert HighSchoolSweetheart.initials("Bob") == "B."
    assert HighSchoolSweetheart.initials("Charlie Brown") == "C.B."
    assert HighSchoolSweetheart.initials("David") == "D."
    assert HighSchoolSweetheart.initial("priyanshu") == "P."

    assert HighSchoolSweetheart.pair("John Doe", "Jane Smith") ==
             "❤-------------------❤\n|  J.D.  +  J.S.  |\n❤-------------------❤\n"

    assert HighSchoolSweetheart.pair("Alice Johnson", "Bob") ==
             "❤-------------------❤\n|  A.J.  +  B.  |\n❤-------------------❤\n"

    assert HighSchoolSweetheart.pair("Charlie Brown", "David") ==
             "❤-------------------❤\n|  C.B.  +  D.  |\n❤-------------------❤\n"
  end
end
