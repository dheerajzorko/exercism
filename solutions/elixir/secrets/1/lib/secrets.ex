defmodule Secrets do
  def secret_add(secret) do
    add = fn secret2 ->
      secret + secret2
    end
  end

  def secret_subtract(secret) do
    sub = &(&1 - secret)
  end

  def secret_multiply(secret) do
    mul = fn secret2 ->
      secret * secret2
    end
  end

  def secret_divide(secret) do
    div = fn secret2 ->
      floor(secret2/secret)
    end
  end

  def secret_and(secret) do
    sand = &(Bitwise.band(&1,secret))
  end

  def secret_xor(secret) do
    sxor = &(Bitwise.bxor(&1,secret))
  end

  def secret_combine(secret_function1, secret_function2) do
    sc = fn arg -> 
      arg |> secret_function1.() |> secret_function2.()
    end
  end
end
