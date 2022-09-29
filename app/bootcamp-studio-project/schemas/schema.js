
import createSchema from 'part:@sanity/base/schema-creator'
import schemaTypes from 'all:part:@sanity/base/schema-type'

import {core , extractSchemas} from '@mystiq/schema-core'
import {designSystem } from '@mystiq/schema-design-system'
import news from 'news-schema'

const schema=extractSchemas([core,designSystem,news])

export default createSchema({

  name: 'default',
  

  types: schemaTypes.concat(schema),
})
