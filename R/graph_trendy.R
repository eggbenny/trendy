#' Flot Line Charts.
#'
#' Create a Flot line chart based on Flot.
#'
#'
#' @param message A dataframe.
#' @param width,height nada.
#' @return A flot line chart based on Flot.
#'
#'
#' @import htmlwidgets
#'
#' @export
graph_trendy <- function(message, width = NULL, height = NULL) {

  # forward options using x
  x = list(
    message = message
  )

  # create widget
  htmlwidgets::createWidget(
    name = 'graph_trendy',
    x,
    width = width,
    height = height,
    package = 'trendy'
  )
}

#' Shiny bindings for graph_trendy
#'
#' Output and render functions for using graph_trendy within Shiny
#' applications and interactive Rmd documents.
#'
#' @param outputId output variable to read from
#' @param width,height Must be a valid CSS unit (like \code{'100\%'},
#'   \code{'400px'}, \code{'auto'}) or a number, which will be coerced to a
#'   string and have \code{'px'} appended.
#' @param expr An expression that generates a graph_trendy
#' @param env The environment in which to evaluate \code{expr}.
#' @param quoted Is \code{expr} a quoted expression (with \code{quote()})? This
#'   is useful if you want to save an expression in a variable.
#'
#' @name graph_trendy-shiny
#'
#' @export
graph_trendyOutput <- function(outputId, width = '100%', height = '400px'){
  htmlwidgets::shinyWidgetOutput(outputId, 'graph_trendy', width, height, package = 'trendy')
}

#' @rdname graph_trendy-shiny
#' @export
renderGraph_trendy <- function(expr, env = parent.frame(), quoted = FALSE) {
  if (!quoted) { expr <- substitute(expr) } # force quoted
  htmlwidgets::shinyRenderWidget(expr, graph_trendyOutput, env, quoted = TRUE)
}
