module ECharts.Style.Node where

import Data.Maybe
import Data.StrMap (fromList, StrMap (..))
import Data.Tuple
import Data.Argonaut.Core
import Data.Argonaut.Encode
import Data.Argonaut.Decode
import Data.Argonaut.Combinators


import ECharts.Color

type NodeStyleRec = {
    color :: Maybe Color,
    borderColor :: Maybe Color,
    borderWidth :: Maybe Number
  }

newtype NodeStyle = NodeStyle NodeStyleRec


instance nodeStyleEncodeJson :: EncodeJson NodeStyle where
  encodeJson (NodeStyle ns) =
    fromObject $ fromList $
    [
      "color" := ns.color,
      "borderColor" := ns.borderColor,
      "borderWidth" := ns.borderWidth
    ]

instance nodeStyleDecodeJson :: DecodeJson NodeStyle where
  decodeJson j = do
    o <- decodeJson j
    r <- { color: _
         , borderColor: _
         , borderWidth: _ } <$>
         (o .? "color") <*>
         (o .? "borderColor") <*>
         (o .? "borderWidth")
    pure $ NodeStyle r

nodeStyleDefault :: NodeStyleRec
nodeStyleDefault = {
  color: Nothing,
  borderColor: Nothing,
  borderWidth: Nothing
  }
