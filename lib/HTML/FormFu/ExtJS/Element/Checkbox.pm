package HTML::FormFu::ExtJS::Element::Checkbox;
use base "HTML::FormFu::ExtJS::Element::_Field";

sub render {
	my $class = shift;
	my $self  = shift;
	my $super = $class->SUPER::render($self);
	return {
		%{$super},
		xtype     => "checkbox",
		hideLabel => 1,
		boxLabel  => $self->label,
		$self->default ? ( inputValue => $self->default ) : ()
	};
}
1;

=head1 NAME

HTML::FormFu::ExtJS::Element::Checkbox - Checkbox element

=head1 DESCRIPTION

Simple Checkbox element.

=head1 SEE ALSO

L<HTML::FormFu::Element::Checkbox>

=head1 COPYRIGHT & LICENSE

Copyright 2008 Moritz Onken, all rights reserved.

This program is free software; you can redistribute it and/or modify it
under the same terms as Perl itself.


=cut