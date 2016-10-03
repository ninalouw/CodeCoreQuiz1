// Write a function in JavaScript that takes in a number n and returns the
// first n even numbers.

var returnEvens = function(n){
num = n*2;
for (var i = 1; i < num; i++){
  if( i % 2 === 0){
    console.log(i);
  }
}
return i;
}

console.log(returnEvens(n));
