use Test::More tests => 1;

use HTML::FormFu::ExtJS;
use strict;
use warnings;

my $form = new HTML::FormFu::ExtJS;
$form->load_config_file('t/column_model/01-basic.yml');
my $data = $form->grid_data([{name => 'foo', sex => 0, cds => 3}, {name => 'bar', sex => 1, cds => 4}]);

is_deeply( $form->_column_model, [
          {
            'dataIndex' => 'name',
            'id' => 'name',
            'header' => 'name'
          },
          {
            'dataIndex' => 'created',
            'id' => 'created',
            'renderer' => \'Ext.util.Format.dateRenderer("d.m.Y")',
            'header' => 'Created'
          },
          {
            'dataIndex' => 'sexValue',
            'hidden' => \1,
            'id' => 'sexValue',
            'header' => 'Sex'
          },
          {
            'dataIndex' => 'sexLabel',
            'id' => 'sexLabel',
            'header' => 'Sex'
          },
          {
            'dataIndex' => 'cds',
            'id' => 'cds',
            'header' => 'CDs'
          }
        ]);