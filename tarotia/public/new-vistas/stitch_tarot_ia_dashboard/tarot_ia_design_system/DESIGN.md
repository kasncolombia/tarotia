---
name: TAROT IA Design System
colors:
  surface: '#161121'
  surface-dim: '#161121'
  surface-bright: '#3c3648'
  surface-container-lowest: '#100b1b'
  surface-container-low: '#1e1929'
  surface-container: '#221d2e'
  surface-container-high: '#2d2739'
  surface-container-highest: '#383244'
  on-surface: '#e9def6'
  on-surface-variant: '#ccc3d8'
  inverse-surface: '#e9def6'
  inverse-on-surface: '#332e3f'
  outline: '#958da1'
  outline-variant: '#4a4455'
  surface-tint: '#d2bbff'
  primary: '#d2bbff'
  on-primary: '#3f008e'
  primary-container: '#7c3aed'
  on-primary-container: '#ede0ff'
  inverse-primary: '#732ee4'
  secondary: '#c4c1fb'
  on-secondary: '#2d2a5b'
  secondary-container: '#444173'
  on-secondary-container: '#b3afe9'
  tertiary: '#ffb784'
  on-tertiary: '#4f2500'
  tertiary-container: '#a15100'
  on-tertiary-container: '#ffe0cd'
  error: '#ffb4ab'
  on-error: '#690005'
  error-container: '#93000a'
  on-error-container: '#ffdad6'
  primary-fixed: '#eaddff'
  primary-fixed-dim: '#d2bbff'
  on-primary-fixed: '#25005a'
  on-primary-fixed-variant: '#5a00c6'
  secondary-fixed: '#e3dfff'
  secondary-fixed-dim: '#c4c1fb'
  on-secondary-fixed: '#181445'
  on-secondary-fixed-variant: '#444173'
  tertiary-fixed: '#ffdcc6'
  tertiary-fixed-dim: '#ffb784'
  on-tertiary-fixed: '#301400'
  on-tertiary-fixed-variant: '#713700'
  background: '#161121'
  on-background: '#e9def6'
  surface-variant: '#383244'
  mystic-violet-50: '#F5F3FF'
  mystic-violet-400: '#A78BFA'
  mystic-violet-950: '#2E1065'
  indigo-night-800: '#312E81'
  indigo-night-700: '#4338CA'
  gold-mystic: '#F59E0B'
  gold-mystic-400: '#FBBF24'
  cyan-ethereal: '#06B6D4'
  rose-passion: '#F43F5E'
  emerald-abundance: '#10B981'
typography:
  display-lg:
    fontFamily: Playfair Display
    fontSize: 56px
    fontWeight: '700'
    lineHeight: '1.1'
    letterSpacing: -0.02em
  display-lg-mobile:
    fontFamily: Playfair Display
    fontSize: 36px
    fontWeight: '700'
    lineHeight: '1.2'
  headline-md:
    fontFamily: Playfair Display
    fontSize: 32px
    fontWeight: '600'
    lineHeight: '1.3'
  headline-sm:
    fontFamily: Playfair Display
    fontSize: 24px
    fontWeight: '600'
    lineHeight: '1.4'
  body-lg:
    fontFamily: Inter
    fontSize: 18px
    fontWeight: '400'
    lineHeight: '1.6'
  body-md:
    fontFamily: Inter
    fontSize: 16px
    fontWeight: '400'
    lineHeight: '1.5'
  body-sm:
    fontFamily: Inter
    fontSize: 14px
    fontWeight: '400'
    lineHeight: '1.5'
  label-mono:
    fontFamily: JetBrains Mono
    fontSize: 12px
    fontWeight: '500'
    lineHeight: '1.0'
    letterSpacing: 0.05em
rounded:
  sm: 0.25rem
  DEFAULT: 0.5rem
  md: 0.75rem
  lg: 1rem
  xl: 1.5rem
  full: 9999px
spacing:
  unit: 4px
  container-max: 1280px
  gutter: 24px
  margin-mobile: 16px
  margin-desktop: 32px
---

# TAROT IA - Design System

## Color Palette
- **Primary (Violeta Místico)**: #7C3AED (Main), 50: #F5F3FF, 100: #EDE9FE, 200: #DDD6FE, 300: #C4B5FD, 400: #A78BFA, 500: #8B5CF6, 600: #7C3AED, 700: #6D28D9, 800: #5B21B6, 900: #4C1D95, 950: #2E1065
- **Secondary (Índigo Nocturno)**: #1E1B4B (Main), 900: #1E1B4B, 800: #312E81, 700: #4338CA
- **Neutral (Negro Cósmico)**: #0F0A1A (Main), 950: #0F0A1A, 900: #18181B, 800: #27272A, 700: #3F3F46, 600: #52525B, 500: #71717A, 400: #A1A1AA, 300: #D4D4D8, 200: #E4E4E7, 100: #F4F4F5, 50: #FAFAFA
- **Accent Gold (Oro Místico)**: #F59E0B (Main), 400: #FBBF24, 500: #F59E0B, 600: #D97706
- **Accent Cyan (Cian Etéreo)**: #06B6D4 (Main), 400: #22D3EE, 500: #06B6D4, 600: #0891B2
- **Accent Rose (Rosa Pasión)**: #F43F5E (Main), 400: #FB7185, 500: #F43F5E, 600: #E11D48
- **Accent Emerald (Esmeralda Abundancia)**: #10B981 (Main), 400: #34D399, 500: #10B981, 600: #059669

## Typography
- **Display**: 'Playfair Display', serif (Elegante, mística, alto contraste)
- **Body**: 'Inter', sans-serif (Moderna, legible)
- **Mono**: 'JetBrains Mono', monospace (Datos técnicos, estadísticas)

## Gradients
- **Hero**: linear-gradient(135deg, #1E1B4B 0%, #312E81 50%, #1E1B4B 100%)
- **Text Gradient**: linear-gradient(135deg, #C4B5FD 0%, #A78BFA 50%, #8B5CF6 100%)
- **PRO Upgrade**: linear-gradient(135deg, #F59E0B 0%, #FBBF24 50%, #F59E0B 100%)
- **Glass Overlay**: linear-gradient(135deg, rgba(255, 255, 255, 0.05) 0%, rgba(255, 255, 255, 0.01) 100%)

## Visual Effects (Glassmorphism)
- **Base Glass**: background: rgba(26, 21, 37, 0.7); backdrop-filter: blur(12px); border: 1px solid rgba(255, 255, 255, 0.08);
- **Card Glass**: background: linear-gradient(135deg, rgba(26, 21, 37, 0.8) 0%, rgba(21, 16, 37, 0.9) 100%); backdrop-filter: blur(16px); border: 1px solid rgba(255, 255, 255, 0.05);

## Component Styles
- **Buttons Primary**: background #7C3AED, color #FFFFFF, radius 0.5rem, weight 600
- **Buttons PRO**: background linear-gradient(135deg, #F59E0B 0%, #FBBF24 100%), color #0F0A1A, weight 700
- **Cards**: background #1A1525, border 1px solid rgba(255, 255, 255, 0.05), radius 1rem
