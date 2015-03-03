
class TravisFormatter < XCPretty::Simple

  def open_fold(text)
    return EMPTY if text == @open_fold
    close_fold(@open_fold) if @open_fold
    @open_fold = text
    "travis_fold:start:#{text}\r\n"
  end

  def close_fold(text)
    @open_fold = nil
    "travis_fold:end:#{text}\r"
  end

  def format_build_target(target, project, configuration)
    open_fold("Build-#{scrub(project)}") + super
  end

  def format_clean_target(project, target, configuration)
    open_fold("Clean") + super
  end

  def format_test_run_started(name)
    run = scrub(name).split(".").first
    open_fold("Tests-#{run}") + super
  end

  def scrub(text)
    text.gsub(/\s/,"_")
  end
end

TravisFormatter