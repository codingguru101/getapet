window.onLoad = setInterval(backgroundChange, 5000);

var i = 0;

function backgroundChange() {
  var html = document.documentElement;

  var back0 = 'http://i.huffpost.com/gen/1374225/images/o-THINGS-HAPPY-PEOPLE-DO-facebook.jpg';
  var back1 = 'https://www.pixelstalk.net/wp-content/uploads/2016/03/cute-cat-and-dog-sleep-wallpaper.jpg';
  var back2 = 'https://www.hdwallpapers.in/walls/havanese_silk_dog-HD.jpg';

  var background = [back0, back1, back2];

  html.style.backgroundRepeat = 'no-repeat';
  html.style.backgroundPosition = 'fixed';
  html.style.backgroundSize = 'cover';


  if (i <= 2) {
    html.style.backgroundImage = 'url(' + background[i] + ')';
    i++;
  } else if (i == 3) {
      i = 0;
      html.style.backgroundImage = 'url(' + background[0] + ')';
      i++;
    }
  }
