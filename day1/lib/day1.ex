defmodule Day1 do
@spongebob_practice """
  def spongebob_friends([]) do
    0
  end

  def spongebob_friends(input) do

    #case is_tuple(input) do
      #true ->
        #Tuple.to_list(input)
        #|> Enum.sum()
    #
      #false ->
       ##Enum.sum(input)
       #hd(input) + spongebob_friends(tl(input))
    #end
    with true <- is_tuple(input) do
      Tuple.to_list(input)
      |> Enum.sum
    else
      false -> Enum.sum(input)
    end
  end

end
  """

  #def depth_increase_frequency(input) do
    #input =
      #String.split(input, "\n", trim: true)
      #|> Enum.map(&String.to_integer/1)
      #|> Enum.chunk_every(2, 1, :discard)
    #Enum.reduce(input, 0, fn
      #[depth1, depth2], acc ->
        #case depth1 < depth2 do
          #true -> acc + 1
          #false -> acc
        #end
    #end)
  #end
  def depth_increase_frequency(input) do
    input =
      String.split(input, "\n", trim: true)

    depth_changes(input, 0)
  end

  defp depth_changes([_left_over], counter) do
    counter
  end

  defp depth_changes([depth1, depth2 | others], counter) do
    
    case String.to_integer(depth1) > String.to_integer(depth2) do
      false ->
        depth_changes([depth2 | others], counter + 1)
      true ->
        depth_changes([depth2 | others], counter)
    end
  end

end






















