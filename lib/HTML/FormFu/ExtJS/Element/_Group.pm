package HTML::FormFu::ExtJS::Element::_Group;

use base "HTML::FormFu::ExtJS::Element::_Field";

sub _items {
	my $class = shift;
	my $self = shift;
	
	my $data = [];
	foreach my $option ( @{ $self->_options } ) {

		#push( @{$data}, [ $option->{value}, $option->{label} ] );
		if ( my @items = @{ $option->{group} } ) {
			my $subgroup = {
				%{$option->{attributes}},
				items => [{
				xtype  => 'label',
				text   => $option->{label},
				cls    => 'x-form-check-group-label',
				anchor => '-15',
				%{$option->{attributes}->{label}}
				}
			]};
			foreach my $item ( @items ) {
				push(
					@{ $subgroup->{items} },
					{
						boxLabel   => $item->{label},
						name       => $self->name,
						inputValue => $item->{value},
						%{$item->{attributes}},
					}
				);
			}
			push( @{ $data }, $subgroup );
		} else {
					push(@{ $data },
					{
						boxLabel   => $option->{label},
						name       => $self->name,
						inputValue => $option->{value},
						%{$option->{attributes}},
					}
				);
		}
	}
	#use Data::Dumper; print Dumper $self->_options;
	return $data;
}

1;