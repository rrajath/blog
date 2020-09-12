+++
title = "NoSQL Databases"
author = ["Rajath Ramakrishna"]
date = 2020-09-08T00:00:00-07:00
draft = false
+++

tags
: [Databases]({{< relref "databases" >}})

source
: [NoSQL Databases](https://www.youtube.com/watch?v=xQnIN9bW0og)


## Comparison with RDBMS {#comparison-with-rdbms}

| NoSQL                                                                                            | RDBMS                                                                  |
|--------------------------------------------------------------------------------------------------|------------------------------------------------------------------------|
| insertions and retrievals are easy since all data are together in a JSON blob                    | needs foreign keys and other tables for getting a coherent set of data |
| doesn't guarantee ACID properties, so it can't be used for transactions                          | guarantees ACID                                                        |
| not read optimzed because it has to go to each row, unpack the JSON and update                   | easier because it just has to go to that column and do aggregations    |
| relations are not implicit, which means something like foreign key constraint cannot be enforced | relationships are implicit                                             |
| not built for joins and they are very expensive                                                  | built for joins                                                        |
