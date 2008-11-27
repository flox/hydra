package Hydra::Schema::Systemtypes;

use strict;
use warnings;

use base 'DBIx::Class';

__PACKAGE__->load_components("Core");
__PACKAGE__->table("SystemTypes");
__PACKAGE__->add_columns(
  "system",
  { data_type => "text", is_nullable => 0, size => undef },
  "maxconcurrent",
  { data_type => "integer", is_nullable => 0, size => undef },
);
__PACKAGE__->set_primary_key("system");


# Created by DBIx::Class::Schema::Loader v0.04005 @ 2008-11-27 03:26:23
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:90X5M27CbmJcZ7YnciHVMA


# You can replace this text with custom content, and it will be preserved on regeneration
1;
