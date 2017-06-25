command: "./bin/space-details.rb"

refreshFrequency: 1000 # ms

render: (output) ->
  """
  <div class="spaces">
    <span></span>
  </div>
  """

update: (output, el) ->
  list = $("<span></span>")
  for space in JSON.parse(output)
    li = $("<span>#{space.name}</span>")
    li.addClass('space')
    li.addClass('active') if space.active
    list.append(li)
  $(".spaces span:first-child", el).html(list)

style: """
  -webkit-font-smoothing: antialiased
  color: #ABB2BF
  font: 11px Hack
  height: 16px
  left: 10px
  overflow: hidden
  text-overflow: ellipsis
  top: 6px
  width: auto

  .space {
    margin-right: 5px;
  }

  .active {
    color: #e06c75;
  }
"""
