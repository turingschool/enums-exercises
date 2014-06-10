# Enums Exercises

## Setup

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

## Solving Exercises

For each method of interest there are two files of interest. Let's look at `map` as an example:

1. `exercises/map_pattern_test.rb`
2. `exercises/map_test.rb`

In the `map_pattern_test.rb` you'll find a collection of exercises which do what `map` is good at,
but they do it just with `each`. Then in `map_test.rb` you'll find the same examples using `map`.

We recommend you...

* Open your text editor with two panes (left and right)
* In the left pane, open the pattern file like `map_pattern_test.rb`
* In the right pane, open the matching file like `map_test.rb`
* Run the `map_pattern_test.rb` and solve the first exercise
* Run the `map_test.rb` and solve the same exercise
* Repeat for each matching pair of exercises
* Commit your solutions after finishing each file

## Work Order

You'll find the exercises in `exercises/` and we recommend working in this order:

* `map`
* `select`
* `reject`
* `any?`
* `all?`
* `none?`
* `one?`
* `group_by`
* `find`
* `count`
* `sort_by`
* `reduce`
* `zip`

### Other exercises

* `exercises/find_using_max_by_test.rb`
* `exercises/basic_enums_test.rb`

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

Copyright (c) 2014 Jumpstart Lab

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
