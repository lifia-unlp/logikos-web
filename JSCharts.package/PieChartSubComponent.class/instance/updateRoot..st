script
updateRoot: anHtmlRoot
    super updateRoot: anHtmlRoot.
    anHtmlRoot javascript url: 'https://www.gstatic.com/charts/loader.js'.
