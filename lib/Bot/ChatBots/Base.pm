package Bot::ChatBots::Base;
use strict;
{ our $VERSION = '0.001009'; }

use Log::Any ();
use Mo;

sub logger { return Log::Any->get_logger }

sub processor {
   my $self = shift;
   return sub { return $self->process(@_) };
}

42;
