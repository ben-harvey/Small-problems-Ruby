def grouper(array)
  yield(array)
end

birds = %w(raven finch hawk eagle)
grouper(birds) {|_, _, *raptors| puts raptors}