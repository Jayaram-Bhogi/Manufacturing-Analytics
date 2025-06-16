use manufacturing__analysis;
select * from book1;
select sum(`Manufactured Qty`) from book1;
select sum(`Processed Qty`) from book1;
select sum(`Rejected Qty`) from book1;
select sum(`Rejected Qty`)/(sum(`Manufactured Qty`) - sum(`Rejected Qty`)) from book1;
select `Emp Name`, sum(`Rejected Qty`) from book1 group by `Emp Name`having sum(`Rejected Qty`) between 130 AND 500;
select `Machine Code`, sum(`Rejected Qty`) from book1 group by `Machine Code` having sum(`Rejected Qty`) order by sum(`Rejected Qty`) DESC limit 10 ;
select `Operation Name` , sum(`Rejected Qty`) from book1 group by `Operation Name`;
select `Fiscal Date` ,sum(`Manufactured Qty`) from book1 group by `Fiscal Date`;
select `Department Name`,sum(`Manufactured Qty`),sum(`Rejected Qty`) from book1 group by `Department Name`;

