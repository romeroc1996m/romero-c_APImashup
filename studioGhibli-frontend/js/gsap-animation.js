(() => {

  gsap.registerPlugin(ScrambleTextPlugin);

  let tl = gsap.timeline();

  tl.to("#header-title", {
      duration: 2,
      scrambleText: {
        text: "Studio Ghibli’s Top 5 Movie", 
        chars: "火垂るの墓となりの", 
        speed: 0.3, 
        revealDelay: 0.5, 
      }
    })
    .from("#app", {
      opacity: 0, 
      scale: 5, 
      duration: 2.5, 
      delay: 0.25, 
      y: 200, 
      ease: "expo.out"
  });

})();

