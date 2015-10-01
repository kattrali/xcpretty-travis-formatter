
class TravisFormatter < XCPretty::Simple

  def open_fold(text)
    return if text == @open_fold
    close_fold(@open_fold) if @open_fold
    print "travis_fold:start:#{text}\r"
    @open_fold = text
  end

  def close_fold(text)
    print "travis_fold:end:#{text}\r"
    @open_fold = nil
  end

  def format_build_target(target, project, configuration)
    open_fold("Build")
    super
  end

  def format_analyze_target(target, project, configuration)
    open_fold("Analyze")
    super
  end

  def format_clean_target(target, project, configuration)
    open_fold("Clean")
    super
  end

  def format_test_run_started(name)
    open_fold("Tests-#{scrub(name)}")
    super
  end

  def format_test_run_finished(name, time)
    close_fold("Tests-#{scrub(name)}")
    super
  end

  def scrub(text)
    text.gsub(/\s/,"_").split(".").first
  end
end

TravisFormatter