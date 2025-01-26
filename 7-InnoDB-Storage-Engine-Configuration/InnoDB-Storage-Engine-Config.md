show engine innodb status\G


show variables like 'innodb_buffer_pool%';


innodb_buffer_pool_size = innodb_buffer_pool_chunk_size * innodb_buffer_pool_instances


show global variables like 'innodb_log_buffer_size';

show global status like 'innodb_log_waits';

innodb_flush_method
innodb_flush_method = 'O_DIRECT'

show variables like 'innodb_doublewrite';

show variables like 'innodb_doublewrite_dir';

innodb_flush_log_at_trx_commit 

Innodb_log_file_size

Innodb_log_files_in_group

innodb_log_group_home_dir
