
task :spec do
  sh 'bacon spec/*_spec.rb'
end

task :ci do
  sh 'gem list'
  sh 'cat spec/fixtures/xcodebuild.log | xcpretty -c -f `xcpretty-travis-formatter`'
end