package Hydra::Schema::Users;

use strict;
use warnings;

use base 'DBIx::Class';

__PACKAGE__->load_components("Core");
__PACKAGE__->table("Users");
__PACKAGE__->add_columns(
  "username",
  { data_type => "text", is_nullable => 0, size => undef },
  "fullname",
  { data_type => "text", is_nullable => 0, size => undef },
  "emailaddress",
  { data_type => "text", is_nullable => 0, size => undef },
  "password",
  { data_type => "text", is_nullable => 0, size => undef },
);
__PACKAGE__->set_primary_key("username");
__PACKAGE__->has_many(
  "userroles",
  "Hydra::Schema::Userroles",
  { "foreign.username" => "self.username" },
);


# Created by DBIx::Class::Schema::Loader v0.04005 @ 2008-11-27 03:26:23
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:gmqkPkkET+452wBlILgOsQ


# You can replace this text with custom content, and it will be preserved on regeneration
1;
