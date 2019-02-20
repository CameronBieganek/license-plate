

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




#' @title Find words that solve the license plate game.
#' @description Search a dictionary for words containing a sequence of letters. There may be other
#'   letters in between the given sequence, as long as the given sequence appears in the order it
#'   was given.
#' @param ... A sequence of bare (unquoted) letters.
#' @examples
#' find_words(a, b, c)
#' find_words(b, e, e, t)
#' find_words(k, a, z)
#' find_words(k, e, z)
#' @export
find_words <- generate_word_finder()
