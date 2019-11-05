(() => {
    let 	hamburger			= document.querySelector('.hamburger'),
            mainNav 			= document.querySelector('.main-nav');
            hamNavCon 			= document.querySelector('.hamburger-nav-con');

    console.log("hamburger working");

	function hamburgerMenu() {
        mainNav.classList.toggle('slide-toggle');
        hamNavCon.classList.toggle('slide-toggle');
        hamburger.classList.toggle('expanded');
    }
    
    hamburger.addEventListener('click', hamburgerMenu);

})();