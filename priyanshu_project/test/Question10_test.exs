defmodule Question10_test do
    use ExUnit.Case
    test "Question_10 functions" do
       assert HighSchoolSweetheart.first_letter("John Doe") == "J"
         assert HighSchoolSweetheart.initials("John Doe") == "J. D."
            assert HighSchoolSweetheart.initial("priyanshu") == "P."
            assert HighSchoolSweetheart.pair("John Doe", "Jane Smith") ==
            "❤-------------------❤\n|  J. D.  +  J. S.  |\n❤-------------------❤\n"
           

    end
end