module ApplicationHelper
  def title(text)
    content_for :title, text
  end

  def default_meta_tags
    {
      twitter: {image: "https://elasticbeanstalk-ap-southeast-1-740434333056.s3-ap-southeast-1.amazonaws.com/spillstreet.PNG", card: "summary"},
      og: {image: "https://elasticbeanstalk-ap-southeast-1-740434333056.s3-ap-southeast-1.amazonaws.com/spillstreet.PNG"}
    }
  end
end
