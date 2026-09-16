cask "math-peek" do
  version "1.1.0"
  sha256 "3c58018669b4642d44eb1f6444997ffc26c96d4b4a944421c47a8c782c0cfabe"

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
  EOS
end
