(($)->

  $.extend mejs.MepDefaults,
    logoURL: null
    logoAction: null
    logoTitle: ''

  $.extend MediaElementPlayer::,

    buildlogo: (player, controls, layers, media) ->
      return unless player.options.logoAction and
                    player.options.logoURL


      button = $("<div class='mejs-button mejs-logo-selector'>
                    <button type='button' aria-controls='mep_0' title='#{player.options.logoTitle}' aria-label='#{player.options.logoTitle}'/>
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