defmodule Wolpay.NumbersTest do
  use ExUnit.Case

  alias Wolpay.Numbers

  describe "sum_from_file/1" do
    test "should sum all number from a file" do
      response = Numbers.sum_from_file("numbers")

      expected_response = {:ok, %{result: 37}}

      assert response == expected_response
    end

    test "should not sum all number from an inexistent file" do
      response = Numbers.sum_from_file("inexistent_file")

      expected_response = {:error, %{message: "Invalid file."}}

      assert response == expected_response
    end
  end
end
