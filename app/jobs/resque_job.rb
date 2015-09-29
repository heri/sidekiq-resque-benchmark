
require 'faraday'

class ResqueJob < ActiveJob::Base

  @queue = :normal

  def perform
    conn = Faraday.new(:url => 'https://api.flickr.com')
    conn.get do |req|
      req.url '/services/rest/'
      req.params['sort'] = 'interestingness-desc'
      req.params['api_key'] = "8e8b0a8d39a7af07485e7b992084a350"
      req.params['format'] = "json"
      req.params['per_page'] = "10"
      req.params['text'] = 'resque'
      req.params['extras'] = "description, date_taken, geo, tags, views, media,path_alias, url_sq, url_z"
      req.params["method"] = "flickr.photos.search"
    end
  end
end
