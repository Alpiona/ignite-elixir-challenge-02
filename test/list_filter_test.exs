defmodule ListFilterTest do
  use ExUnit.Case

  describe "call/1" do
    test "should return the right count of odd numbers" do
      response = ListFilter.call(["1", "3", "6", "43", "banana", "6", "abc"])

      expected_response = 3

      assert response == expected_response
    end
  end
end
