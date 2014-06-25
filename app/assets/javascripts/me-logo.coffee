(($)->

  $.extend mejs.MepDefaults,
    logoURL: null
    logoAction: null

  $.extend MediaElementPlayer::,

    buildlogo: (player, controls, layers, media) ->
      return unless player.options.logoAction and
                    player.options.logoURL


      button = $("<div class='mejs-button mejs-logo-selector'>
                    <button type='button' aria-controls='mep_0' title='' aria-label=''/>
                  </div>")

      button.appendTo(controls)

      button.click (event) ->
        # event.preventDefault()
        url = player.options.logoURL
        if player.options.logoAction == 'redirect'
          window.location = url
        else
          window.open url

          
)(mejs.$)