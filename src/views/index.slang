html lang="en"
  head
    // Required meta tags
    meta charset="utf-8"
    meta name="viewport" content="width=device-width initial-scale=1 shrink-to-fit=no"
    // Bootstrap CSS
    link rel="stylesheet" href="/css/vendor/bootstrap.min.css"
    // Stylesheet
    link rel="stylesheet" href="/css/app.css"
  body

    .nav-container
      nav.navbar.navbar-toggleable-md.navbar-light.bg-faded
        a.navbar-brand target="_blank" href="https://github.com/0xFireball/MailingList"
          | MailingList
        .collapse.navbar-collapse#navbarSupportedContent
          ul.navbar-nav mr-auto=""
            li.nav-item
              a.nav-link href="#"
                | Home
            li.nav-item
              a.nav-link href="#"
                | About

    section.intro
      .container
        h1 MailingList
        p
          | Welcome to MailingList.
        p
          | MailingList is running, and can be accessed through its
          a href="https://github.com/0xFireball/MailingList#rest-api" REST API.

    // jQuery first, then Tether, then Bootstrap JS.
    script src="/js/vendor/jquery-3.1.1.slim.min.js"
    script src="/js/vendor/tether.min.js"
    script src="/js/bootstrap.min.js"