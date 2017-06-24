command: "echo $(./active-space.rb)"

refreshFrequency: 1000 # ms

render: (output) ->
  """
  <link rel="stylesheet" href="./assets/font-awesome/css/font-awesome.min.css" />
  <div class="ac"
    <span></span>
    <span class="icon"></span>
  </div>
  """

update: (output, el) ->
    $(".ac span:first-child", el).text("  #{output}")
    $icon = $(".ac span.icon", el)
    $icon.removeClass().addClass("icon")
    $icon.addClass("fa #{@icon(output)}")

icon: (status) =>
    return if status.substring(0, 3) == "gen"
        "fa-home"
    else if status.substring(0, 4) == "code"
        "fa-code"
    else if status.substring(0, 2) == "hb"
        "fa-bolt"
    else if status.substring(0, 4) == "hint"
        "fa-exclamation"
    else if status.substring(0, 4) == "game"
        "fa-gamepad"
    else if status.substring(0, 4) == "chat"
        "fa-comment"
    else if status.substring(0, 3) == "tmp"
        "fa-recycle"
    else
        "fa-times"

style: """
  -webkit-font-smoothing: antialiased
  text-align: right
  color: #ABB2BF
  font: 10px Input
  height: 16px
  overflow: hidden
  text-overflow: ellipsis
  right: 320px
  top: 6px
  width: 50%
"""
