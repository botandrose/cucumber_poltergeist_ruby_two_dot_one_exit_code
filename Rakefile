task :default do
  output = `cucumber 2>&1`
  nonzero_status = !$?.success?
  assert nonzero_status, "ERROR: cucumber should have exited with non-zero status, but did not"
end

def assert bool, message
  raise message unless bool
end

