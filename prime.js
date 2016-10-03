// 4. Write a JavaScript function called: isPrime. The function must take a number
// n and it should return `true` or `false` whether the argument passed (n) is a
// prime number or not. A prime number is a number that is divisible only by 1 and itself.

function isPrime(n){
      i = n-1;
      while (i > 1){
        if ((n % i) == 0) return false;
        i--;
      }
      //return true or false depending on whether n is a prime
      return true;
    }
    console.log(isPrime(n));
