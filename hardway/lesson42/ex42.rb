#!/bin/ruby

## Animal is-a object look at the extra credit
class Animal
end

## Dog is-a Animal
class Dog < Animal
  def initialize(name)
    ## Dog has-a name
    @name = name
  end
end

## Cat is-a Animal
class Cat < Animal
  def initialize(name)
    ## Cat has-a name
    @name = name
  end
end

## Person is-a thing that exists
class Person
  def initialize(name)
    ## Person has-a name
    @name = name

    ## Person has-a pet of some kind
    @pet = nil
  end

  attr_accessor :pet
end

## Employee is-a Person
class Employee < Person
  def initialize(name, salary)
    ## Employee has-a name /// hmm what is this strange magic
    super(name)
    ## Employee has-a salary
    @salary = salary
  end
end

## Fish is-a thing that exists
class Fish
end

## Salmon is-a Fish
class Salmon < Fish
end

## Halibut is-a Fish
class Halibut < Fish
end

## rover is-a Dog
rover = Dog.new("Rover")

## satan is-a Cat
satan = Cat.new("Satan")

## mary is-a Person
mary = Person.new("Mary")

## Mary has-a pet names satan
mary.pet = satan

## frank is-a Employee and has-a salary of $120,000
frank = Employee.new("Frank", 120000)

## frank has-a pet named rover
frank.pet = rover

## flipper is-a Fish
flipper = Fish.new()

## crouse is-a Salmon
crouse = Salmon.new()

## harry is-a Halibut
harry = Halibut.new()
