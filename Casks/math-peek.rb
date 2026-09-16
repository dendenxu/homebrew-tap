cask "math-peek" do
  version "1.1.1"
  sha256 "7bd3922a64acc1c2afc24b9b4b6551348ffe60a287f2c88e848b8cd3260682ba"

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
  EOS
end
