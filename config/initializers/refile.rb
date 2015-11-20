require "refile"
Refile.configure do |config|
  config.store = Refile::Postgres::Backend.new(proc { ActiveRecord::Base.connection.raw_connection } )
end

# require "refile/s3"
#
# aws = {
#   access_key_id: "ENV['S3-ACCESS-KEY-ID']",
#   secret_access_key: "ENV['S3-SECRET-ACCESS-KEY']",
#   region: "Oregon",
#   bucket: "keep-portland-happy",
# }
# Refile.cache = Refile::S3.new(prefix: "cache", **aws)
# Refile.store = Refile::S3.new(prefix: "store", **aws)
