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

puts "--- Creando posts de blog ---"

posts_data = [
  {
    title: 'La Evolución del Tarot en la Era de la Inteligencia Artificial',
    excerpt: 'Descubre cómo los algoritmos de aprendizaje profundo están reinterpretando los antiguos arquetipos, ofreciendo lecturas con una precisión estadística que desafía la intuición tradicional sin perder la magia.',
    content: 'El Tarot es un espejo del alma, un mapa de la conciencia humana expresado a través de 78 arquetipos atemporales. Comprender el significado de cada carta no se trata de memorizar palabras clave, sino de conectar con la energía universal que representan. Esta guía te llevará a través de los Arcanos Mayores y Menores, desvelando los misterios ocultos tras su rica simbología.

Los Arcanos Mayores: El Viaje del Loco

Compuestos por 22 cartas, los Arcanos Mayores representan las grandes lecciones espirituales, los hitos kármicos y las fuerzas arquetípicas que moldean nuestra existencia. Desde el salto de fe inicial hasta la culminación del mundo, trazan un viaje de autodescubrimiento.

0. El Loco (The Fool)

Representa el inicio del viaje, el potencial puro y la voluntad de abrazar lo desconocido con el corazón abierto. Nos insta a soltar las expectativas y confiar en la providencia del universo. En una lectura, señala que estás a punto de embarcarte en una nueva y emocionante aventura.

Los Arcanos Menores: La Vida Cotidiana

Mientras que los Arcanos Mayores dictan los grandes temas, las 56 cartas de los Arcanos Menores iluminan las sutilezas de nuestra vida diaria. Se dividen en cuatro palos, cada uno correspondiente a un elemento y un aspecto de la experiencia humana: Bastos (Fuego/Acción), Copas (Agua/Emociones), Espadas (Aire/Intelecto) y Oros (Tierra/Material).

"El verdadero poder del Tarot no reside en predecir un futuro inmutable, sino en empoderarte para crear conscientemente la realidad que deseas."',
    category: 'Tecnología',
    category_color: 'cyan-ethereal',
    author: 'Por Elion V.',
    reading_time: '8 min',
    cover_image: 'https://lh3.googleusercontent.com/aida-public/AB6AXuCvkPn6jfojdvKN8fLJuc2Nvt2Y-tdydTcKs27YczRGqM-cYN6TRlbCqxTD9b8uvUUTP_JRwGyHhwW0SbMRTMyFamLTyRGvApJED7Ixg80Ofrd2q2gcP4oY8X2mMZ3--03ufWXETrGmeOBmq3aztJgD-wDqw35eNlKUslHm-qK0cAi3sUubL2olLDqIRtrQfQX-kF3aOvISAcNg6gIUsh6s5BjSflrEabUmvU0fYkPNX4F-Y3im7uJJnNdwlVbs6auLWCnRusGjKho_',
    featured: true,
    published_at: Time.current
  },
  {
    title: 'Guía para principiantes: Tu primera lectura',
    excerpt: 'Todo lo que necesitas saber antes de barajar tu primer mazo. Cómo preparar el espacio, centrar tu energía y formular la pregunta correcta.',
    content: 'Comenzar en el mundo del tarot puede parecer abrumador, pero con esta guía paso a paso estarás listo para tu primera lectura en minutos. Lo más importante es crear un espacio sagrado donde puedas concentrarte y conectar con tu intuición.

Preparación del Espacio

Encuentra un lugar tranquilo donde no te interrumpan. Puedes encender una vela, poner música suave o simplemente sentarte en silencio. Lo importante es que te sientas cómodo y en paz.

Centrar tu Energía

Toma tres respiraciones profundas. Visualiza una luz violeta que te envuelve y te protege. Pide a tus guías espirituales o a tu intuición que te acompañen en esta lectura.

Formular la Pregunta Correcta

Las mejores preguntas son abiertas y empiezan con "cómo", "qué necesito saber" o "cuál es la energía de...". Evita preguntas de sí/no, ya que limitan la profundidad de la respuesta.',
    category: 'Fundamentos',
    category_color: 'emerald-abundance',
    author: 'Por Elion V.',
    reading_time: '5 min',
    cover_image: 'https://lh3.googleusercontent.com/aida-public/AB6AXuCfDpMTToJB9zA-sYE9iwhSmVO_YYfYPiwRRLTOv32SzfxdGwZ-2zNjn1r2xYN9-POScBUV50RgCrmFqzzuOmMYERTf8HeXNG2qaHAJy7S2RwL1sbDpZRnkvujLrr2690NAy6oB7s5wRUdGzHaWWW6tlfNVmHD1KdxVE_KDgjrwqP0Yt9f4sGoer48L7F7LRC4mYLnWlnnveeTCNgCt9XxQFJiKLvCtlTqFRV5uie5xpIFhBxzhwSKgivcXX1Gq7dCphYLlt0p_CbE6',
    featured: false,
    published_at: 2.days.ago
  },
  {
    title: 'Significado Profundo de los Arcanos Mayores',
    excerpt: 'Un viaje a través del viaje del loco. Análisis arquetípico de las 22 cartas principales y su impacto en lecturas complejas de destino.',
    content: 'Los Arcanos Mayores son el corazón espiritual del tarot. Cada una de las 22 cartas representa una etapa en el viaje del héroe, un arquetipo universal que resuena en lo más profundo de nuestra psique.

El Viaje Comienza

La carta 0, El Loco, representa el espíritu puro antes de la encarnación. Le siguen El Mago (la voluntad consciente), La Suma Sacerdotisa (la intuición), La Emperatriz (la naturaleza), El Emperador (la estructura), El Hierofante (la tradición)...

Cada carta es un peldaño en la escalera hacia la iluminación, y juntas forman un mapa completo del desarrollo humano.',
    category: 'Arcanos',
    category_color: 'gold-mystic',
    author: 'Por Elion V.',
    reading_time: '12 min',
    cover_image: 'https://lh3.googleusercontent.com/aida-public/AB6AXuDigD6hnepBcmkrIKrDKRIxZuYSBQN8isiWuNGZl8ys0zPjxZHuVKEuEZZ_bmXBpafA2XFxhrQzvevjIy9xhI9Bdan_vkPIn18xEvxgmsgPQBZb9vVlOVaZ8ont76q2ubViNqN_AyYaRXVUo9wAuzUObiL1IyQOHAnWhpLFKdjWNd8K2WuquDcne2jhgGO6i9X1UCKbQmkyOTqekkQL0sPA_S0cNoHk7r2V-mWGxrKs910AgYdqMLqwjoh6pu0F6W2DQgIMG0XY3wbl',
    featured: false,
    published_at: 5.days.ago
  },
  {
    title: 'Cómo entrenar tu propio oráculo digital',
    excerpt: 'Aprende a ajustar los parámetros de IA para reflejar tu intuición personal en las tiradas generativas diarias.',
    content: 'La inteligencia artificial ha llegado para quedarse en el mundo del tarot. Pero lejos de reemplazar la intuición humana, puede potenciarla.

¿Cómo funciona? Los modelos de IA analizan miles de interpretaciones de cartas para encontrar patrones y conexiones que a menudo pasan desapercibidos. Al entrenar tu propio oráculo digital, puedes personalizar las interpretaciones para que reflejen tu estilo único de lectura.

Esta guía te enseñará a configurar prompts específicos, ajustar la temperatura creativa del modelo, y crear un sistema híbrido donde la IA y tu intuición trabajen en armonía.',
    category: 'Tecnología',
    category_color: 'cyan-ethereal',
    author: 'Por Elion V.',
    reading_time: '6 min',
    cover_image: 'https://lh3.googleusercontent.com/aida-public/AB6AXuAvPJH0bcVywmmC35qsrGR5bGW26B_PkAp9iWWCHGpZNdHKmSCGrAI54qJ6ZAjgGKhkwFJ4f8TI8VNx3ME7Uw94ZBrhnZzdY-cRicIkD-XXCyKwXYSPzLCJvlre97uq9J1RaPE1qzZ40BrDFsnimUNXz-A2-qPn66YfZi9A76TPk-X_Mso6cweEPAoQ3JBMPBdojjDvZiZYvVKJpPGRKYTvCogFJXTdjwbL7bYhv8hkK4dR6dzeSyD4-_1R7tQSQMfQV3A1vpZ11BEE',
    featured: false,
    published_at: 1.week.ago
  },
  {
    title: 'Rituales de Limpieza para tu Espacio Digital',
    excerpt: 'Mantener la claridad en tus lecturas online requiere higiene energética. Descubre técnicas para purificar tu entorno virtual.',
    content: 'En la era digital, nuestros espacios virtuales también acumulan energía estancada. Así como limpiamos nuestro altar físico, debemos purificar nuestro espacio digital antes de realizar lecturas online.

Limpieza del Dispositivo

Antes de cada lectura, limpia físicamente tu pantalla y toma un momento para cerrar aplicaciones innecesarias. Puedes sahumar suavemente tu teléfono o computadora con humo de palo santo (con cuidado).

Protección Energética Digital

Visualiza una burbuja de luz violeta alrededor de tu dispositivo. Pide que solo las energías de alta vibración puedan atravesarla. Esto crea un escudo protector para tus lecturas.

Rutina Diaria

Establece una rutina matutina de limpieza digital: abre una ventana virtual, respira profundamente tres veces, y establece tu intención para las lecturas del día.',
    category: 'Prácticas',
    category_color: 'mystic-violet-400',
    author: 'Por Elion V.',
    reading_time: '4 min',
    cover_image: 'https://lh3.googleusercontent.com/aida-public/AB6AXuD1gHo04angeBB6DFlxjCN8cyvUQgp9-KLuUg0sh95EewNFodBiRi4vde9vgpm6m0MrMy3HsiDL4ABbV3ivu3L9AG0vJ0GlTPGNhb4D5L5WEie66Gy5SCo-WFmI__r-Y87D_Q9KFyykiinBXGodm76ARaTqj9uTS4J0lzK-ku1KNt-EzdS9Mxeb37RsxhqRbyAmhgwgpoaA77dTbgjz7ncTRlvwi0B8r90k7IfFriEQQeAjwCPstn7SOhYHwX3lr1nklYQrAgoH3A_U',
    featured: false,
    published_at: 2.weeks.ago
  }
]

posts_data.each do |data|
  Post.create!(data.merge(slug: data[:title].parameterize))
end

puts "--- Seeds finalizados: #{Category.count} categorías, #{Subcategory.count} subcategorías y #{Post.count} posts creados ---"
