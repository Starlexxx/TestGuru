class GitHubClient
  attr_reader :client

  def initialize
    @client = setup_http_client
  end

  def create_gist(params)
    @client.create_gist(params)
  end

  private

  def setup_http_client
    Octokit::Client.new(access_token: ENV['GITHUB_TOKEN'])
  end
end
