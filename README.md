# Simple String
A Simple way to modify Strings in Swift (similar to python). 

## Features
 - Lightweight
 - Tested
 - Includes error handling

## Table of Contents
 - [Examples of regular Swift String](https://github.com/bojanstef/SimpleString#examples-of-regular-swift-string)
 - [Examples of Simple Swift String](https://github.com/bojanstef/SimpleString#examples-of-simple-swift-string)

---

### Examples of regular Swift String
Get Example
```Swift
let getExample = "This is gonna be rough"
let index = getExample.index(getExample.startIndex, offsetBy: 0)
String(getExample[index]) // "T"
```

Get Example Reverse
```Swift
let getExampleReverse = "Similarly rough"
let index = getExampleReverse.index(getExampleReverse.endIndex, offsetBy: -1)
String(getExampleReverse[index]) // "h"
```

Set Example
```Swift
var setExample = "mkay, okay, I get it"
let index = setExample.index(setExample.startIndex, offsetBy: 0)
setExample.replaceSubrange(index...index, with: "O") // "Okay, okay, I get it"
```

---

### Examples of Simple Swift String
Get Example
```Swift
let getExample = "What's up?"
getExample[0] // "W" 
```

Get Example Reverse
```Swift
let getExampleReverse = "This is great"
getExampleReverse[-1] // "t"
```

Set Example
```Swift
var setExample = "We can also modify valuez"
setExample[-1] = "s" // "We can also modify values"
```

---

## Todo
- Add ranges for getter and setter
