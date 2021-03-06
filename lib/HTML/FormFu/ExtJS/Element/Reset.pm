package HTML::FormFu::ExtJS::Element::Reset;

use base "HTML::FormFu::ExtJS::Element::Button"; 

use strict;
use warnings;
use utf8;

sub render {
	my $class = shift;
	my $self = shift;
	my $super = $class->SUPER::render($self);
	return { %{$super}, text => scalar $self->value, type => "reset" };
	
	
}

1;

=head1 NAME

HTML::FormFu::ExtJS::Element::Reset - Reset button

=head1 DESCRIPTION


=head1 SEE ALSO

L<HTML::FormFu::Element::Reset>

=head1 COPYRIGHT & LICENSE

Copyright 2008 Moritz Onken, all rights reserved.

This program is free software; you can redistribute it and/or modify it
under the same terms as Perl itself.


=cut