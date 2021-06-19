### To kill a mock (lvl 2)

This pratice will show what more you can do when a stubbed method needs to be passed some information and we want to test that the method is passing this data to a stubbed method.

A bonus on making the last test a bit more stronger is to write two more expectations that calls were not made to specific methods.

It may seem odd to be testing `calculate_change` like this. But `calculate_change` is invoking methods that should be stubbed. What the tests are actually testing are the three cases `calucate_change` is evaluating and these are needed to be tested in isolation.
