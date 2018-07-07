

#' @title Create a function to solve the license plate game.
#' @description Generate a closure that searches a dictionary for words containing a sequence of
#'   letters. There may be other letters in between the given sequence, as long as the given
#'   sequence appears in the order it was input.
#' @details The \code{generate_word_finder} function loads a dictionary from the
#'   \emph{qdapDictionaries} package and creates a closure that contains the dictionary in its
#'   attached environment.
#' @examples
#' find_words <- generate_word_finder()
#' find_words(a, b, c)
#' find_words(b, e, e, t)
#' find_words(k, a, z)
#' find_words(k, e, z)
#' @export
generate_word_finder <- function()
{
    data('DICTIONARY', package = 'qdapDictionaries', envir = environment())

    function(...)
    {
        letters  <-  eval(substitute(alist(...)))
        re       <-  paste(letters, collapse = '.*')

        out <- grep(re, DICTIONARY$word, value = TRUE)
        if(length(out) == 0) out <- 'No matches.'

        cat(out, sep = '\n')
    }
}
