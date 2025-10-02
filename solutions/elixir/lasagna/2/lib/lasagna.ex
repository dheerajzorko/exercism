defmodule Lasagna do
  def expected_minutes_in_oven() do
    40
  end

  def remaining_minutes_in_oven(time_spent_in_oven) do
    expected_minutes_in_oven() - time_spent_in_oven
  end

  def preparation_time_in_minutes(prep_time) do
    prep_time * 2
  end

  def total_time_in_minutes(prep_time, time_spent_in_oven) do
    preparation_time_in_minutes(prep_time) + time_spent_in_oven
  end

  def alarm() do
    "Ding!"
  end
end

