module ApplicationHelper
  def title(text)
    content_for :title, text
  end

  def default_meta_tags
    {
      twitter: {image: "s3://elasticbeanstalk-ap-southeast-1-740434333056/spillstreet.PNG", card: "summary"},
      og: {image: "s3://elasticbeanstalk-ap-southeast-1-740434333056/spillstreet.PNG"}
    }
  end
end
