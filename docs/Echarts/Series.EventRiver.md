## Module ECharts.Series.EventRiver

#### `EvolutionDetailRec`

``` purescript
type EvolutionDetailRec = { link :: Maybe String, text :: Maybe String, img :: Maybe String }
```

#### `EvolutionDetail`

``` purescript
newtype EvolutionDetail
  = EvolutionDetail EvolutionDetailRec
```

##### Instances
``` purescript
instance evoDetailEncodeJson :: EncodeJson EvolutionDetail
instance evoDetailDecodeJson :: DecodeJson EvolutionDetail
```

#### `evolutionDetailDefault`

``` purescript
evolutionDetailDefault :: EvolutionDetailRec
```

#### `EvolutionRec`

``` purescript
type EvolutionRec = { time :: Date, value :: Number, detail :: Maybe EvolutionDetail }
```

#### `Evolution`

``` purescript
newtype Evolution
  = Evolution EvolutionRec
```

##### Instances
``` purescript
instance evoEncodeJson :: EncodeJson Evolution
instance evoDecodeJson :: DecodeJson Evolution
```

#### `OneEventRec`

``` purescript
type OneEventRec = { name :: Maybe String, weight :: Maybe Number, evolution :: Maybe (Array Evolution) }
```

#### `OneEvent`

``` purescript
newtype OneEvent
  = OneEvent OneEventRec
```

##### Instances
``` purescript
instance oneEventEncodeJson :: EncodeJson OneEvent
instance oneEventDecodeJson :: DecodeJson OneEvent
```

#### `oneEventDefault`

``` purescript
oneEventDefault :: OneEventRec
```


