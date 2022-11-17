package Web::Assets::Bootstrap;

use Dancer2 appname => 'Web';
use Web::Assets;

my $assets = 'Web::Assets';

hook before_template_render => sub {
    my $version   = '5.2.2';
    my $base_path = "https://cdn.jsdelivr.net/npm/bootstrap\@$version/dist";
    $assets->add_css("$base_path/css/bootstrap.min.css");
    $assets->add_js("$base_path/js/bootstrap.bundle.min.js");
};

1;
