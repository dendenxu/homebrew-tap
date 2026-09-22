cask "math-peek" do
  version "1.3.9"
  sha256 "eb2d6662f19996e8e3122a3323c8129af8771b89d661736d6d594cca14be9849"

  url "https://github.com/dendenxu/math-peek/releases/download/v#{version}/Math.Peek-#{version}-universal.zip"
  name "Math Peek"
  desc "Native LaTeX hover previews for terminals"
  homepage "https://github.com/dendenxu/math-peek"

  depends_on macos: :ventura

  app "Math Peek.app"
  binary "#{appdir}/Math Peek.app/Contents/MacOS/MathPeekCLI", target: "math-peek"

  uninstall quit: "local.mathpeek.preview"

  caveats <<~EOS
    This release is ad-hoc signed and is not notarized by Apple.
    If macOS prevents first launch, open System Settings > Privacy & Security
    and choose Open Anyway for Math Peek.

    Enable Accessibility when prompted for native terminal hover previews.
    If an update leaves the switch on but Math Peek reports missing permission,
    remove its old Accessibility entry, then add and enable the installed app.

    For cmux, run math-peek connect cmux once inside a local cmux pane.
    No terminal refresh or restart is needed after a successful connection.

    For experimental Ghostty hover, run math-peek connect ghostty in each
    local pane, outside tmux, screen, and SSH. This does not modify Ghostty.
    Reconnect after restarting Math Peek or changing font/display scaling.
    Intended for ordinary output: Ghostty caches text for about 500 ms;
    full-screen TUIs, cursor redraws, and hidden text remain limitations.
  EOS
end
