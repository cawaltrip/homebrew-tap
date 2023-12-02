class Chezmoi < Formula
    desc "Manage your dotfiles across multiple diverse machines, securely"
    homepage "https://chezmoi.io/"
    url "https://github.com/cawaltrip/chezmoi.git",
        tag:      "v2.30.1",
        revision: "d1878ced7970daaf291d8623e772595d128531e2"
    license "MIT"
    head "https://github.com/cawaltrip/chezmoi.git", branch: "master"

    depends_on "go" => :build
  
    def install
      ldflags = %W[
        -s -w
        -X main.version=#{version}
        -X main.commit=#{Utils.git_head}
        -X main.date=#{time.iso8601}
        -X main.builtBy=cawaltrip
      ]

      system "go", "build", *std_go_args(ldflags: ldflags)
  
      bash_completion.install "completions/chezmoi-completion.bash"
      fish_completion.install "completions/chezmoi.fish"
      zsh_completion.install "completions/chezmoi.zsh" => "_chezmoi"
  
      prefix.install_metafiles
    end
  
    test do
      # test version to ensure that version number is embedded in binary
      assert_match "version v#{version}", shell_output("#{bin}/chezmoi --version")
      assert_match "built by #{tap.user}", shell_output("#{bin}/chezmoi --version")
  
      system "#{bin}/chezmoi", "init"
      assert_predicate testpath/".local/share/chezmoi", :exist?
    end
  end
  