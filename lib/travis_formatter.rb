
class TravisFormatter < XCPretty::Simple

  def open_fold(text)
    return if text == @open_fold
    close_fold(@open_fold) if @open_fold
    puts "travis_fold:start:#{text}\r"
    @open_fold = text
  end

  def close_fold(text)
    puts "travis_fold:end:#{text}\r"
    @open_fold = nil
  end

  def format_build_target(target, project, configuration)
    open_fold("Build #{target}")
    super
  end

  def format_clean_target(project, target, configuration)
    open_fold("Clean Targets")
    super
  end

  def format_test_suite_started(name)
    open_fold("Tests #{name}")
    super
  end
end

TravisFormatter