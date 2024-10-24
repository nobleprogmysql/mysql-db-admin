show engine innodb status\G

Buffer pool size   8191

show variables like 'innodb_buffer_pool%';


innodb_buffer_pool_size = innodb_buffer_pool_chunk_size * innodb_buffer_pool_instances


show global variables like 'innodb_log_buffer_size';
show global status like 'innodb_log_waits';