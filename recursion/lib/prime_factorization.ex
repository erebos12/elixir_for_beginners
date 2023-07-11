defmodule PrimeFactorization do
  @doc """
  prime_factors

  ## Examples

      iex> PrimeFactorization.prime_factors(15)
      [5, 3]

      iex> PrimeFactorization.prime_factors(6)
      [3, 2]

      iex> PrimeFactorization.prime_factors(720)
      [5, 3, 3, 2, 2, 2, 2]

      iex> PrimeFactorization.prime_factors(1500)
      [5, 5, 5, 3, 2, 2]
  """
  def prime_factors(n) when n <= 1 do
    []
  end

  def prime_factors(n) do
    prime_factors(n, 2, [])
  end

  defp prime_factors(1, _, factors) do
    factors
  end

  defp prime_factors(n, divisor, factors) do
    case rem(n, divisor) do
      0 ->
        prime_factors(div(n, divisor), divisor, [divisor | factors])

      _ ->
        prime_factors(n, divisor + 1, factors)
    end
  end
end

IO.inspect PrimeFactorization.prime_factors(6)