# Be sure to restart your server when you modify this file.

# Add new inflection rules using the following format
# (all these examples are active by default):
ActiveSupport::Inflector.inflections do |inflect|
#   inflect.plural /^(ox)$/i, '\1en'
#   inflect.singular /^(ox)en/i, '\1'
#   inflect.irregular 'person', 'people'
#   inflect.uncountable %w( fish sheep )

  inflect.plural /$/, 'es'
  inflect.plural /s$/, 's'
  inflect.plural /z$/i, 'ces'
  inflect.plural /([aeiou])$/i, '\1s'
  inflect.plural /_(.*)$/, 's_\1'
  inflect.plural /n_(.*)$/, 'nes_\1'
  inflect.plural /l_(.*)$/, 'les_\1'

  inflect.singular /s$/i, ''
  inflect.singular /es$/i, ''
  inflect.singular /jes$/i, 'je'
  inflect.singular /tes$/i, 'te'
  inflect.singular /ces$/i, 'z'
  inflect.singular /des$/i, 'd'
  inflect.singular /res$/i, 'r'
  inflect.singular /(.*)s_(.*)/i, '\1_\2'
  inflect.singular /(.*)nes_(.*)/i, '\1n_\2'
  inflect.singular /(.*)les_(.*)/i, '\1l_\2'

  inflect.irregular 'user', 'users'
  inflect.irregular 'session', 'sessions'
  inflect.irregular 'estado_civil', 'estados_civiles'

  inflect.irregular 'linea_distribucion_entrada', 'lineas_distribucion_entradas'


  inflect.uncountable %w( pantalones detalle_composicion ) # xD
 end
