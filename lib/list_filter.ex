defmodule ListFilter do
  def call(list) do
    list
    |> Enum.count(fn x -> Integer.parse(x) |> odd?() end)
  end

  def odd?({x, _}) when is_number(x), do: rem(x, 2) != 0

  def odd?(:error), do: false
end
