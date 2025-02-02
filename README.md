# Ruby `method_missing` Unexpected `nil` Return

This repository demonstrates a subtle bug in Ruby related to the `method_missing` method. When handling calls to undefined methods, if no explicit return value is provided, `method_missing` implicitly returns `nil`. This can lead to unexpected behavior and potentially hard-to-debug issues.

The `bug.rb` file shows a sample implementation where an undefined method returns `nil`, even when a different return value might be expected.  The `bugSolution.rb` demonstrates a corrected version that handles the return value appropriately.