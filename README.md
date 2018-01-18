# Interview Assignment

## Note:
This application does not work with Ruby 2.4. The latest known working version is Ruby 2.3.3

## Part 1:

Factories used for testing are notoriously known to be potentially slow due to dependent associations. Designing factories with unnecessary associations causes excessive object creation, which in turn can cause test performance issues. For this assignment, we are interested in analyzing our factories and determining how many other records a single factory creates.

For our factories, we use the gem [FactoryBot](https://github.com/thoughtbot/factory_bot).

All of the factories are defined in the `spec/factories/` directory. We would like some way to see exactly how many and what kinds of records are created and saved to the database when we create a specific factory via `FactoryBot.create(<factory>)`.

### Here is an example:

```
$ FactoryBot.counter(Bike)

{"accessories"=>3,
 "bikes"=>1,
 "chains"=>1,
 "frames"=>1,
 "gears"=>2,
 "seats"=>1,
 "wheels"=>2}
```

In this case, creating a single `Bike` via `FactoryBot.create(:bike)` ends up creating the records in the returned hash where the hash keys are the record names and the hash values are the number of those records created.

Please note that your solution does not need to follow the pattern shown in example above.

Please implement your solution however you see fit and write RSpec tests to verify the correctness of your solution.

## Part 2:

Report all the full database queries/statements that are executed for a single call to `create` for a given factory.

### Example:

```
$ FactoryBot.sql_analyzer(Bike)

[
 "INSERT INTO BIKES (SERIAL_NUMBER, STORE_ID) VALUES (123, 5);",
 "INSERT INTO ACCESSORIES (DESCRIPTION, BIKE_ID) VALUES ('foo', 1);"
]
```

Again, this is just an example. Your solution can follow whatever form you'd like. Please remember to fully test your solution.

To submit, duplicate the repo into a private repository and add Anthony (Github handle: anthonyto) or email Anthony your solution files.

Kindly refrain from opening a public PR or a public fork so your solution is not publicized. Feel free to reach out to Anthony with any questions or comments.

Good luck and have fun!
