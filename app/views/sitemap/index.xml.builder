xml.instruct!(:xml, version: '1.0', encoding: 'UTF-8')
xml.urlset(
    xmlns: 'http://www.sitemaps.org/schemas/sitemap/0.9',
    'xmlns:xsi': 'http://www.w3.org/2001/XMLSchema-instance',
    'xsi:schemaLocation': 'http://www.sitemaps.org/schemas/sitemap/0.9/sitemap.xsd'
  ) do
  xml.url do
    xml.loc(root_url)
  end
end
