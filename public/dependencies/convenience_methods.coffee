# Writing my own underscore/lodash methods here because both have an
# issue with \n and \r in the template method

_ = (->

  uniq = (arr) ->
    o = {}
    l = arr.length
    r = []
    for item in arr
      o[item] = item
    for key of o
      r.push key

    return r

  keys = (obj) ->
    unless Object.keys
      r = []
      for k of obj
        r.push k
      return r
    else
      Object.keys obj


  window._ = 
    uniq: uniq
    keys: keys
)()
