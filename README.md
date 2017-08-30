# Interview Assignment

Factories used for testing are notoriously known to be potentially slow due to dependent associations. Designing factories with unnecessary associations causes excessive object creation, which in turn can cause test performance issues. For this assignment, we are interested in analyzing our factories and determining how many other records a single factory creates.

For our factories, we use the gem [FactoryGirl](https://github.com/thoughtbot/factory_girl).

All of the factories are defined in the `spec/factories/` directory. We would like some way to see exactly how many and what kinds of records are created and saved to the database when we create a specific factory via `FactoryGirl.create(<factory>)`.

### Here is an example:

```
$ FactoryGirl.counter(Bike)

{"accessories"=>3,
 "bikes"=>1,
 "chains"=>1,
 "frames"=>1,
 "gears"=>2,
 "seats"=>1,
 "wheels"=>2}
```

In this case, creating a single `Bike` via `FactoryGirl.create(:bike)` ends up creating the records in the returned hash where the hash keys are the record names and the hash values are the number of those records created.

Please note that your solution does not need to follow the pattern shown in example above.

Please implement your solution however you see fit and write RSpec tests to verify the correctness of your solution. To submit, duplicate the repo into a private repository and add Anthony (Github handle: anthonyto) or email Anthony your solution files.

Kindly refrain from opening a public PR or a public fork so your solution is not publicized. Feel free to reach out to Anthony with any questions or comments.

Good luck and have fun!
