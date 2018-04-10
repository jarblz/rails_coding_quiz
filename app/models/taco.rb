class Taco < ActiveRecord::Base
  # implementing enums with a service oriented app is actually kind of tough.
  # I would've had to model the enum in angular as well,
  # so I'm sticking with a text field for now
  # enum meats: ["chicken", "steak", "tofu"]

  # we need at least one ingredient right??
  validates_presence_of :meat

end
