import { Header } from '../views/lib/header/index';
import { MenuNews } from '../views/lib/nav/n-1/index';


let header = new Header();
let menunews = new MenuNews();

$(document).ready(function () {
	// Header
	header.moveLanguage();
	header.moveCart();
	header.moveUser();
	header.moveSearch();
	header.toggleSearch();
	header.turnoffSearch();
	header.toggleMainNav();
	header.toggleCart();
	header.closeCart();
	let breakpoint = window.matchMedia("(max-width: 991.98px)")
	header.addBackdrop(breakpoint);
	breakpoint.addListener(header.addBackdrop);
	header.closeMainNav();
	header.toggleLang();
	// Trang nào đây?? :V
	menunews.toggleNews();
});