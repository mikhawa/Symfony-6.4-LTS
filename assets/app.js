// assets/app.js
import './bootstrap.js';
/*
 * Welcome to your app's main JavaScript file!
 *
 * This file will be included onto the page via the importmap() Twig function,
 * which should already be in your base.html.twig.
 */
// Importation de bootstrap en CSS
import 'bootstrap/dist/css/bootstrap.min.css';
import './styles/app.css';

// Importation de bootstrap en JS
import './vendor/bootstrap/bootstrap.index.js'

console.log('This log comes from assets/app.js - welcome to AssetMapper! 🎉');
