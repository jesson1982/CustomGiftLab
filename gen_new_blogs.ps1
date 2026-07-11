param($file, $title, $desc, $date, $content)
$q = [char]34; $n = [char]10
$h = '<!DOCTYPE html>' + $n + '<html lang=' + $q + 'en' + $q + '>' + $n
$h += '<head><meta charset=' + $q + 'UTF-8' + $q + '>' + $n
$h += '<meta name=' + $q + 'viewport' + $q + ' content=' + $q + 'width=device-width, initial-scale=1.0' + $q + '>' + $n
$h += '<title>' + $title + ' | CustomGiftLab</title>' + $n
$h += '<meta name=' + $q + 'description' + $q + ' content=' + $q + '' + $desc + '' + $q + '>' + $n
$h += '<link rel=' + $q + 'canonical' + $q + ' href=' + $q + 'https://customgiftlab.github.io/blog/' + $file + '' + $q + '>' + $n
$h += '<link rel=' + $q + 'stylesheet' + $q + ' href=' + $q + '../css/style.css' + $q + '>' + $n
$h += '</head><body>' + $n

$h += '<header><nav><div class=' + $q + 'logo' + $q + '><h1><a href=' + $q + '../index.html' + $q + '>CustomGiftLab</a></h1></div>' + $n
$h += '<ul class=' + $q + 'nav-menu' + $q + '>' + $n
$h += '<li><a href=' + $q + '../index.html' + $q + '>Home</a></li>' + $n
$h += '<li><a href=' + $q + '../products/' + $q + '>Products</a></li>' + $n
$h += '<li><a href=' + $q + '../guides/' + $q + '>Guides</a></li>' + $n
$h += '<li><a href=' + $q + '../blog/' + $q + ' class=' + $q + 'active' + $q + '>Blog</a></li>' + $n
$h += '<li><a href=' + $q + '../about.html' + $q + '>About</a></li>' + $n
$h += '<li><a href=' + $q + '../contact.html' + $q + '>Contact</a></li>' + $n
$h += '</ul></nav></header>' + $n
$h += '<main><section class=' + $q + 'hero' + $q + '><div class=' + $q + 'hero-content' + $q + '>' + $n
$h += '<h1>' + $title + '</h1>' + $n
$h += '<p class=' + $q + 'post-meta' + $q + '>' + $date + ' | By CustomGiftLab Team</p>' + $n
$h += '</div></section>' + $n
$h += '<div class=' + $q + 'container' + $q + '><article class=' + $q + 'blog-content' + $q + '>' + $n + $content + $n
$h += '</article></div></main>' + $n
$h += '<footer><div class=' + $q + 'footer-content' + $q + '>' + $n
$h += '<div class=' + $q + 'footer-section' + $q + '><h3>CustomGiftLab</h3><p>Premium custom gifts for every occasion</p></div>' + $n
$h += '<div class=' + $q + 'footer-section' + $q + '><h4>Quick Links</h4><ul>' + $n
$h += '<li><a href=' + $q + '../products/' + $q + '>Products</a></li>' + $n
$h += '<li><a href=' + $q + '../guides/' + $q + '>Design Guides</a></li>' + $n
$h += '<li><a href=' + $q + '../blog/' + $q + '>Blog</a></li>' + $n
$h += '<li><a href=' + $q + '../contact.html' + $q + '>Contact Us</a></li></ul></div>' + $n
$h += '<div class=' + $q + 'footer-section' + $q + '><h4>Legal</h4><ul>' + $n
$h += '<li><a href=' + $q + '../privacy-policy.html' + $q + '>Privacy Policy</a></li>' + $n
$h += '<li><a href=' + $q + '../terms-of-service.html' + $q + '>Terms of Service</a></li></ul></div></div>' + $n
$h += '<div class=' + $q + 'footer-bottom' + $q + '><p>(c) 2026 CustomGiftLab. All rights reserved.</p></div></footer>' + $n
$h += '<script src=' + $q + '../js/main.js' + $q + '></script></body></html>'
[IO.File]::WriteAllText((Join-Path 'E:\CustomGiftLab\blog' $file), $h, [Text.UTF8Encoding]::new($false))
Write-Host ('Created: ' + $file)
& 'E:\CustomGiftLab\gen_new_blogs.ps1' -file 'personalized-gift-messages.html' -title 'How to Write the Perfect Personalized Message on Your Custom Gift' -desc 'Learn tips for writing heartfelt messages on custom mugs, t-shirts, blankets, and more. Make your personalized gifts truly special.' -date 'July 20, 2024' -content (Get-Content 'E:\CustomGiftLab\blog11_content.txt' -Raw)
& 'E:\CustomGiftLab\gen_new_blogs.ps1' -file 'custom-gift-trends-2024.html' -title 'Custom Gift Trends in 2024: What Is Hot in Personalization' -desc 'Discover the latest trends in custom gifts for 2024 including minimalist designs, eco-friendly products, pet-themed merchandise, and more.' -date 'July 16, 2024' -content (Get-Content 'E:\CustomGiftLab\blog12_content.txt' -Raw)
& 'E:\CustomGiftLab\gen_new_blogs.ps1' -file 'custom-gifts-for-couples.html' -title 'Personalized Gifts for Couples: Romantic Ideas That Last' -desc 'Find the perfect custom gifts for couples including matching mugs, photo blankets, personalized decor, and engraved keepsakes.' -date 'July 12, 2024' -content (Get-Content 'E:\CustomGiftLab\blog13_content.txt' -Raw)
& 'E:\CustomGiftLab\gen_new_blogs.ps1' -file 'print-methods-custom-products.html' -title 'How to Choose the Right Print Method for Your Custom Products' -desc 'Compare DTG, sublimation, screen printing, laser engraving, and UV printing. Learn which method works best for each custom product.' -date 'July 8, 2024' -content (Get-Content 'E:\CustomGiftLab\blog14_content.txt' -Raw)
& 'E:\CustomGiftLab\gen_new_blogs.ps1' -file 'custom-pet-gifts.html' -title 'Custom Pet Gifts: Celebrate Your Furry Friend' -desc 'Explore personalized pet gift ideas including custom pet portraits, name items, memorial gifts, and matching pet and owner products.' -date 'July 4, 2024' -content (Get-Content 'E:\CustomGiftLab\blog15_content.txt' -Raw)
