class TarotCardsController < ApplicationController
  CARDS = {
    'la-emperatriz' => {
      name: 'La Emperatriz',
      arcana: 'ARCANO MAYOR III',
      image: '/emperatriz-tarot.png',
      slug: 'la-emperatriz',
      meaning: 'Abundancia, crecimiento, fertilidad, naturaleza',
      general: 'La Emperatriz es la diosa de la fertilidad y la abundancia. Representa la conexión con la naturaleza, la creatividad en su máxima expresión y el florecimiento de todo lo que has sembrado. Es un arcano de nutrimiento, crecimiento y la manifestación de tus deseos más profundos a través de la paciencia y el amor.',
      keywords: [
        { label: 'Fertilidad', icon: 'bolt', color: 'text-primary' },
        { label: 'Abundancia', icon: 'stat_3', color: 'text-cyan-ethereal' },
        { label: 'Creación', icon: 'play_arrow', color: 'text-emerald-abundance' }
      ],
      amor: 'En el amor, La Emperatriz anuncia una etapa de plenitud y conexión profunda. Para quienes buscan pareja, indica que el amor florecerá de forma natural. En relaciones existentes, sugiere un momento de gran armonía, pasión y posible expansión familiar.',
      trabajo: 'En lo laboral, augura éxito en proyectos creativos y colaborativos. Es el momento de hacer crecer tus ideas y ver los frutos de tu trabajo. Los negocios relacionados con la belleza, la naturaleza o el cuidado florecerán bajo su influencia.',
      simbolismo: [
        { icon: 'all_inclusive', title: 'La Corona de Estrellas', desc: 'Simboliza su conexión con el cosmos y la sabiduría divina. Representa el dominio sobre los reinos espiritual y material.' },
        { icon: 'nature', title: 'El Trigo y la Naturaleza', desc: 'El campo fértil a sus pies representa la abundancia material y la conexión con la tierra. Es la manifestación física de la energía creadora.' },
        { icon: 'shield', title: 'El Escudo con Venus', desc: 'El símbolo de Venus en su escudo representa el amor, la belleza, la armonía y el poder femenino en su forma más elevada.' }
      ]
    },
    'los-enamorados' => {
      name: 'Los Enamorados',
      arcana: 'ARCANO MAYOR VI',
      image: '/los-enamordos.png',
      slug: 'los-enamorados',
      meaning: 'Decisiones del corazón, unión, elecciones importantes',
      general: 'Los Enamorados representan una encrucijada sagrada donde el corazón debe guiar el camino. No es solo una carta de amor romántico, sino de elecciones fundamentales que definirán tu destino. El arcano te invita a escuchar tu voz interior y tomar decisiones alineadas con tu verdad más auténtica.',
      keywords: [
        { label: 'Unión', icon: 'favorite', color: 'text-rose-passion' },
        { label: 'Decisión', icon: 'stat_3', color: 'text-primary' },
        { label: 'Armonía', icon: 'play_arrow', color: 'text-emerald-abundance' }
      ],
      amor: 'En el amor, Los Enamorados son la carta por excelencia de las almas gemelas y las conexiones kármicas. Indica una relación profunda y significativa, o la llegada de un amor importante. Si estás en una encrucijada amorosa, debes elegir con el corazón.',
      trabajo: 'En el trabajo, representa decisiones profesionales importantes. Puede indicar una asociación clave, un nuevo proyecto que requiere compromiso total, o la necesidad de alinear tu carrera con tus valores más profundos.',
      simbolismo: [
        { icon: 'all_inclusive', title: 'El Ángel sobre las Nubes', desc: 'Rafael, el ángel sanador, bendice la unión y protege el camino hacia adelante. Representa la guía divina en momentos de decisión.' },
        { icon: 'nature', title: 'El Hombre y la Mujer', desc: 'Adán y Eva representan la dualidad, la elección entre el camino conocido y el desconocido. Cada uno mira en direcciones opuestas, simbolizando la necesidad de integrar ambos aspectos.' },
        { icon: 'shield', title: 'La Montaña al Fondo', desc: 'Simboliza los desafíos y metas que esperan al final del camino elegido. La decisión correcta llevará a un crecimiento y realización personal.' }
      ]
    },
    'el-mundo' => {
      name: 'El Mundo',
      arcana: 'ARCANO MAYOR XXI',
      image: '/el-mundo.png',
      slug: 'el-mundo',
      meaning: 'Cierre de ciclo, éxito, culminación, realización',
      general: 'El Mundo es el arcano de la culminación y la realización total. Representa el final exitoso de un gran ciclo, la integración de todas las lecciones aprendidas y la celebración del viaje completo. Es una carta de liberación, logro y la promesa de un nuevo comienzo después de la completitud.',
      keywords: [
        { label: 'Éxito', icon: 'bolt', color: 'text-gold-mystic' },
        { label: 'Ciclo', icon: 'stat_3', color: 'text-primary' },
        { label: 'Plenitud', icon: 'play_arrow', color: 'text-emerald-abundance' }
      ],
      amor: 'En el amor, El Mundo indica la realización de una relación o el ciclo completo de una etapa amorosa. Puede significar el matrimonio, una reunión largamente esperada, o simplemente la sensación de haber encontrado a tu persona complementaria.',
      trabajo: 'En el trabajo, es la carta del éxito profesional, el reconocimiento y la culminación de un gran proyecto. Indica que has llegado a la cima de tu campo o que estás completando una etapa importante que te abrirá nuevas puertas.',
      simbolismo: [
        { icon: 'all_inclusive', title: 'La Bailarina Andrógina', desc: 'Representa la integración de todas las polaridades: masculino y femenino, consciente e inconsciente. La danza simboliza el fluir armonioso de la energía vital.' },
        { icon: 'nature', title: 'La Corona de Triunfo', desc: 'La figura está coronada con laureles, el símbolo clásico de la victoria y el logro. Representa el reconocimiento por el camino recorrido.' },
        { icon: 'shield', title: 'Los Cuatro Seres', desc: 'Las figuras en las esquinas representan los cuatro elementos y los cuatro puntos cardinales. El Mundo ha integrado todas las fuerzas del universo en armonía.' }
      ]
    }
  }.freeze

  def show
    @card = CARDS[params[:slug]]
    raise ActiveRecord::RecordNotFound, "Carta no encontrada" unless @card
  end
end
