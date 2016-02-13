SELECT (date_trunc('month', ts.testts) + interval '1 month') - date_trunc('day',
ts.testts) as remaining FROM (SELECT timestamp '2012-02-11 01:00:00' as testts)
ts;
