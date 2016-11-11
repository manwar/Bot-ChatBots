package Bot::ChatBots::Role::Processor;
use strict;
{ our $VERSION = '0.002'; }

use Moo::Role;
requires 'process';

sub processor {
   my $self = shift;
   return sub { return $self->process(@_) };
}

1;
