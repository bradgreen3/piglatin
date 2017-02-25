function translate(english) {
  result = []
  english.replace(/,/g, '').split(" ").forEach(function(word) {
    result.push(translator(word))
  })
  return result.join(" ")
};

function translator(word) {
  var vowels = ['a','e','i','o','u'];
  var leadingConsonants = []
  var translated = word

  if (vowels.includes(word[0].toLowerCase()) == true) {
    return word + "ay"
  }
  for (i=0; i<word.length; i++) {
    if (vowels.includes(word.charAt(i).toLowerCase())) {
      return (translated + leadingConsonants.join("") + "ay").toLowerCase();
    } else {
      leadingConsonants.push(word.charAt(i).toLowerCase())
      translated = word.substr(i+1)
    }
  }
}

console.log(translate("THrouGH"))
console.log(translate("through pig arrow"));
console.log(translate("through, pig, arrow"))
