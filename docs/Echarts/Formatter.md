## Module ECharts.Formatter

#### `FormatParams`

``` purescript
type FormatParams = Json
```

#### `Formatter`

``` purescript
data Formatter
  = Template String
  | FormatFunc (forall eff. Array FormatParams -> Eff eff String)
```

##### Instances
``` purescript
instance formatterEncodeJson :: EncodeJson Formatter
instance formatterDecodeJson :: DecodeJson Formatter
```


