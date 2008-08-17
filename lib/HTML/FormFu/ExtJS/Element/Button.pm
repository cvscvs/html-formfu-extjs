package HTML::FormFu::ExtJS::Element::Button;
use strict;
use warnings;

sub render {
	my $class = shift;
	my $self  = shift;
	my %attrs = $self->form->_get_attributes($self);
	if ( $attrs{handler} ) { 
		my $handler = $attrs{handler};
		$attrs{handler} = \$handler; }
	return { text => scalar $self->value, %attrs };
}
1;

=head1 NAME

HTML::FormFu::ExtJS::Element::Button - Button

=head1 DESCRIPTION


=head1 SEE ALSO

L<HTML::FormFu::Element::Image>

=head1 COPYRIGHT & LICENSE

Copyright 2008 Moritz Onken, all rights reserved.

This program is free software; you can redistribute it and/or modify it
under the same terms as Perl itself.


=cut
