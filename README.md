## Instructions

* [ ] Make the failing test pass
* [ ] Add another view (`PersonViewController`) with its own view model that's initialized with a person
* [ ] Test that the `PersonListViewModel` creates the correct `PersonViewModel`
* [ ] Try fetching data from the internet instead (e.g. https://api.myjson.com/bins/nghk, or create your own JSON there)
* [ ] Add some fields to the model, e.g. an `NSDate` birthdate that must be formatted

## Takeaway points

* Better separation between UI and state of the app
* Testing is easier due to cleaner interfaces and dependency injection

## Dependency injection framework

The branch `typhoon` uses the [Typhoon](http://typhoonframework.org/) dependency injection framework instead of initializing objects and injecting dependencies manually. This separates the dependency graph from the creation of actual objects, helping testing by centralizing the configuration of the dependency graph.

Study the differences between the current `master` and `typhoon` branches and make the `PersonViewController` also using Typhoon.

## Additional material

To fetch data from a JSON backend, you can do something like this in the store:

```objective-c
NSURL *url = [NSURL URLWithString:@"https://api.myjson.com/bins/nghk"];

return [[[NSURLSession sharedSession] rac_GET:url]
    map:^(RACTuple *result) {
        NSData *data = result.first;
        NSArray *peopleArray = [NSJSONSerialization JSONObjectWithData:data options:0 error:NULL];

        NSMutableArray *people = [NSMutableArray array];
        for (NSDictionary *personDict in peopleArray) {
            Person *person = [[Person alloc] initWithFirstName:personDict[@"firstName"] lastName:personDict[@"lastName"]];
            [people addObject:person];
        }

        return [people copy];
    }];
```
