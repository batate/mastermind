defmodule Mastermind do
  def score(guess, answer) do
    %{
      reds: score_reds(guess, answer),
      whites: score_whites(guess, answer),
    }
  end

  def same?({x, y}), do: x == y
  
  defp score_reds(guess, answer) do
    guess
    |> Enum.zip(answer)
    |> Enum.count(&same?/1)
  end
  
  defp misses(guess, answer) do
    (answer -- guess)
    |> Enum.count
  end

  defp width(answer) do
    Enum.count(answer)
  end
  
  defp score_whites(guess, answer) do
    width(answer) - misses(guess, answer) - score_reds(guess, answer)
  end
end
