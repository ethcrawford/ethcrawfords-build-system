# Generated by CoffeeScript 1.12.7
(->
  author = undefined
  cube = undefined
  quote = undefined
  square = undefined

  square = (x) ->
    x * x

  cube = (x) ->
    square(x) * x

  author = 'Wittgenstein'
  quote = 'A picture is a fact. -- ' + author
  return
).call this