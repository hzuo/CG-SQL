/*
 * Copyright (c) Facebook, Inc. and its affiliates.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 */

create table bar(
  id INTEGER NOT NULL,
  name TEXT,
  rate LONG INT,
  type INTEGER,
  size REAL
);

@attribute(cql:suppress_getters)
create procedure suppressed_getters_test()
begin
  select * from bar;
end;
