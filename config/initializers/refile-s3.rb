# require "refile/s3"
#
# aws = {
#   access_key_id: "AKIAITDWPYQNWQYVDZEA",
#   secret_access_key: "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",
#   region: "Oregon",
#   bucket: "keep-portland-happy",
# }
# Refile.cache = Refile::S3.new(prefix: "cache", **aws)
# Refile.store = Refile::S3.new(prefix: "store", **aws)
