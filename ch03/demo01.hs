import Control.Monad.State

type Balance = Int

type Bank = State Balance

withdraw :: Int -> Bank (Either String Int)
withdraw amount = do
    balance <- get  -- 获取当前余额
    if amount > balance
        then return (Left "余额不足")  -- 余额不足
        else do
            put (balance - amount)  -- 更新余额
            return (Right (balance - amount))

main :: IO ()
main = do
    let initialBalance = 100
        (result, finalBalance) = runState (withdraw 30) initialBalance
    putStrLn ("取款结果: " ++ show result)
    putStrLn ("最终余额: " ++ show finalBalance)