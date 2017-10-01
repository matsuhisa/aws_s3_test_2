require 'aws-sdk'

class S3Upload
  BUCKET_NAME = "rails-fileup-matsuhisa"

  def initialize
    @s3 = Aws::S3::Resource.new
  end

  def bucket_names
    @s3.buckets.to_a.map(&:name)
  end
end
