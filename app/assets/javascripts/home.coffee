# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/


jQuery ->
  # 处理service inview事件
  $('.services').on "inview", ->
    $('.services').removeClass('fadeOut').addClass('fadeIn').off('inview')

  # 处理 skills inview事件
  fillColor = "#EEE9CE"
  strokeColor = "#B69842"
  pointColor = "#006600"
  data = {
    labels : ["slim","sass","nokogiri","rest-client","sidekiq","devise","cancan","redcarpet","rspec","capybara","factory-girl","postgreSQL","mySQL","mongoDB","passenger","Bootstrap","jQuery","D3js","Highcharts"],
    datasets : [
      {
        fillColor : fillColor,
        strokeColor : strokeColor,
        data : [5,5,4,4,4,4,5,5,5,3,4,3,4,3,4,5,4,3,5]
      }
    ]
  }

  showBarChart = ->
    myNewChart = new Chart($(".bar-chart").get(0).getContext("2d")).Bar(data, {
      scaleShowGridLines : false,
      scaleShowLabels : false,
    })
  showBarChart()
  $('.skills').on "inview", ->
    console.log("inview start")
    $('.skill-1').removeClass('fadeOut').addClass('fadeIn').off('inview')
    $('.skill-2').removeClass('fadeOut').addClass('fadeIn').off('inview')
    $('.bar-chart').removeClass('fadeOut').addClass('fadeIn').off('inview')
    $('.skill-title').removeClass('fadeOut').addClass('fadeIn').off('inview')
  #   setTimeout(showBarChart, 500)