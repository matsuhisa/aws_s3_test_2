require 'aws-sdk'

class S3Upload
  BUCKET_NAME = "rails-fileup-matsuhisa"

  def initialize
  end

  def bucket_names
    s3_resource.buckets.to_a.map(&:name)
  end

  private

  def s3_resource
    @s3 ||= Aws::S3::Resource.new
  end
end
