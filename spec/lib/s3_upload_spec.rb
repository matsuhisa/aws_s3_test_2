describe S3Upload do
  describe "#bucket_names" do
    # let(:s3) { S3Upload.new }
    let(:s3) do
      s3 = S3Upload.new
      s3_mock = double('s3 resource')
      s3_bucket_mock = double('s3 bucket')
      allow(s3_bucket_mock).to receive(:name).and_return("rails-fileup-matsuhisa")

      allow(s3_mock).to receive(:buckets).and_return([s3_bucket_mock])
      allow(s3).to receive(:s3_resource).and_return(s3_mock)
      s3
    end

    it "bucketに rails-fileup-matsuhisa がある" do
      expect(s3.bucket_names).to include S3Upload::BUCKET_NAME
    end

    it "bucketに rails-fileup-matsuhisa123 がない" do
      expect(s3.bucket_names).not_to include "#{S3Upload::BUCKET_NAME}123"
    end
  end
end
