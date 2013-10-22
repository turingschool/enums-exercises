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

## The `map` Pattern

1. `exercises/map_pattern_test.rb`
2. `exercises/map_test.rb`

## The `select` Pattern

1. `exercises/select_pattern_test.rb`
2. `exercises/select_test.rb`

## The `reject` Pattern

1. `exercises/reject_pattern_test.rb`
2. `exercises/reject_test.rb`

## The `any?` Pattern

1. `exercises/any_pattern_test.rb`
2. `exercises/any_test.rb`

## The `all?` Pattern

1. `exercises/all_pattern_test.rb`
2. `exercises/all_test.rb`

## The `group_by` Pattern

1. `exercises/group_by_pattern_test.rb`
2. `exercises/group_by_test.rb`

## The `find` Pattern

1. `exercises/find_pattern_test.rb`
2. `exercises/find_test.rb`

## Other exercises

* `exercises/find_using_max_by_test.rb`

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

## Keeping in sync with the upstream repository

`origin` is your fork of the project. We'll need to connect to the upstream repository.

To do this, add a new remote named upstream that points to the JumpstartLab:

```bash
$ git remote add upstream git@github.com:JumpstartLab/enums-exercises.git
```

Then pull down the updated version of upstream:

```bash
$ git fetch upstream
```

And now make sure you're on master:

```bash
$ git checkout master
$ git branch # should say *master
```

Make master point to the exact commit that upstream/master is pointing at:

```bash
$ git reset --hard upstream/master
```

## License

The MIT License (MIT)

Copyright (c) <year> <copyright holders>

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
