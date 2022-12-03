print('Bookmarks loaded')
require('telescope').setup {
  extensions = {
    bookmarks = {
      selected_browser = 'chrome',
      -- Available: 'vim_external', 'open_browser'
      url_open_plugin = 'open_browser'

    }
  }
}

require('telescope').load_extension('bookmarks')
