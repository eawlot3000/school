const $title = document.getElementById('title');
$title.textContent = 'A new site';

const $message = document.querySelector('.message');
$message.textContent = 'A new message';

$title.setAttribute('class', 'red');
$title.classList.add('orange');
$title.className = 'purple'; // dont do this

// remove class
$title.classList.remove('purple');

$message.classList.toggle('message');
$message.classList.toggle('message');


// item 1 to be red
const $firstItem = document.querySelector('li')
$firstItem.classList.add('red')

// 2 to be no bold, orange w/ large text
const $secondItem = document.querySelector('.item')
$secondItem.classList.remove('item')
$secondItem.classList.add('orange', 'message')

// 3 to be purple
const $thirdItem = document.querySelector('li:last-child')
$thirdItem.classList.add('purple')
