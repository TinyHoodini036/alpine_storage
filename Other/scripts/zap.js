// ==UserScript==
// @name	Zap Element
// @version	0.2
// @description	Delete element on page by 'zapping' it
// @author	Doomking
// @match	*://*/*
// ==/UserScript==

document.addEventListener("keydown", ev => {
	if (ev.ctrlKey && ev.altKey && ev.key === 'z') {
		console.log('Removal mode activated. Click on an element to remove it.');

	// Change cursor to 'x'
	document.body.style.cursor = 'url("data:image/svg+xml,%3Csvg xmlns=\'http://www.w3.org/2000/svg\' viewBox=\'0 0 24 24\' width=\'24\' height=\'24\'%3E%3Cpath d=\'M12 10.586l4.95-4.95 1.414 1.414L13.414 12l4.95 4.95-1.414 1.414L12 13.414L12 13.414l-4.95 4.95	-1.414-1.414L10.586 12 5.636 7.05l1.414-1.414L12 10.586z\' /%3E%3C/svg%3E"), auto';

	document.addEventListener("click", clickEvent => {
		clickEvent.target?.remove?.();
		console.log('Element Removed.');

		// Revert cursor back to normal
		document.body.style.cursor = 'auto';
	}, {once:true});
     }
});
