describe S3Upload do
  describe "#bucket_names" do
    let(:s3) do
      S3Upload.new
    end

    it "bucketに rails-fileup-matsuhisa がある" do
      expect(s3.bucket_names).to include S3Upload::BUCKET_NAME
    end

    it "bucketに rails-fileup-matsuhisa123 がない" do
      expect(s3.bucket_names).not_to include "#{S3Upload::BUCKET_NAME}123"
    end

  end
end
