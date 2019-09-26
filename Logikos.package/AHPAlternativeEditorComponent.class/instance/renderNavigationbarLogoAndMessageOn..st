rendeering
renderNavigationbarLogoAndMessageOn: html
	html
		tbsNavbarHeader: [ html image
				tbsPullLeft;
				style: 'padding: 10px;';
				url: BootstrapSkeletonFileLibrary / #logikoslogoPng.
			html tbsNavbarBrand with: 'Logikós' ]