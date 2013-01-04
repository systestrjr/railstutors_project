module PostsHelper
  def prepend_http(post)

    if post.url.starts_with? 'http://'
      return link_to post.title, post.url
    elsif post.url.starts_with? 'https://'
      return link_to post.title, post.url
    else
      #without http://
      return link_to post.title, 'http://' + post.url
    end
  end
end