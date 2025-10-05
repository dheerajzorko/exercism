defmodule LogLevel do
  def to_label(level, legacy?) do
    cond do
      legacy? and level in [0,5] -> 
        :unknown
      level == 0 -> 
        :trace
      level == 1 -> 
        :debug
      level == 2 -> 
        :info
      level == 3 -> 
        :warning
      level == 4 -> 
        :error
      level == 5 -> 
        :fatal
      true -> 
        :unknown
    end
  end

  def alert_recipient(level, legacy?) do
    x = to_label(level, legacy?)
    cond do
      x in [:error,:fatal] -> :ops
      x == :unknown and legacy? -> :dev1
      x == :unknown -> :dev2
      true -> false
    end
  end
end
