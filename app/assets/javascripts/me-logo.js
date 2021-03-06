(function() {
  (function($) {
    $.extend(mejs.MepDefaults, {
      logoURL: null,
      logoAction: null,
      logoTitle: ''
    });
    return $.extend(MediaElementPlayer.prototype, {
      buildlogo: function(player, controls, layers, media) {
        var button;
        if (!(player.options.logoAction && player.options.logoURL)) {
          return;
        }
        button = $("<div class='mejs-button mejs-logo-selector'> <button type='button' aria-controls='mep_0' title='" + player.options.logoTitle + "' aria-label='" + player.options.logoTitle + "'/> </div>");
        button.appendTo(controls);
        return button.click(function(event) {
          var url;
          url = player.options.logoURL;
          if (player.options.logoAction === 'redirect') {
            return window.location = url;
          } else {
            return window.open(url);
          }
        });
      }
    });
  })(mejs.$);

}).call(this);
