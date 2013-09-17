# Enums Exercises

[Fork](https://github.com/JumpstartLab/enums-exercises/fork) and clone the `enums-exercises` repository.

```bash
$ cd ~/your/project/dir
$ git clone git@github.com:USERNAME/enums-exercises.git
$ cd enums-exercises
```

Create a branch so that you're not changing `master`:

```bash
$ git checkout -b make-tests-pass
```

## Basic Concepts

See `basic_enums_test.rb` -- we will talk about using `times` and `each` to loop through a collection.

## Using Each

Use `each` to get all of the tests passing in:

* `transform_collections_test.rb`
* `pick_desired_values_test.rb`
* `filter_unwanted_values_test.rb`
* `are_there_any_test.rb`
* `are_they_all_test.rb`
* `find_first_one_test.rb`

Commit your changes:

```bash
$ git diff # to look at the changes
$ git add -A # to add everything if you like what you see
$ git commit -m "Make tests pass using Enumerable#each"
```

## Create Your Own Adventure

Check out master:

```bash
$ git checkout master
```

Create a new branch:

```bash
$ git checkout -b new-exercises
```

Make up one extra test for each test suite. Remember to delete the implementation once it's passing, and add a `skip` to it.

```bash
$ git diff
$ git add -A
$ git commit -m "Add more exercises"
```

Push your branch up to GitHub:

```bash
$ git push -u origin new-exercises
```

Submit a pull request (go to the front page of your own `enums-exercises` repository, there should be a button to compare/create a pull request for the branch that you just pushed up).

## Using Other Enumerable Methods

Now go back to your `make-tests-pass` branch:

```bash
$ git checkout make-tests-pass
```

We will use alternate Enumerable methods to solve the same problems as before:

* **map**: `transform_collections_test.rb`
* **select**: `pick_desired_values_test.rb`
* **reject**: `filter_unwanted_values_test.rb`
* **any?**: `are_there_any_test.rb`
* **all?**: `are_they_all_test.rb`
* **find**: `find_first_one_test.rb`

