# db/seeds.rb

puts "--- Limpiando base de datos ---"
Subcategory.destroy_all
Category.destroy_all

categories_data = [
  'Tarot del Día',
  'Lecturas de Tarot',
  'Cartas del Tarot',
  'Tiradas de Tarot',
  'Tarot del Amor',
  'Tarot del Dinero y Trabajo',
  'Tarot Espiritual',
  'Horóscopos',
  'Signos Zodiacales',
  'Carta Astral',
  'Compatibilidad Zodiacal',
  'Astrología y Tránsitos',
  'Mercurio Retrógrado',
  'Luna y Fases Lunares',
  'Espiritualidad y Energía',
  'Manifestación y Ley de Atracción',
  'Meditación y Mindfulness',
  'Chakras y Energía',
  'Cristales y Gemas',
  'Numerología',
  'Ángeles y Guías Espirituales',
  'Amor y Parejas',
  'Llamas Gemelas',
  'Almas Gemelas',
  'Rupturas y Sanación',
  'Compatibilidad Amorosa',
  'Interpretación de Sueños',
  'Significado Espiritual',
  'Señales del Universo',
  'Sincronicidades',
  'Rituales Espirituales',
  'Limpieza Energética',
  'Velas e Intenciones',
  'Rituales Lunares',
  'Protección Energética',
  'Recomendados por IA',
  'Lectura Personalizada',
  'Predicciones Personalizadas',
  'Tu Energía del Día',
  'Comunidad Espiritual',
  'Historias y Experiencias',
  'Debates y Opiniones',
  'Memes Espirituales',
  'Aprender Tarot',
  'Aprender Astrología',
  'Guías Espirituales',
  'Diccionario Esotérico',
  'Eventos Espirituales',
  'Lunas y Eclipses',
  'Calendario Astrológico',
  'Otros'
]

subcategories_map = {
  'Tarot del Día' => ['Carta del Día', 'Mensaje del Universo', 'Energía del Día', 'Consejo Espiritual', 'Predicción Diaria', 'Tarot Diario por Signo'],
  'Lecturas de Tarot' => ['Lectura General', 'Lectura del Amor', 'Lectura Financiera', 'Lectura Profesional', 'Lectura Espiritual', 'Lectura Sí o No', 'Lectura de Energía'],
  'Cartas del Tarot' => ['Arcanos Mayores', 'Arcanos Menores', 'El Loco', 'La Muerte', 'La Torre', 'El Diablo', 'La Estrella', 'El Sol', 'El Mundo', 'Significado Invertido'],
  'Tiradas de Tarot' => ['Tirada de 3 Cartas', 'Tirada de Cruz Celta', 'Pasado Presente Futuro', 'Tirada del Amor', 'Tirada del Destino', 'Tirada Mensual'],
  'Tarot del Amor' => ['¿Volverá?', '¿Piensa en Mí?', 'Compatibilidad Amorosa', 'Energía de la Relación', 'Nueva Relación', 'Ruptura Amorosa'],
  'Tarot del Dinero y Trabajo' => ['Dinero y Abundancia', 'Trabajo y Carrera', 'Cambios Profesionales', 'Emprendimiento', 'Bloqueos Económicos', 'Oportunidades Financieras'],
  'Horóscopos' => ['Horóscopo Diario', 'Horóscopo Semanal', 'Horóscopo Mensual', 'Horóscopo del Amor', 'Horóscopo Financiero', 'Horóscopo por Signo'],
  'Signos Zodiacales' => ['Aries', 'Tauro', 'Géminis', 'Cáncer', 'Leo', 'Virgo', 'Libra', 'Escorpio', 'Sagitario', 'Capricornio', 'Acuario', 'Piscis'],
  'Carta Astral' => ['Sol Lunar y Ascendente', 'Casas Astrológicas', 'Planetas en Signos', 'Aspectos Planetarios', 'Compatibilidad Astral', 'Interpretación Completa'],
  'Compatibilidad Zodiacal' => ['Aries y Leo', 'Tauro y Virgo', 'Escorpio y Piscis', 'Signos Compatibles', 'Signos Tóxicos', 'Compatibilidad Amorosa'],
  'Mercurio Retrógrado' => ['Qué es Mercurio Retrógrado', 'Cómo Afecta tu Signo', 'Consejos para Sobrevivir', 'Errores a Evitar', 'Impacto en Relaciones'],
  'Luna y Fases Lunares' => ['Luna Nueva', 'Luna Llena', 'Cuarto Creciente', 'Cuarto Menguante', 'Rituales Lunares', 'Calendario Lunar'],
  'Manifestación y Ley de Atracción' => ['Manifestar Amor', 'Manifestar Dinero', 'Método 369', 'Afirmaciones Positivas', 'Vision Board', 'Manifestación Consciente'],
  'Chakras y Energía' => ['Chakra Raíz', 'Chakra Sacro', 'Chakra Plexo Solar', 'Chakra Corazón', 'Chakra Garganta', 'Tercer Ojo', 'Chakra Corona', 'Alineación Energética'],
  'Cristales y Gemas' => ['Amatista', 'Cuarzo Rosa', 'Citrino', 'Obsidiana', 'Limpieza de Cristales', 'Cristales para Protección', 'Cristales por Signo'],
  'Numerología' => ['Número de Vida', 'Números Angelicales', '111 Significado', '222 Significado', '333 Significado', '444 Significado', '555 Significado'],
  'Llamas Gemelas' => ['Señales de Llama Gemela', 'Separación de Llama Gemela', 'Reencuentro', 'Conexión Espiritual', 'Sanación'],
  'Rupturas y Sanación' => ['Sanar Corazón Roto', 'Cerrar Ciclos', 'Soltar Energías', 'Volver a Empezar', 'Recuperar tu Energía'],
  'Interpretación de Sueños' => ['Soñar con Agua', 'Soñar con Serpientes', 'Soñar con Ex', 'Soñar con Muerte', 'Soñar con Bebé', 'Sueños Recurrentes'],
  'Señales del Universo' => ['Horas Espejo', 'Déjà Vu', 'Plumas y Señales', 'Coincidencias Repetidas', 'Mensajes del Universo'],
  'Rituales Espirituales' => ['Ritual de Amor', 'Ritual de Dinero', 'Ritual de Protección', 'Ritual de Luna Llena', 'Ritual de Luna Nueva'],
  'Limpieza Energética' => ['Limpieza con Sal', 'Sahumerios', 'Palo Santo', 'Limpieza del Hogar', 'Eliminar Energías Negativas'],
  'Lectura Personalizada' => ['Tarot Personal IA', 'Predicción del Día', 'Compatibilidad Amorosa IA', 'Consejo Espiritual IA', 'Camino de Vida'],
  'Comunidad Espiritual' => ['Historias Reales', 'Experiencias Paranormales', 'Debates Espirituales', 'Preguntas a la Comunidad', 'Foro Esotérico'],
  'Aprender Tarot' => ['Cómo Leer el Tarot', 'Significado de Cartas', 'Cómo Hacer Tiradas', 'Errores Comunes', 'Tarot para Principiantes'],
  'Diccionario Esotérico' => ['Qué es Karma', 'Qué es Dharma', 'Qué es Aura', 'Qué es Energía', 'Qué es Manifestación'],
  'Otros' => ['Temas Misceláneos']
}

puts "--- Creando categorías ---"
categories_data.each do |cat_name|
  category = Category.create!(
    name: cat_name,
    slug: cat_name.parameterize
  )
  
  subs = subcategories_map[cat_name] || []
  subs.each do |sub_name|
    Subcategory.create!(
      name: sub_name,
      slug: sub_name.parameterize,
      category: category
    )
  end
end

puts "--- Seeds finalizados: #{Category.count} categorías y #{Subcategory.count} subcategorías creadas ---"
