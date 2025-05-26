# CHEATSHEET DE DISEÑO DE INTERFACES

## 1. ELEMENTOS MULTIMEDIA E INTERACTIVOS

### Audio y Vídeo en HTML5

- **Audio**: `<audio src="archivo.mp3" controls></audio>`
- **Video**: `<video src="archivo.mp4" controls width="640"></video>`
- **Atributos importantes**:
  - `controls`: Muestra controles de reproducción
  - `poster`: Imagen de previsualización para vídeos
  - `autoplay`: Reproducción automática
  - `loop`: Reproducción en bucle
  - `muted`: Silencia el sonido

### Accesibilidad en Multimedia

- **Subtítulos**: `<track kind="subtitles" src="subtitulos.vtt" srclang="es" label="Español" default>`
- **Transcripciones**: Proporcionar texto alternativo del contenido de audio/vídeo
- **Elementos de figura**:
  ```html
  <figure>
    <video src="video.mp4" controls></video>
    <figcaption>Descripción del vídeo</figcaption>
  </figure>
  ```

## 2. TRANSICIONES Y TRANSFORMACIONES CSS

### Transiciones

- **Propiedades**:
  - `transition-property`: Propiedad a animar
  - `transition-duration`: Duración (segundos o milisegundos)
  - `transition-timing-function`: Función de temporización (ease, linear, ease-in, ease-out)
  - `transition-delay`: Retraso antes de iniciar
  - `transition`: Atajo (propiedad duración timing-function delay)
  
- **Ejemplo**:
  ```css
  .elemento {
    transition: all 0.3s ease;
  }
  ```

### Transformaciones

- **Propiedades**:
  - `transform: scale(1.1)`: Escala
  - `transform: rotate(5deg)`: Rotación
  - `transform: translateX(20px)`: Traslación
  - `transform: skew(10deg)`: Inclinación
  
- **Múltiples transformaciones**:
  ```css
  .elemento:hover {
    transform: scale(1.1) rotate(5deg);
  }
  ```

## 3. ANIMACIONES CSS

- **Definir keyframes**:
  ```css
  @keyframes nombreAnimacion {
    0% { /* propiedades iniciales */ }
    50% { /* propiedades intermedias */ }
    100% { /* propiedades finales */ }
  }
  ```

- **Aplicar animación**:
  ```css
  .elemento {
    animation-name: nombreAnimacion;
    animation-duration: 2s;
    animation-timing-function: ease;
    animation-delay: 0s;
    animation-iteration-count: infinite;
    animation-direction: alternate;
    animation-fill-mode: forwards;
  }
  ```

- **Atajo de animación**:
  ```css
  .elemento {
    animation: nombreAnimacion 2s ease 0s infinite alternate forwards;
  }
  ```

## 4. EFECTOS DE HOVER Y GALERÍA DE IMÁGENES

### Efectos de Hover

- **Cambio de color**: `element:hover { background-color: #bbdefb; }`
- **Cambio de escala**: `element:hover { transform: scale(1.1); }`
- **Cambio de opacidad**: `element:hover { opacity: 0.8; }`
- **Cambio de sombra**: `element:hover { box-shadow: 0 8px 15px rgba(0,0,0,0.2); }`
- **Rotación**: `element:hover { transform: rotate(5deg); }`

### Galerías de Imágenes

- **Estructura básica**:
  ```html
  <div class="galeria">
    <div class="contenedor">
      <img src="imagen.jpg" alt="Descripción" class="imagen">
      <div class="texto-hover">
        <h3>Título</h3>
        <p>Descripción</p>
      </div>
    </div>
  </div>
  ```

- **Estilos para texto sobre imagen**:
  ```css
  .contenedor { position: relative; overflow: hidden; }
  .texto-hover {
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background-color: rgba(0, 0, 0, 0.7);
    color: white;
    opacity: 0;
    transition: opacity 0.5s ease;
  }
  .contenedor:hover .texto-hover { opacity: 1; }
  ```

## 5. DISEÑO RESPONSIVE Y ACCESIBLE

### Media Queries

```css
/* Tablets */
@media (max-width: 768px) {
  header h1 { font-size: 2rem; }
  .card { padding: 15px; }
}

/* Móviles */
@media (max-width: 480px) {
  body { padding: 10px; }
  header { padding: 20px 10px; }
}
```

### Accesibilidad

- **Contraste adecuado**: Asegurar que el texto es legible sobre el fondo
- **Enfoque visible**: `a:focus, video:focus { outline: 3px solid #3498db; }`
- **Tamaños de texto legibles**: Mínimo 16px para texto principal
- **Longitud de línea óptima**: `max-width: 70ch;` para mejor legibilidad
- **Texto alternativo**: `alt` en imágenes, transcripciones para audio/vídeo
- **Elementos semánticos**: Usar `<header>`, `<main>`, `<section>`, `<footer>`, etc.

## 6. TARJETAS Y ELEMENTOS INTERACTIVOS

### Diseño de Tarjetas

```css
.card {
  background-color: white;
  border-radius: 8px;
  padding: 20px;
  box-shadow: 0 2px 5px rgba(0,0,0,0.1);
  transition: all 0.3s ease;
}

.card:hover {
  transform: translateY(-5px);
  box-shadow: 0 8px 15px rgba(0,0,0,0.2);
}
```

### Efectos de Interacción

- **Efecto pulsación**:
  ```css
  .button:active {
    transform: scale(0.95);
  }
  ```

- **Cambio de color gradual**:
  ```css
  .elemento {
    transition: background-color 0.5s ease;
  }
  ```

## 7. TEMAS CLAVE PARA EL EXAMEN

1. **Implementación de elementos multimedia** (audio, video) con opciones de accesibilidad
2. **Uso de transiciones CSS** para mejorar la experiencia de usuario
3. **Creación de transformaciones** (escala, rotación, traslación)
4. **Animaciones con @keyframes** para efectos más complejos
5. **Diseño responsive** adaptado a diferentes dispositivos
6. **Galerías de imágenes interactivas** con efectos hover
7. **Tarjetas con efectos de transición** al interactuar
8. **Accesibilidad** en elementos interactivos y multimedia
9. **Combinación de múltiples efectos** para crear interfaces atractivas
10. **Optimización del rendimiento** en animaciones CSS
