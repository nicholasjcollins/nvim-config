return {
  'nicholasjcollins/dadbod-auth',

  config = function()
    local dadbod_auth = require 'dadbod-auth.config'
    dadbod_auth.setup {
      aliases = {
        ncore = 'SQL Server 137',
        gaprod = 'GAPDES Production',
      },
    }
  end,
}
