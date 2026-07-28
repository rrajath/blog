window.addEventListener('DOMContentLoaded', function () {
	var toggle = document.getElementById('theme-toggle');
	if (!toggle) return;

	toggle.addEventListener('click', function () {
		var current = document.documentElement.getAttribute('data-theme');
		var next = current === 'dark' ? 'light' : 'dark';
		document.documentElement.setAttribute('data-theme', next);
		try { localStorage.setItem('theme', next); } catch (e) {}
	});
});
