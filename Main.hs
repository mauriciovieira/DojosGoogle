import Test.Hspec
import Test.HUnit


lasDescribe :: Int -> Int
lasDescribe 21 = 1211
lasDescribe 12 = 1112
lasDescribe x = 10 + x

digits :: Int -> [Int]
digits x = [x]

main :: IO ()
main = hspec $ do

  describe "testes de descricao" $ do
    it "descricao do 1" $ do
      lasDescribe 1 `shouldBe` 11

    it "descricao do 2" $ do
      lasDescribe 2 `shouldBe` 12

    it "descricao do 11" $ do
      lasDescribe 11 `shouldBe` 21

    it "descricao do 21" $ do
      lasDescribe 21 `shouldBe` 1211

    it "descricao do 12" $ do
      lasDescribe 12 `shouldBe` 1112

  describe "teste de parse de inteiros" $ do
    it "parse de 1" $ do
      digits 1 `shouldBe` [1]


    --it "nao passa" $ do
    --  False @?= True



-- A seqüência de números inteiros obtido a partir de um dígito (qualquer valor entre 1 e 9) onde o termo seguinte é obtido pela descrição do termo anterior é definida como uma seqüência look-and-say.
-- Por exemplo, tendo como dígito inicial 1:
-- 1 é descrito como "um 1" ou 11;
-- 11 é descrito como "dois 1" ou 21;
-- 21 é descrito como "um 2, um 1" ou 1211;
-- 1211 é descrito como "um 1, um 2, dois 1" ou 111221;
-- 111221 é descrito como "três 1, dois 2, um 1" ou 312211.
-- Para dígitos maiores ou iguais a 2, a seqüência é tem o seguinte formato: d, 1d, 111d, 311d, 13211d, 111312211d (sendo d o dígito inicial).
-- Dado o dígito inicial da seqüência, determine a soma de todos os dígitos do 50º elemento da seqüência.
