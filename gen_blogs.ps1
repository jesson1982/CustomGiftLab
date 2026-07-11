function New-BlogPost($file, $title, $date, $desc, $keywords, $content) {
  $L = @()
  $L += "<!DOCTYPE html>"
  $L += "<html lang=`"en`">"
  $L += "<head>"
  $L += "<meta charset=`"UTF-8`">"
  $L += "<meta name=`"viewport`" content=`"width=device-width, initial-scale=1.0`">"
  $L += "<title>$title | CustomGiftLab</title>"
  $L += "<meta name="description" content="$desc">"
  $L += "<meta name="keywords" content="$keywords">"
  $L += "<link rel="canonical" href="https://customgiftlab.github.io/blog/$file">"
  $L += "<meta property="og:title" content="$title | CustomGiftLab">"
  $L += "<meta property=`"og:type`" content=`"article`">"
  $L += "<meta property="og:url" content="https://customgiftlab.github.io/blog/$file">"
  $L += "<meta name=`"twitter:card`" content=`"summary_large_image`">"
  $L += "<link rel=`"stylesheet`" href=`"../css/style.css`">"
  $L += "</head>"
  $L += "<body>"
  $L += "<header><nav><div class=`"logo`"><h1><a href=`"../index.html`">CustomGiftLab</a></h1></div><ul class=`"nav-menu`"><li><a href=`"../index.html`">Home</a></li><li><a href=`"../products/`">Products</a></li><li><a href=`"../guides/`">Guides</a></li><li><a href=`"../blog/`" class=`"active`">Blog</a></li><li><a href=`"../about.html`">About</a></li><li><a href=`"../contact.html`">Contact</a></li></ul></nav></header>"
  $L += "<main><section class="hero"><div class="hero-content"><h1>$title</h1><p class="post-meta">$date | By CustomGiftLab Team</p></div></section>"
  $L += "<div class=`"container`"><article class=`"blog-content`">"
  $L += $content
  $L += "</article></div></main>"
  $L += "<footer><div class=`"footer-content`"><div class=`"footer-section`"><h3>CustomGiftLab</h3><p>Premium custom gifts for every occasion</p></div><div class=`"footer-section`"><h4>Quick Links</h4><ul><li><a href=`"../products/`">Products</a></li><li><a href=`"../guides/`">Design Guides</a></li><li><a href=`"../blog/`">Blog</a></li><li><a href=`"../contact.html`">Contact Us</a></li></ul></div><div class=`"footer-section`"><h4>Legal</h4><ul><li><a href=`"../privacy-policy.html`">Privacy Policy</a></li><li><a href=`"../terms-of-service.html`">Terms of Service</a></li></ul></div></div><div class=`"footer-bottom`"><p>(c) 2026 CustomGiftLab. All rights reserved.</p></div></footer>"
  $L += "<script src=`"../js/main.js`"></script>"
  $L += "</body></html>"
  $L | Out-File -FilePath "E:\CustomGiftLab\blog\$file" -Encoding utf8
  Write-Host "Created: $file"
}
