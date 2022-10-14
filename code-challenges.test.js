// ASSESSMENT 5: JavaScript Coding Practical Questions with Jest

// Please read all questions thoroughly
// Pseudo coding is REQUIRED
// If you get stuck, please leave comments to help us understand your thought process

// Use test driven development to complete the following questions
// Add appropriate dependencies: $ yarn add jest

// Reminder: The test will call your function
// Run the file with the following command: $ yarn jest

// --------------------1) Create a function that takes in a string and returns a coded message. The coded message converts "a" to 4, "e" to 3, "i" to 1, and "o" to 0.

// a) Create a test with expect statements using the variables provided.
describe("mixedCode", () => {
    it("takes in letters and returns numbers instead", () => {
const secretCodeWord1 = "Lackadaisical"
expect()
// Expected output: "L4ck4d41s1c4l"
const secretCodeWord2 = "Gobbledygook"
// Expected output: "G0bbl3dyg00k"
const secretCodeWord3 = "Eccentric"
// Expected output: "3cc3ntr1c"


// b) Create the function that makes the test pass.
// if it senses an a whether its A or a it will instead send 4
// it will do similar process for the other letters
const mixedCode = codeArr.map((value) => {
   if
(value === "A" || value === "a") {
    return "4";
  } else if (value === "E" || value === "e") {
    return "3";
  } else if (value === "I" || value === "i") {
    return "1";
  } else if (value === "O" || value === "o") {
    return "0";
  } else {
    return value;
  }
    })
})
})

// --------------------2) Create a function that takes in an array of words and a single letter and returns an array of all the words containing that particular letter.

// a) Create a test with expects statement using the variable provided.

const fruitArray = ["Mango", "Cherry", "Apricot", "Blueberry", "Peach", "Kiwi"]

const letterA = "a"

// Expected output: ["Mango", "Apricot", "Peach"]
const letterE = "e"
// Expected output: ["Cherry", "Blueberry", "Peach"]
expect(findMe(fruitArray, letterA)).toEqual(["Mango", "Apricot", "Peach"])
    expect(findMe(fruitArray, letterE)).toEqual(["Cherry", "Blueberry", "Peach"])

// b) Create the function that makes the test pass.
// params will be the array and letters inside it
// it will  make letters lowercase then filter it
// if it includes a wanted letter then it will return it
const wordBundle = (wordArr, letter) => {
    letter = letter.toLowerCase()
    let output = wordArr.filter((word => {
        if (word.toLowerCase().includes(letter)) {

            //Return the current word 
            return word
        }
    }))
    //Return result iteration after completion
    return result

}

// --------------------3) Create a function that takes in an array of 5 numbers and determines whether or not the array is a "full house". A full house is exactly one pair and one three of a kind.

// a) Create a test with expect statements using the variable provided.
describe("fullHouse", () =>  {
    it("takes array of 5 numbers and sees if its fullhouse", () =>{
const hand1 = [5, 5, 5, 3, 3]
// Expected output: true
const hand2 = [5, 5, 3, 3, 4]
// Expected output: false
const hand3 = [5, 5, 5, 5, 4]
// Expected output: false
const hand4 = [7, 2, 7, 2, 7]
// Expected output: true

// b) Create the function that makes the test pass.
// const full house will have the array as the param
// will sort and if certain index locations equal certain values that equal a fullhouse it will determine its full house.

})
})
const fullHouse = (houseArr) => {
    arr = arr.sort()
    if (arr[0] === arr[1]) {
    if (arr[0] === arr[2]) {
         if (arr[3] == arr[4]) {
                return true
            }
        } else if (arr[2] === arr[3]) {
            if (arr[2] ===arr[4]) {
                return true
            } else {
                return false 
            }
        } else {
            return false 
        }
    } else {
        return false
    }
}
