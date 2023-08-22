# shellcheck source=refresh.bash            # refresh
# shellcheck source=../tools/chromatic.bash # set_chromatic_token
# shellcheck source=../tools/github.bash    # set_github_token
# shellcheck source=../tools/graphite.bash  # set_graphite_token
# shellcheck source=../tools/sentry.bash    # set_sentry_token
# shellcheck source=../tools/vercel.bash    # set_vercel_token

setup() {
  [ ! -f .env ] && cp .env.example .env

  set_fontawesome_token || @fatal the token is required
  set_chromatic_token || true
  set_github_token || true
  set_graphite_token || true
  set_sentry_token || true
  set_vercel_token || true

  refresh
}

set_fontawesome_token() { @token store 'FontAwesome' 36; }
