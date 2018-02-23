function initUpdateNavbarOnScroll() {
  const navbar = document.querySelector('.cocktail-navbar');
  window.addEventListener('scroll', () => {
    if (window.scrollY >= window.innerHeight) {
      navbar.classList.add('cocktail-navbar-white');
    } else {
      navbar.classList.remove('cocktail-navbar-white');
    }
  });
}


export { initUpdateNavbarOnScroll };
