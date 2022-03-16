defmodule Day2 do
  def navi(input) do
    {:ok, info} = File.read(input)
    data =
      String.split(info, "\n",trim: true) 
      |> Enum.map(&(String.split(&1, " ")))
    movements = Enum.reduce(data, %{forward: 0, depth: 0}, fn
          [h1, h2 | _tail], acc = %{forward: x, depth: y} ->
            case h1 do
              "forward" ->
                %{acc | forward: x + String.to_integer(h2)}
                #acc[:forward] + h2
              "down" ->
                %{acc | depth: y + String.to_integer(h2)}
                #acc[:depth] + h2
              "up" ->
                %{acc | depth: y - String.to_integer(h2)}
              "orward" ->
                %{acc | forward: x + String.to_integer(h2)}
                
            end
        end)
    movements[:forward] * movements[:depth]
  end

  def navi2(input) do
    {:ok, info} = File.read(input)
    data =
      String.split(info, "\n",trim: true) 
      |> Enum.map(&(String.split(&1, " ")))
    movements = Enum.reduce(data, %{forward: 0, aim: 0, depth: 0}, fn
          [h1, h2 | _tail], acc = %{forward: x, aim: y, depth: z} ->
            case h1 do
              "forward" ->
                %{acc | forward: x + String.to_integer(h2), depth: z + (y * String.to_integer(h2))}
                #acc[:forward] + h2
              "down" ->
                %{acc | aim: y + String.to_integer(h2)}
                #acc[:depth] + h2
              "up" ->
                %{acc | aim: y - String.to_integer(h2)}
              "orward" ->
                %{acc | forward: x + String.to_integer(h2), depth: z + (y * String.to_integer(h2))}
                
            end
        end)
    movements[:forward] * movements[:depth]
  end
  #def adds(nums) do
  #end
end
