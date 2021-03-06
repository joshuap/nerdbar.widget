command: "echo $(./bin/focused-window.sh)"

refreshFrequency: 1000 # ms

render: (output) ->
  """
  <link rel="stylesheet" href="./assets/font-awesome/css/font-awesome.min.css" />
  <div class="foc"
    <span></span>
    <span class="icon"></span>
  </div>
  """

update: (output, el) ->
  $(".foc span:first-child", el).text("  #{output}")
  $icon = $(".foc span.icon", el)
  $icon.removeClass().addClass("icon")
  $icon.addClass("fa fa-bars")

style: """
  -webkit-font-smoothing: antialiased
  color: #ABB2BF
  font: 11px Hack
  height: 16px
  left: 10px
  overflow: hidden
  text-overflow: ellipsis
  left: 207px
  top: 6px
  width: auto
"""
