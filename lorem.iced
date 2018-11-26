_ = require('wegweg')({
  globals: on
})

lorem = require 'lorem-ipsum'

opt = {
  count: (do =>
    parts = process.argv
    count = parts.pop()
    count = +count
    return count if count in [1..100]
    return 3
  )
}

log lorem(opt)
exit 0

