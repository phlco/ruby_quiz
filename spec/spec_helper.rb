#  __     .______    _______  __       __   ___________    ____  _______     __  .__   __.    ____    ____  ______    __    __
# |  |    |   _  \  |   ____||  |     |  | |   ____\   \  /   / |   ____|   |  | |  \ |  |    \   \  /   / /  __  \  |  |  |  |
# |  |    |  |_)  | |  |__   |  |     |  | |  |__   \   \/   /  |  |__      |  | |   \|  |     \   \/   / |  |  |  | |  |  |  |
# |  |    |   _  <  |   __|  |  |     |  | |   __|   \      /   |   __|     |  | |  . `  |      \_    _/  |  |  |  | |  |  |  |
# |  |    |  |_)  | |  |____ |  `----.|  | |  |____   \    /    |  |____    |  | |  |\   |        |  |    |  `--'  | |  `--'  |  __
# |__|    |______/  |_______||_______||__| |_______|   \__/     |_______|   |__| |__| \__|        |__|     \______/   \______/  (__)

# Configure Rspec to print nice
RSpec.configure do |config|
  # Use color in STDOUT
  config.color_enabled = true
  # Use color not only in STDOUT but also in pagers and files
  config.tty = true
  # Use the specified formatter
  config.formatter = :documentation  # :progress, :html, :textmate
  # immediately stop running upon first failure
  c.fail_fast = true
end

