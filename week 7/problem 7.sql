SELECT Invoice_ID, MIN(ReceiptAmount) AS [smallest payment]
FROM   Receipt
GROUP BY Invoice_ID
ORDER BY [smallest payment]