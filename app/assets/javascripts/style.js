window.onLoad = setInterval(backgroundChange, 3000);

var i = 0;

function backgroundChange() {
  var body = document.getElementsByTagName('body')[0];
  if (!body.classList.contains('background-change')) {
    return;
  }

  var back0 = 'http://i.huffpost.com/gen/1374225/images/o-THINGS-HAPPY-PEOPLE-DO-facebook.jpg';
  var back1 = 'https://www.pixelstalk.net/wp-content/uploads/2016/03/cute-cat-and-dog-sleep-wallpaper.jpg';
  var back2 = 'https://www.hdwallpapers.in/walls/havanese_silk_dog-HD.jpg';

  var background = [back0, back1, back2];

  body.style.backgroundRepeat = 'no-repeat';
  body.style.backgroundPosition = 'fixed';
  body.style.backgroundSize = 'cover';


  if (i <= 2) {
    body.style.backgroundImage = 'url(' + background[i] + ')';
    i++;
  } else if (i == 3) {
      i = 0;
      body.style.backgroundImage = 'url(' + background[0] + ')';
      i++;
    }
  }
