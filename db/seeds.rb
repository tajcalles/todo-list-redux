50.times do
  List.create(
    item: Faker::ProgrammingLanguage.name,
    complete: [true, false].sample
  )
end
