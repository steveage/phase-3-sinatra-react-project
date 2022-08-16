puts "🌱 Seeding spices..."

# Seed your database here
Category.create(name: "Cleaning")
Category.create(name: "House Repairs")
Category.create(name: "Car Maintenance")

Todo.create(
    category_id: 1,
    title: "Weekly cleaning",
    description: "Remember to clean behind the stove this time.",
    due_date: "2022.08.21",
    effort: 3
)
Todo.create(
    category_id: 1,
    title: "Window cleaning",
    description: "It is this time of the year again. Do it before it gets too cold.",
    due_date: "2022.08.31",
    effort: 5
)
Todo.create(
    category_id: 2,
    title: "Fix garage door",
    description: "Rails need to be aligned.",
    due_date: "2022.12.21",
    effort: 6
)
Todo.create(
    category_id: 3,
    title: "Fix headlight",
    description: "Left headlight is out. Figure out if LED lightbulb would work and if rewiring is needed.",
    due_date: "2022.09.30",
    effort: 7
)

puts "✅ Done seeding!"
