# This file was generated for GoReleaser Homebrew Cask distribution.
cask "nomos" do
  name "nomos"
  desc "Deterministic engineering substrate and 42-gate AST verification layer between coding agents and Git"
  homepage "https://github.com/mgantlett/nomos"
  version "4.16.0"

  livecheck do
    skip "Auto-generated on release."
  end

  binary "nomos"

  on_macos do
    on_intel do
      url "https://github.com/mgantlett/nomos/releases/download/v#{version}/nomos_Darwin_x86_64.tar.gz"
      sha256 "febc304b57cae1a586095e4e232f03cdfd7b6ce21efce1b9c1fec319971276a8"
    end
    on_arm do
      url "https://github.com/mgantlett/nomos/releases/download/v#{version}/nomos_Darwin_arm64.tar.gz"
      sha256 "fe06205823cac817eb8775b4ae274cddfd89693134fe343817a3fbc706432436"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mgantlett/nomos/releases/download/v#{version}/nomos_Linux_x86_64.tar.gz"
      sha256 "b303d264588b4d464993b5a59afa93c7b6b26aaaec7e71b156b3bfa44a93dba1"
    end
    on_arm do
      url "https://github.com/mgantlett/nomos/releases/download/v#{version}/nomos_Linux_arm64.tar.gz"
      sha256 "4b8691694c10f60de6fe1040d267304e036da0278de61cec3cf7b3793034d10a"
    end
  end

  postflight do
    if OS.mac?
      system_command "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "#{staged_path}/nomos"]
    end
  end
end
