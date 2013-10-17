class MapProblem
  def self.test_suites
    exercise = Exercise.new(:map)

    exercise << Problem.new(
      "capitalize",
      {"names" => %w(alice bob charlie)},
      {"capitalized_names" => %w(Alice Bob Charlie)},
    ).example!("name.capitalize")

    exercise << Problem.new(
      "doubles",
      {"numbers" => [1, 2, 3, 4, 5]},
      {"doubles" => [2, 4, 6, 8, 10]},
    ).loop!

    exercise << Problem.new(
      "squares",
      {"numbers" => [1, 2, 3, 4, 5]},
      {"squares" => [1, 4, 9, 16, 25]},
    ).assignment!

    exercise << Problem.new(
      "lengths",
      {"names" => %w(alice bob charlie david eve)},
      {"lengths" => [5, 3, 7, 5, 3]},
    )

    exercise << Problem.new(
      "normalize_zip_codes",
      {"numbers" => [234, 10, 9119, 38881]},
      {"zip_codes" => ["00234", "00010", "09119", "38881"]},
    )

    exercise << Problem.new(
      "backwards",
      {"names" => %w(alice bob charlie david eve)},
      {"backwards" => %w(ecila bob eilrahc divad eve)},
    )

    exercise << Problem.new(
      "words_with_no_vowels",
      {"words" => %w(green sheep travel least boat)},
      {"without_vowels" => %w(grn shp trvl lst bt)},
    )

    exercise << Problem.new(
      "trim_last_letter",
      {"animals" => %w(dog cat mouse frog platypus)},
      {"trimmed" => %w(do ca mous fro platypu)},
    )

    exercise.test_suites
  end
end

