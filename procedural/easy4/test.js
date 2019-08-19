// function lastInArray(array) {
//    console.log(array[array.length - 1]);
// }

// lastInArray([1, 2, 3, 4, 5])

// function rollCall(names) {
//   for (var i = 0; i < names.length; i++) {
//     console.log(names[i]);
//   }
// }

// rollCall(['ed', 'jamal', 'sun-yi'])

// function reversed(array) {
//   var reversedArray = []
//   for (var i = array.length - 1; i >= 0; i--) {
//     reversedArray.push(array[i]);
//   }
//   return reversedArray;
// }

// console.log(reversed(['ed', 'jamal', 'sun-yi']));

// function firstIndex(array, value) {
//   var index = -1;

//   for (var i = 0; i < array.length; i += 1) {
//     if (array[i] === value )  {
//       index = i;
//       break;
//     }
//   }
//   return index;
// }

// console.log(firstIndex(['ed', 'jamal', 'sun-yi'], 'jama'));

function stringFromArray(array) {
  var string = '';

  for (var i = 0; i < array.length; i++) {
    string += String(array[i]);
  }
  return string;
}

console.log(stringFromArray(['ed', 'jamal', 'sun-yi']));
