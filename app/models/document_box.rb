class DocumentBox < AWS::S3::S3Object
  set_current_bucket_to 'rhode-sack' 
  def self.exists(name)
    val=false
    begin
      find("uploads/#{name}")
      val=true
    rescue
      val=false
    end 
    val   
  end
 
end