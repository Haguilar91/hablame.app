// Este es el serviceworker con Cache-first Network.

// Comprueba la compatibilidad del navegador en el que estamos ejecutando esto.

if ("serviceWorker" in navigator) {
    if (navigator.serviceWorker.controller) {
      console.log("[PWA Builder] active service worker found, no need to register");
    } else {
      // Registra el serviceworker
      navigator.serviceWorker
        .register("/serviceworker.js", {
          scope: "./"
        })
        .then(function (reg) {
          console.log("[PWA Builder] Service worker has been registered for scope: " + reg.scope);
        });
    }
  }
