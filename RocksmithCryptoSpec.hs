import RocksmithCrypto
import Test.Hspec
import qualified Data.ByteString as B

main = hspec $ do
  describe "encrypt" $ do
    it "uses the psarc key to decrypt input" $
      decryptPsarcString helloworldUnpadded `shouldBe` "Hello World"
    it "uses the psarc key to encrypt input" $
      encryptPsarcString "Hello World" `shouldBe` helloworldUnpadded


helloworldPadded = B.pack [0xD3, 0x35, 0x6A, 0xF5, 0x74, 0xB6, 0x08, 0x91, 0x09, 0xFD, 0xCA, 0xA7, 0x8B, 0xBC, 0x06, 0xED, 0x8F, 0x1C, 0x22, 0xDB, 0x6B, 0x2B, 0x02, 0x9D, 0xDF, 0xDA, 0xCB, 0x14, 0x04, 0x5E, 0x92, 0x62]
helloworldUnpadded = B.pack [0xD3, 0x35, 0x6A, 0xF5, 0x74, 0xB6, 0x08, 0x91, 0x09, 0xFD, 0xCA, 0xA7, 0x8B, 0xBC, 0x06, 0xED, 0x8F, 0x1C, 0x22, 0xDB, 0x6B, 0x2B]