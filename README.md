# ATM

*ATM is a virtual ATM machine created with the Ruby Gosu library. ATM uses native Ruby functions and concepts as well as Gosu rendering and logical operators to ensure a "stellar" customer experience.*

## Setup
Setting up and running the ATM project is a fairly simple operation. Simply boot up your favorite Terminal program and download the project from its Github repository (which can be found [here](https://github.com/ArgentumSunset/atm "ATM")), like so:
```sh
$ git clone https://github.com/ArgentumSunset/atm.git atm
$ cd atm
```
Then simply run the main.rb file from the command line, and you're all set!
```sh
$ ruby main.rb
```

## Questions

* How would I instantiate a new object, then create a property of that object and set it to something else? For example, if I had an empty object exampleObj, then wanted to give it a name, how would I do that without defining an initialize function?

    ```ruby
    exampleObj = Object.new
    exampleObj.name = "Lucas"
    return exampleObj.name
    # returns error "undefined method 'name=' for [this object] (NoMethodError)"
    ```
* How would one set up a Gosu rendering queue? I've tried to run 'draw' methods from several points in my program and, at certain points, the command line will throw an error saying 'no rendering queue for this operation.' It's really frustrating, because nothing ever gets drawn unless I have it actually in my window class.
* What exactly is the relationship between the properties of a superclass and a subclass? I mean, I get how functions work- they're just overwritten- but are the actual properties simply passed down from the class, or do they need to be reinitialized (with the ```super ``` specifier or otherwise? I guess my question is how does this relationship actually work?

