import {Controller} from 'cerebral'
import Devtools from 'cerebral/devtools'

const controller = Controller({
  devtools: (
    process.env.NODE_ENV === 'production' ?
      null
    :
      Devtools({
        // If running standalone debugger
        // remoteDebugger: 'localhost:8585'
      })
  )
})
