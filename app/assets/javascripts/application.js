// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require materialize-sprockets
//= require_tree .
//


// $(function (){
//     var movies = [];
//     var images = [];
//     //全てのiframeタグに対して処理を実行する。
//     $('iframe').each(function(index, element) {
//         //iframeの中のsrc(埋め込みタグのURL)を取得。
//         var movie_src = $(this).attr('src');
//         //取得したURLはmovies配列に格納。
//         movies[index] = movie_src
//         //URLから動画idのみを取得して、文字連結をしてサムネイルを取得。
//         images[index] = 'http://i.ytimg.com/vi' + movie_src.substring(movie_src.lastIndexOf("/")) + '/maxresdefault.jpg'
//         //iframeをサムネイル画像に置き換える。
//         $(this).after('<img src="' + images[index] + '" class="movie col s12 m4 l3" height="150px">').remove();
//     });
//
//     $('.movie').each(function(index, element) {
//         //サムネイルがクリックされた時の処理
//         $(this).click(function (){
//             //iframeに置き換え。
//           $(this).after('<iframe src="' + movies[index] + '?autoplay=1" class="movie col s12 m4 l3"></iframe>').remove();
//         });
//     });
// });
