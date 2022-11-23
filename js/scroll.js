const backToTopButton = document.querySelector('#back-to-top')

document.addEventListener('scroll', () => {
  if (window.scrollY >= 400) {
    if (backToTopButton.classList.contains('d-none') == true) {
      backToTopButton.classList.remove('d-none')
    }
  } else {
    backToTopButton.classList.add('d-none')
  }
})