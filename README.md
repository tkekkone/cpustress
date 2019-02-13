# cpustress
Bash script to keep cpu running on high. Uses Sysbench which gives some event count as result of calculations. Runs for 30 seconds and cools off for 20 seconds. Event count target is specified as argument to command. If count is less, the test is stopped.
