
task :spec do
  sh 'bacon spec/*_spec.rb'
end

task :ci do
  sh 'cat spec/fixtures/xcodebuild.log | xcpretty -c -f `bin/xcpretty-travis-formatter`'
end