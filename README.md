# Eldocam Website - Front-End
re
This repository contains the front-end code for the Eldocam website, a company specializing in electrical systems, security, and home automation.  The site is multilingual, offering content in French, Dutch, and English.  It provides information about the company's services, contact details, and a presentation of their expertise.

## Folder Structure

*   `/`: Root directory, containing the main `index.html` (French version).
*   `/EN/`, `/NL/`:  Directories for English and Dutch language versions of the site, respectively.
*   `/activite/`: Contains the French activities pages
*   `/asset/`: Stores CSS, images, and JavaScript files.
    *   `/asset/css/`: CSS stylesheets for different sections of the website.
    *   `/asset/images/`: Images used throughout the website.
    *   `/asset/js/`: JavaScript files for menu functionality.
*   `/contact/`, `/presentation/`: Directories containing the contact and presentation pages.

## Key Files

*   [`index.html`](https://github.com/SebbeMercier/Eldocam-site-frond-end/blob/main/index.html): Main landing page (French).
*   [`EN/index.html`](https://github.com/SebbeMercier/Eldocam-site-frond-end/blob/main/EN/index.html), [`NL/index.html`](https://github.com/SebbeMercier/Eldocam-site-frond-end/blob/main/NL/index.html): Landing pages for English and Dutch versions.
*   [`asset/css/style.css`](https://github.com/SebbeMercier/Eldocam-site-frond-end/blob/main/asset/css/style.css):  Global styles for the website (Navbar and Footer).
*   [`asset/js/menu-ham.js`](https://github.com/SebbeMercier/Eldocam-site-frond-end/blob/main/asset/js/menu-ham.js): JavaScript for the hamburger menu functionality.
*   [`asset/js/sous-menu.js`](https://github.com/SebbeMercier/Eldocam-site-frond-end/blob/main/asset/js/sous-menu.js): JavaScript for the sub-menus.

## Technologies Used

*   HTML
*   CSS
*   JavaScript
*   Cloudflare Turnstile

##  Navigation

The site uses a fairly simple navigation structure. A language selector allows users to switch between the French, Netherlands and English versions of the site. A hamburger menu is used on mobile to collapse the site's main navigation links.

## Contact Form

The contact form is present on each translated `/contact` page and sends a POST request to `/api/contact`.

## To Improve

*   **Accessibility:** Conduct an accessibility audit to ensure the site is usable for people with disabilities.
*   **Responsiveness:** While the site has some responsive design, test on a wider range of devices.
*   **SEO:**  Optimize meta descriptions and keywords for better search engine ranking.
*   **Contact Form Handling**: The code for `/api/contact` is not included in this front-end repository. To fully implement the contact form a back-end implementation is needed.
